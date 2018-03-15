<?php

defined('BASEPATH') OR exit('No direct script access allowed');

Class Writing_model extends CI_Model {

    public function blog_data($id) {
        if (empty($id)) {
            return null;
        }

        $this->db->reset_query();
        $this->db->select('*');
        $this->db->from('business_blog');
        $this->db->where('id', $id);
        $query = $this->db->get();

        if ($query->num_rows() < 1) {
            return null;
        }

        return $query->row_array();
    }

}
