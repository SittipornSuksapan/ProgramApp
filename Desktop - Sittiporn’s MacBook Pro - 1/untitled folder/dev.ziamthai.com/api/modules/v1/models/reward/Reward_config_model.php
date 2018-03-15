<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Reward_config_model extends CI_Model {

    public function __construct() {
        parent::__construct();

        $this->access_module = $this->router->fetch_module();
    }

    public function get_exchange_rate($shop_id) {
        $this->db->reset_query();
        $this->db->select('value');
        $this->db->from('business_shop_option');
        $this->db->where('shop_id', $shop_id);
        $this->db->where('name', 'points_exchange_rate');
        $query = $this->db->get();

        if ($query->num_rows() < 1) {
            return 0;
        }

        $data = $query->row_array();
        
        return isset($data['value']) ? intval($data['value']) : 0;
    }

}
