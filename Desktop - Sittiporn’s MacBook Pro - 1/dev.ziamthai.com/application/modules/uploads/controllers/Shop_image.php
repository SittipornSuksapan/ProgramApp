<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Shop_image extends CI_Controller {

    private $photo_id, $photo_file, $photo_ext, $photo_path;

    public function __construct() {
        parent:: __construct();

        //-- Get photo id from uri segment
        $this->photo_id = $this->uri->segment(4);

        if (empty($this->photo_id)) {
            $this->photo_default();
        }
    }

    private function photo_default() {
        header("Content-Type: image/png");
        readfile(ROOT_PATH . '/uploads/icon/camera_256.png');
        exit();
    }

    private function photo_path_setup($type) {
        $set_path = null;

        switch ($type) {
            case 101:
                $set_path = PATH_BIZ_IMGFRONT;
                break;
            case 102:
                $set_path = PATH_BIZ_IMGENV;
                break;
            case 103:
                $set_path = PATH_BIZ_IMGMENU;
                break;
            case 104:
                $set_path = PATH_BIZ_IMGFOOD;
                break;
            default:
                $set_path = PATH_BIZ_IMGOTHER;
                break;
        }

        return ROOT_PATH . '/' . $set_path;
    }

    private function photo_data() {
        $this->db->reset_query();
        $this->db->select('bssi_imgt_id,bssi_file');
        $this->db->from('business_shop_images');
        $this->db->where('bssi_id', intval($this->photo_id));

        $query = $this->db->get();

        if ($query->num_rows() < 1) {
            $this->photo_default();
        }

        $data = $query->row_array();

        $this->photo_file = isset($data['bssi_file']) ? $data['bssi_file'] : null;
        $biz_image_type = isset($data['bssi_imgt_id']) ? $data['bssi_imgt_id'] : 101;

        if (empty($this->photo_file)) {
            $this->photo_default();
        }

        $this->photo_path = $this->photo_path_setup($biz_image_type);

        $this->photo_ext = pathinfo(strtolower($this->photo_file), PATHINFO_EXTENSION);

        if ($this->photo_ext == 'png') {
            header("Content-Type: image/png");
        }

        if ($this->photo_ext == 'jpg' || $this->photo_ext == 'jpeg') {
            header("Content-Type: image/jpeg");
        }
    }

    public function thumb() {
        $this->photo_data();

        $photo_read = $this->photo_path . $this->photo_file;

        if (!file_exists($photo_read)) {
            $this->photo_default();
        }

        readfile($photo_read);
    }

    public function large() {
        $this->photo_data();

        $set_extension = '.' . $this->photo_ext;

        $photo_file = str_replace($set_extension, '_full' . $set_extension, $this->photo_file);

        $photo_read = $this->photo_path . $photo_file;

        if (!file_exists($photo_read)) {
            $this->photo_default();
        }

        readfile($photo_read);
    }

}
