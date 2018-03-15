<?php

defined('BASEPATH') OR exit('No direct script access allowed');

Class Reward_config_model extends CI_Model {

    public function get_exchange_rate($shop_id) {
        if (empty($shop_id)) {
            return 0;
        }
        
        $this->db->reset_query();
        $this->db->select('value');
        $this->db->from('business_shop_option');
        $this->db->where('shop_id', $shop_id);
        $this->db->where('name', 'points_exchange_rate');
        $query = $this->db->get();

        if ($query->num_rows() < 1) {
            //-- new config exchange rate
            $this->new_exchange_rate($shop_id);

            return 0;
        }

        $data = $query->row_array();
        $rate = isset($data['value']) ? floatval($data['value']) : 0;

        return $rate;
    }

    private function new_exchange_rate($shop_id) {
        if (empty($shop_id)) {
            return null;
        }
        
        //-- Valid shop id
        $this->db->reset_query();
        $this->db->select('bssh_id');
        $this->db->from('business_shop');
        $this->db->where('bssh_id', $shop_id);
        $query = $this->db->get();

        if ($query->num_rows() < 1) {
            return null;
        }

        //-- insert new config
        $this->db->reset_query();
        $this->db->insert('business_shop_option', array(
            'name' => 'points_exchange_rate',
            'value' => 0,
            'shop_id' => $shop_id
        ));
    }

}
