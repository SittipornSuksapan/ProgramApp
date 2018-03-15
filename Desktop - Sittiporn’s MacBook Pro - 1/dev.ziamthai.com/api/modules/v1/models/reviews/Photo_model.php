<?php

defined('BASEPATH') OR exit('No direct script access allowed');

Class Photo_model extends CI_Model {

    function __construct() {
        parent:: __construct();
    }

    public function photo_data($photo_id) {
        if (empty($photo_id)) {
            return null;
        }

        $this->db->reset_query();

        $this->db->from('business_shop_review_image');
        $this->db->where('bsri_id', $photo_id);

        $query = $this->db->get();

        if ($query->num_rows() < 1) {
            return null;
        }

        return $query->row_array();
    }

    public function photo_remove($photo_id, $shop_id) {
        if (empty($photo_id) || empty($shop_id)) {
            return false;
        }

        $this->db->reset_query();
        $this->db->where('bsri_id', $photo_id);
        $this->db->where('bsri_bssh_id', $shop_id);
        $this->db->delete('business_shop_review_image');

        $result = ($this->db->affected_rows() != 1) ? false : true;

        return $result;
    }

}
