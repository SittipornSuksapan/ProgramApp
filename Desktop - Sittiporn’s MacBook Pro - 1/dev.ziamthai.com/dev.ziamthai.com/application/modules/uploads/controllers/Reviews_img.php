<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Reviews_img extends CI_Controller {

    public function __construct() {
        parent:: __construct();
    }

    private function photo_default() {
        header("Content-Type: image/png");
        readfile(ROOT_PATH . '/uploads/icon/camera_256.png');
        exit();
    }

    private function photo_data($photo_id) {
        $this->db->reset_query();
        $this->db->select('bsri_file');
        $this->db->from('business_shop_review_image');
        $this->db->where('bsri_id', intval($photo_id));

        $query = $this->db->get();

        if ($query->num_rows() < 1) {
            $this->photo_default();
        }

        return $query->row_array();
    }

    private function get_photo() {
        $photo_id = $this->uri->segment(4); //get bssh_id from url

        if (empty($photo_id)) {
            return null;
        }

        $photo_data = $this->photo_data($photo_id);

        $photo_file = isset($photo_data['bsri_file']) ? $photo_data['bsri_file'] : null;

        if (empty($photo_file)) {
            $this->photo_default();
        }

        $photo_ext = pathinfo(strtolower($photo_file), PATHINFO_EXTENSION);

        if ($photo_ext == 'png') {
            header("Content-Type: image/png");
        } else {
            header("Content-Type: image/jpeg");
        }

        return $photo_file;
    }

    public function large() {
        $photo_file = $this->get_photo();
 
        $photo_read = ROOT_PATH . '/' . PATH_REVIEW_IMG . $photo_file;
		

        if (!file_exists($photo_read)) {
            $this->photo_default();
        }
        readfile($photo_read);
    }

    public function thumb() {
        $photo_file = $this->get_photo();

        if (!empty($photo_file)) {
            $photo_file = str_replace('_review', '_review_thumb', $photo_file);
        }

        $photo_read = ROOT_PATH . '/' . PATH_REVIEW_IMG . $photo_file;

        if (!file_exists($photo_read)) {
            $this->photo_default();
        }

        header("Content-Type: image/png");
        readfile($photo_read);
    }

}
