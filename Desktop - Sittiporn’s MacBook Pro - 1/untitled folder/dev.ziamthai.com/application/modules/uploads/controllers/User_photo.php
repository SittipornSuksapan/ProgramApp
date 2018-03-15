<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class User_photo extends CI_Controller {

    private $photo_url, $photo_file;

    public function __construct() {
        parent:: __construct();
    }

    private function photo_default() {
        header("Content-Type: image/png");
        readfile(ROOT_PATH . '/uploads/icon/users_256.png');
        exit();
    }

    private function photo_data() {
        $photo_id = $this->uri->segment(4); //get bssh_id from url

        if (empty($photo_id)) {
            $this->photo_default();
        }

        $this->db->reset_query();
        $this->db->select('memh_photo,memh_pictureUrl');
        $this->db->from('member_header');
        $this->db->where('memh_id', intval($photo_id));

        $query = $this->db->get();

        if ($query->num_rows() < 1) {
            $this->photo_default();
        }

        $data = $query->row_array();

        $this->photo_url = isset($data['memh_pictureUrl']) ? $data['memh_pictureUrl'] : null;
        $this->photo_file = isset($data['memh_photo']) ? $data['memh_photo'] : null;
    }

    private function get_photo() {
        $this->photo_data();

        if (empty($this->photo_file)) {

            if (!empty($this->photo_url)) {
                header("Content-Type: image/jpeg");
                readfile($this->photo_url);
                exit();
            }

            $this->photo_default();
        }

        $photo_ext = pathinfo(strtolower($this->photo_file), PATHINFO_EXTENSION);

        if ($photo_ext == 'png') {
            header("Content-Type: image/png");
        } else {
            header("Content-Type: image/jpeg");
        }
    }

    public function large() {
        $this->get_photo();

        $photo_read = ROOT_PATH . '/' . PATH_USER_PHOTO . $this->photo_file;

        if (!file_exists($photo_read)) {
            header("Content-Type: image/png");
            readfile(ROOT_PATH . '/uploads/icon/users_256.png');
            exit();
        }

        readfile($photo_read);
    }

    public function thumb() {
        $this->get_photo();

        $photo_file = str_replace('_member', '_member_thumb', $this->photo_file);

        $photo_read = ROOT_PATH . '/' . PATH_USER_PHOTO . $photo_file;

        if (!file_exists($photo_read)) {
            header("Content-Type: image/png");
            readfile(ROOT_PATH . '/uploads/icon/users_256.png');
            exit();
        }

        readfile($photo_read);
    }

}
