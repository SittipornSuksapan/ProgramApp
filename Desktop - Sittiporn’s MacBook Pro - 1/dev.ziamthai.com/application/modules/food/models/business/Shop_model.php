<?php

defined('BASEPATH') OR exit('No direct script access allowed');

Class Shop_model extends CI_Model {

    public function get_info($id) {
        if (empty($id)) {
            return null;
        }

        $this->db->select('bssh_id AS id,bssh_title AS name,bssh_maps AS map_position,bssh_phone AS phone,bssh_website AS website');
        $this->db->from('business_shop');
        $this->db->where('bssh_id', $id);
        $this->db->where('bssh_active >', 0);

        $query = $this->db->get();

        if ($query->num_rows() < 1) {
            return null;
        }

        return $query->row_array();
    }
    
}
