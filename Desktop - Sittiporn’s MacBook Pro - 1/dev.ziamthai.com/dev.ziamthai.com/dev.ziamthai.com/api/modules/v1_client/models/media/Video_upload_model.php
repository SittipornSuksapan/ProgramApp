<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Video_upload_model extends CI_Model {

    private $access_module, $access_client, $access_workspace;
    private $path_video_dir, $file_tmp, $file_name, $file_type, $file_size;
    private $now_date, $client_ip;
    private $file_saved = array();

    public function __construct() {
        parent::__construct();

        $this->access_module = $this->router->fetch_module();

        $this->load->model($this->access_module . '/Api_model');

        $this->access_client = $this->Api_model->valid_user();
        $this->access_workspace = $this->Api_model->valid_workspace();

        $this->path_video_dir = UPLOADS_CLIENT . $this->access_workspace['id'] . '/video/';

        $this->client_ip = get_client_ip();
        $this->now_date = date('Y-m-d H:i:s');
    }

    public function save_file() {
        $this->file_tmp = $_FILES['files']['tmp_name'];
        $this->file_name = $_FILES['files']['name'];
        $this->file_size = $_FILES['files']['size'];
        $this->file_type = $_FILES['files']['type'];

        $ext_allowed = array('mp4', 'm4v', 'mov');

        if (sizeof($this->file_tmp) < 1) {
            return array('error' => true, 'message' => 'Empty files uploads.');
        }

        foreach ($this->file_tmp as $key => $tmp) {
            $ext = pathinfo(strtolower($this->file_name[$key]), PATHINFO_EXTENSION);

            if (in_array($ext, $ext_allowed)) {
                $this->save_file_db($key, $ext);
            }
        }

        return array('success' => true, 'message' => 'Uploads complete.', 'data' => $this->file_saved);
    }

    private function save_file_db($file_key, $extension) {
        $file_save_name = md5(microtime()) . '.' . $extension;

        if (move_uploaded_file($this->file_tmp[$file_key], $this->path_video_dir . $file_save_name)) {
            $this->db->reset_query();
            $this->db->insert('business_media_video', array(
                'title' => $this->file_name[$file_key],
                'file' => $file_save_name,
                'size' => $this->file_size[$file_key],
                'type' => $this->file_type[$file_key],
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
            ));

            $result = ($this->db->affected_rows() != 1) ? false : true;

            if ($result) {
                $thumbnail = $this->create_video_thumbnail($file_save_name);
                $thumbnail_url = empty($thumbnail) ? null : base_url($this->path_video_dir . $thumbnail);
                $this->file_saved[] = array(
                    'id' => intval($this->db->insert_id()),
                    'media_type' => 'video',
                    'file_name' => $file_save_name,
                    'file_type' => $this->file_type[$file_key],
                    'file_url' => base_url($this->path_video_dir . $file_save_name),
                    'file_thumb' => $thumbnail_url
                );
            }
        }
    }

    private function create_video_thumbnail($vdo_file) {
        $file_arr = explode('.', $vdo_file);
        $thumbnail = isset($file_arr[0]) ? $file_arr[0] . '.jpg' : null;

        if (empty($thumbnail)) {
            return null;
        }

        $thumbnail_save = $this->path_video_dir . $thumbnail;

        $video = $this->path_video_dir . $vdo_file;

        //shell command [highly simplified, please don't run it plain on your script!]
        if (shell_exec("ffmpeg -i $video -deinterlace -an -ss 1 -t 00:00:05 -r 1 -y -vcodec mjpeg -f mjpeg $thumbnail_save 2>&1")) {
            $this->photo_resize($thumbnail_save);

            return $thumbnail;
        }

        return null;
    }

    private function photo_resize($photo_path) {
        $this->load->library('image_lib');

        $config['image_library'] = 'gd2';
        $config['source_image'] = $photo_path;
        $config['create_thumb'] = TRUE;
        $config['maintain_ratio'] = TRUE;
        $config['width'] = 640;
        $config['height'] = 480;
        $config['quality'] = 100;

        $this->image_lib->clear();
        $this->image_lib->initialize($config);
        $this->image_lib->resize();
    }

}
