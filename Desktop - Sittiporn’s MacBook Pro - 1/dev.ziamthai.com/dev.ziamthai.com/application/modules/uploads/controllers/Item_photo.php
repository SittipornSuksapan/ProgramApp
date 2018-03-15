<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Item_photo extends CI_Controller {

    private $photo_id, $photo_file, $photo_ext;
    private $photo_path = ROOT_PATH . '/' . PATH_ITEM_PHOTO;

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

    private function photo_data() {
        $this->db->reset_query();
        $this->db->select('bsih_photo');
        $this->db->from('business_shop_item_header');
        $this->db->where('bsih_id', intval($this->photo_id));

        $query = $this->db->get();

        if ($query->num_rows() < 1) {
            $this->photo_default();
        }

        $data = $query->row_array();

        $this->photo_file = isset($data['bsih_photo']) ? $data['bsih_photo'] : null;

        if (empty($this->photo_file)) {
            $this->photo_default();
        }

        $this->photo_ext = pathinfo(strtolower($this->photo_file), PATHINFO_EXTENSION);

        if ($this->photo_ext == 'png') {
            header("Content-Type: image/png");
        }

        if ($this->photo_ext == 'jpg' || $this->photo_ext == 'jpeg') {
            header("Content-Type: image/jpeg");
        }
    }

    public function large() {
        $this->photo_data();

        //$photo_read = $this->photo_path . $this->photo_file;
        $photo_read = $this->photo_path . 'org/' . $this->photo_file;

        if (!file_exists($photo_read)) {
            $this->photo_default();
        }

        readfile($photo_read);
    }

    public function thumb() {
        $this->photo_data();

        //$photo_file = str_replace('_large', '_thumb', $this->photo_file);
        //$photo_read = $this->photo_path . $photo_file;
        $photo_read = $this->photo_path . '320/' . $this->photo_file;

        if (!file_exists($photo_read)) {
            $this->photo_default();
        }

        readfile($photo_read);
    }

}
