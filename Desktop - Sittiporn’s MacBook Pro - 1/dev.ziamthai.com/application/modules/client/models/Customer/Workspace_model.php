<?php

defined('BASEPATH') OR exit('No direct script access allowed');

Class Workspace_model extends CI_Model {

    public function find_workspace() {
        $client = $this->session->userdata('access_client');

        if (empty($client['id'])) {
            return null;
        }

        $this->db->reset_query();
        $this->db->select('business_shop.bssh_id AS id,business_shop.bssh_title AS name');
        $this->db->from('customer_member');
        $this->db->join('business_shop', 'business_shop.bssh_id = customer_member.shop_id');
        $this->db->where('customer_member.mem_id', $client['id']);
        $this->db->group_by('customer_member.id');
        $query = $this->db->get();

        if ($query->num_rows() < 1) {
            return null;
        }

        return $query->result_array();
    }

}
