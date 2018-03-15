<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Media_remove_model extends CI_Model {

    private $access_module, $access_client, $access_workspace;
    private $path_photo_dir;

    public function __construct() {
        parent::__construct();

        $this->access_module = $this->router->fetch_module();

        $this->load->model($this->access_module . '/Api_model');

        $this->access_client = $this->Api_model->valid_user();
        $this->access_workspace = $this->Api_model->valid_workspace();

        $this->path_photo_dir = UPLOADS_CLIENT . $this->access_workspace['id'] . '/';
    }

    public function remove_file() {
        $file_id = $this->input->post('file_id', 0);
        $media_type = $this->input->post('media_type', null);

        if (empty($file_id)) {
            return array('error' => true, 'message' => 'Undefined files reference id.');
        }

        if ($media_type != 'photo' && $media_type != 'video') {
            return array('error' => true, 'message' => 'Invalid media type.');
        }

        $file_data = $this->get_file_data($media_type, $file_id);
        $file_name = isset($file_data['file']) ? $file_data['file'] : null;

        if (empty($file_name)) {
            return array('error' => true, 'message' => 'Not found files infomation.');
        }

        $this->db->reset_query();
        $this->db->where('id', $file_id);
        $this->db->where('shop_id', $this->access_workspace['id']);
        $this->db->delete('business_media_' . $media_type);

        $result = ($this->db->affected_rows() > 0) ? TRUE : FALSE;

        if (!$result) {
            return array('error' => true, 'message' => 'Cannot remove this files.');
        }

        //-- remove media file
        @unlink($this->path_photo_dir . $media_type . '/' . $file_name);

        $name_arr = explode('.', $file_name);
        $name_first = isset($name_arr[0]) ? $name_arr[0] : null;
        $name_last = isset($name_arr[1]) ? $name_arr[1] : null;

        if ($name_first && $media_type == 'photo') {
            @unlink($this->path_photo_dir . $media_type . '/' . $name_first . '_1024.' . $name_last);
            @unlink($this->path_photo_dir . $media_type . '/' . $name_first . '_640.' . $name_last);
            @unlink($this->path_photo_dir . $media_type . '/' . $name_first . '_320.' . $name_last);
        }

        if ($name_first && $media_type == 'video') {
            @unlink($this->path_photo_dir . $media_type . '/' . $name_first . '.jpg');
            @unlink($this->path_photo_dir . $media_type . '/' . $name_first . '_1024.jpg');
            @unlink($this->path_photo_dir . $media_type . '/' . $name_first . '_640.jpg');
            @unlink($this->path_photo_dir . $media_type . '/' . $name_first . '_320.jpg');
        }

        return array('success' => true, 'message' => 'Remove files complete.');
    }

    private function get_file_data($type, $id) {
        $this->db->reset_query();
        $this->db->select('file');
        $this->db->from('business_media_' . $type);
        $this->db->where('id', $id);
        $this->db->where('shop_id', $this->access_workspace['id']);

        $query = $this->db->get();

        if ($query->num_rows() < 1) {
            return null;
        }

        return $query->row_array();
    }

}
