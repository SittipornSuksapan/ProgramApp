<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Locations_model extends CI_Model {

    function __construct() {
        parent:: __construct();
    }

    public function get_location_all($return_json = false) {
        $this->db->select('loch_id,loch_name,loch_abrv');
        $this->db->from('location_head');

        $query = $this->db->get();

        if (!$query->result_array()) {
            return null;
        }

        if ($return_json) {
            return json_encode($query->result_array());
        }

        return $query->result_array();
    }

    public function has_store() {
        $this->db->select('loch_id AS id,loch_name AS name,loch_abrv AS code,COUNT(bssh_id) AS shop_count');
        $this->db->from('location_head');
        $this->db->join('business_shop', 'loch_abrv = bssh_loc1 OR loch_abrv = bssh_loc2', 'left');
        $this->db->where('bssh_id <>', null);
        $this->db->group_by('loch_id');

        $query = $this->db->get();
        $data = $query->result_array();

        if (!$data) {
            return null;
        }

        return $data;
    }

}
