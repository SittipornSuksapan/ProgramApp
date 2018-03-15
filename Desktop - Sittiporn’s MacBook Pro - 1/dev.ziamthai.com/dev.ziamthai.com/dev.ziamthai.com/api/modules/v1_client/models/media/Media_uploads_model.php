<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Media_uploads_model extends CI_Model {

    private $access_module, $access_client, $access_workspace;
    private $file_tmp, $file_name, $file_type, $file_size;
    private $now_date, $client_ip;
    private $file_saved = array();
    private $img_allowed = array('jpg', 'jpeg', 'png');
    private $vdo_allowed = array('mp4', 'm4v', 'mov');
    private $img_max_size = 12000000;
    private $vdo_max_size = 128000000;
    private $path_to_save = array(
        'photo' => null,
        'video' => null
    );

    public function __construct() {
        parent::__construct();

        $this->access_module = $this->router->fetch_module();

        $this->load->model($this->access_module . '/Api_model');

        $this->access_client = $this->Api_model->valid_user();
        $this->access_workspace = $this->Api_model->valid_workspace();

        $this->path_to_save['photo'] = UPLOADS_CLIENT . $this->access_workspace['id'] . '/photo/';
        $this->path_to_save['video'] = UPLOADS_CLIENT . $this->access_workspace['id'] . '/video/';

        $this->client_ip = get_client_ip();
        $this->now_date = date('Y-m-d H:i:s');
    }

    public function save_file() {
        $this->file_tmp = $_FILES['files']['tmp_name'];
        $this->file_name = $_FILES['files']['name'];
        $this->file_size = $_FILES['files']['size'];
        $this->file_type = $_FILES['files']['type'];

        if (sizeof($this->file_tmp) < 1) {
            return array('error' => true, 'message' => 'Empty files uploads.');
        }

        foreach ($this->file_tmp as $key => $tmp) {
            $ext = pathinfo(strtolower($this->file_name[$key]), PATHINFO_EXTENSION);

            $media_type = null;

            if (in_array($ext, $this->img_allowed) && $this->file_size[$key] < $this->img_max_size) {
                $media_type = 'photo';
            }

            if (in_array($ext, $this->vdo_allowed) && $this->file_size[$key] < $this->vdo_max_size) {
                $media_type = 'video';
            }

            if (!empty($media_type)) {
                $this->save_file_db($key, $ext, $media_type);
            }
        }

        return array('success' => true, 'message' => 'Uploads complete.', 'data' => $this->file_saved);
    }

    private function save_file_db($file_key, $extension, $media_type) {
        $file_save_name = md5(microtime()) . '.' . $extension;

        if (!move_uploaded_file($this->file_tmp[$file_key], $this->path_to_save[$media_type] . $file_save_name)) {
            return null;
        }

        $file_dimension = $this->get_dimension($media_type, $file_save_name);

        $media_data = array(
            'title' => $this->file_name[$file_key],
            'file' => $file_save_name,
            'size' => $this->file_size[$file_key],
            'type' => $this->file_type[$file_key],
            'width' => intval($file_dimension[0]),
            'height' => intval($file_dimension[1]),
            'shop_id' => $this->access_workspace['id'],
            'shop_name' => $this->access_workspace['name'],
            'c_ip' => $this->client_ip,
            'c_date' => $this->now_date,
            'c_uid' => $this->access_client['id'],
            'c_uname' => $this->access_client['name'],
            'm_ip' => $this->client_ip,
            'm_date' => $this->now_date,
            'm_uid' => $this->access_client['id'],
            'm_uname' => $this->access_client['name']
        );

        if ($media_type === 'video') {
            $media_data['duration'] = isset($file_dimension[2]) ? $file_dimension[2] : null;
        }

        $this->db->reset_query();
        $this->db->insert('business_media_' . $media_type, $media_data);

        $result = ($this->db->affected_rows() != 1) ? false : true;

        if (!$result) {
            return null;
        }

        if ($media_type === 'video') {
            $this->create_video_thumbnail($this->path_to_save[$media_type], $file_save_name, $media_data['duration']);
        }

        if ($media_type === 'photo') {
            $this->photo_resize($this->path_to_save[$media_type] . $file_save_name);
        }

        $this->file_saved[] = array(
            'id' => intval($this->db->insert_id()),
            'file_name' => $file_save_name,
            'file_type' => $this->file_type[$file_key],
            'file_url' => base_url($this->path_to_save[$media_type] . $file_save_name),
            'media_type' => $media_type,
            'media_width' => intval($file_dimension[0]),
            'media_height' => intval($file_dimension[1]),
            'media_duration' => isset($file_dimension[2]) ? $file_dimension[2] : null
        );
    }

    private function get_dimension($media_type, $file_save_name) {
        if ($media_type == 'photo') {
            return getimagesize($this->path_to_save[$media_type] . $file_save_name);
        }

        if ($media_type == 'video') {
            $cmd = sprintf("ffprobe -v error -select_streams v:0 -show_entries stream=width,height,duration -sexagesimal -of default=nokey=1:noprint_wrappers=1 %s%s", $this->path_to_save[$media_type], $file_save_name);
            $cmd_resp = @shell_exec($cmd);

            if ($cmd_resp) {
                $cmd_resp = preg_replace('#\s+#', ',', trim($cmd_resp));
                return explode(',', $cmd_resp);
            }
        }

        return array(0, 0);
    }

    private function photo_resize_config($photo_path) {
        return array(
            'image_library' => 'gd2',
            'source_image' => $photo_path,
            'create_thumb' => true,
            'maintain_ratio' => true,
            'quality' => 100
        );
    }

    private function photo_resize($photo_path) {
        $this->load->library('image_lib');

        $config = $this->photo_resize_config($photo_path);

        /* -- Resize 1024 -- */
        $config['thumb_marker'] = '_1024';
        $config['width'] = 1024;
        $config['height'] = 768;

        $this->image_lib->clear();
        $this->image_lib->initialize($config);
        $this->image_lib->resize();

        /* -- Resize 640 -- */
        $config['thumb_marker'] = '_640';
        $config['width'] = 640;
        $config['height'] = 480;

        $this->image_lib->clear();
        $this->image_lib->initialize($config);
        $this->image_lib->resize();

        /* -- Resize 320 -- */
        $config['thumb_marker'] = '_320';
        $config['width'] = 320;
        $config['height'] = 240;

        $this->image_lib->clear();
        $this->image_lib->initialize($config);
        $this->image_lib->resize();
    }

    private function create_video_thumbnail($path_to_save, $vdo_file, $vdo_duration = null) {
        $file_arr = explode('.', $vdo_file);
        $img_name = isset($file_arr[0]) ? $file_arr[0] . '.jpg' : null;

        if (empty($img_name)) {
            return null;
        }

        $duration_ss = '00:00:08';

        if (!empty($vdo_duration)) {
            list($time_h, $time_m, $time_s) = explode(':', $vdo_duration);

            $total_s = ($time_h * 3600) + ($time_m * 60) + $time_s;

            $ss_time = floor($total_s / 2);
            $ss_h = floor($ss_time / 3600);
            $ss_m = floor(($ss_time / 60) % 60);
            $ss_s = $ss_time % 60;

            $duration_ss = sprintf('%02d:%02d:%02d', $ss_h, $ss_m, $ss_s);
        }

        $file_img = $path_to_save . $img_name;
        $file_video = $path_to_save . $vdo_file;

        $ffmpeg_cmd = sprintf('ffmpeg -ss %s -i %s -vframes 1 -q:v 2 %s', $duration_ss, $file_video, $file_img);
        
        //shell command [highly simplified, please don't run it plain on your script!]
        if (shell_exec($ffmpeg_cmd)) {
            $this->photo_resize($file_img);

            return $img_name;
        }

        return null;
    }

}
