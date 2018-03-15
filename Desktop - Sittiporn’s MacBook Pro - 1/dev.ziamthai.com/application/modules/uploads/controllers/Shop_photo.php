<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Shop_photo extends CI_Controller {

    public function __construct() {
        parent:: __construct();
    }

    private function photo_data($photo_id, $photo_col) {
        $this->db->reset_query();
        $this->db->select($photo_col);
        $this->db->from('business_shop');
        $this->db->where('bssh_id', intval($photo_id));

        $query = $this->db->get();

        if ($query->num_rows() < 1) {
            $this->photo_default();
        }

        return $query->row_array();
    }

    private function photo_default() {
            header("Content-Type: image/png");
            readfile(ROOT_PATH . '/uploads/icon/biz_img_front.png');
            exit();
    }

    private function get_photo() {
        $photo_id = $this->uri->segment(4); //get bssh_id from url
        $photo_type = $this->uri->segment(5); //get bssh_id from url

        if (empty($photo_id)) {
            return null;
        }

        if ($photo_type != 'imgfront' && $photo_type != 'imghead') {
            return null;
        }

        $photo_col = 'bssh_' . $photo_type;

        $photo_data = $this->photo_data($photo_id, $photo_col);

        $photo_file = isset($photo_data[$photo_col]) ? $photo_data[$photo_col] : null;

        if (empty($photo_file)) {
            $this->photo_default();
        }

        $photo_ext = pathinfo(strtolower($photo_file), PATHINFO_EXTENSION);

        if ($photo_ext == 'png') {
            header("Content-Type: image/png");
        } else {
            header("Content-Type: image/jpeg");
        }

        $photo_path = PATH_BIZ_IMGFRONT;

        if ($photo_type == 'imghead') {
            $photo_path = PATH_BIZ_IMGHEAD;
        }

        return array($photo_path, $photo_file);
    }

    public function large() {
        $photo_data = $this->get_photo();
        $photo_path = isset($photo_data[0]) ? $photo_data[0] : null;
        $photo_file = isset($photo_data[1]) ? $photo_data[1] : null;

        if (!empty($photo_file)) {
            $photo_ext = pathinfo(strtolower($photo_file), PATHINFO_EXTENSION);
            $photo_file = str_replace('.' . $photo_ext, '_full.' . $photo_ext, $photo_file);
        }

        $photo_read = ROOT_PATH . '/' . $photo_path . $photo_file;

        if (!file_exists($photo_read)) {
            $this->photo_default();
        }

        readfile($photo_read);
    }

    public function thumb() {
        $photo_data = $this->get_photo();
        $photo_path = isset($photo_data[0]) ? $photo_data[0] : null;
        $photo_file = isset($photo_data[1]) ? $photo_data[1] : null;

        $photo_read = ROOT_PATH . '/' . $photo_path . $photo_file;

        if (!file_exists($photo_read)) {
            $this->photo_default();
        }

        readfile($photo_read);
    }

}
