<?php

defined('BASEPATH') OR exit('No direct script access allowed');

Class Blog_model extends CI_Model {

    public function get_info($id) {
        if (empty($id)) {
            return null;
        }

        $this->db->select('id,title,public,shop_id,shop_name');
        $this->db->from('business_blog');
        $this->db->where('id', $id);

        $query = $this->db->get();

        if ($query->num_rows() < 1) {
            return null;
        }

        return $query->row_array();
    }

}
