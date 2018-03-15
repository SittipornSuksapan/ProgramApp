<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Reward_config_model extends CI_Model {

    private $access_module, $access_client, $access_workspace;
    private $client_ip, $create_date;

    public function __construct() {
        parent::__construct();

        $this->access_module = $this->router->fetch_module();

        $this->load->model($this->access_module . '/Api_model');

        $this->access_client = $this->Api_model->valid_user();
        $this->access_workspace = $this->Api_model->valid_workspace();

        $this->load->language($this->access_module . '/blog/writing', get_language());

        $this->client_ip = get_client_ip();
        $this->create_date = date('Y-m-d H:i:s');
    }

    public function config_exchange_rate() {
        $exchange_rate = $this->input->post('exchange_rate', 0);

        $this->db->reset_query();
        $this->db->select('id');
        $this->db->from('business_shop_option');
        $this->db->where('shop_id', $this->access_workspace['id']);
        $this->db->where('name', 'points_exchange_rate');
        $query = $this->db->get();

        if ($query->num_rows() < 1) {
            //-- new config exchange rate
            return $this->new_exchange_rate($exchange_rate);
        }

        //-- update config exchange rate
        return $this->update_exchange_rate($exchange_rate);
    }

    private function new_exchange_rate($exchange_rate) {
        //-- Valid shop id
        $this->db->reset_query();
        $this->db->select('bssh_id');
        $this->db->from('business_shop');
        $this->db->where('bssh_id', $this->access_workspace['id']);
        $query = $this->db->get();

        if ($query->num_rows() < 1) {
            return false;
        }

        //-- insert new config
        $this->db->reset_query();
        $this->db->insert('business_shop_option', array(
            'name' => 'points_exchange_rate',
            'value' => floatval($exchange_rate),
            'shop_id' => $this->access_workspace['id']
        ));

        $result = ($this->db->affected_rows() != 1) ? false : true;

        return $result;
    }

    private function update_exchange_rate($exchange_rate) {
        $this->db->reset_query();
        $this->db->trans_start();
        $this->db->where('shop_id', $this->access_workspace['id']);
        $this->db->where('name', 'points_exchange_rate');
        $this->db->update('business_shop_option', array(
            'value' => floatval($exchange_rate)
        ));
        $this->db->trans_complete();

        if ($this->db->trans_status() === FALSE) {
            return false;
        }

        return true;
    }

}
