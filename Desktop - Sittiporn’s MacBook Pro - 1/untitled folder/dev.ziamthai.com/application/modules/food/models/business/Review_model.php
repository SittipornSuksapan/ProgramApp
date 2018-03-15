<?php

defined('BASEPATH') OR exit('No direct script access allowed');

Class Review_model extends CI_Model {
    
    public function get_info($id) {
        if (empty($id)) {
            return null;
        }

        $this->db->select('bsrh_id AS id,bsrh_title AS title,bsrh_bssh_id AS shop_id');
        $this->db->from('business_shop_review_header');
        $this->db->where('bsrh_id', $id);

        $query = $this->db->get();

        if ($query->num_rows() < 1) {
            return null;
        }

        return $query->row_array();
    }
    
}
