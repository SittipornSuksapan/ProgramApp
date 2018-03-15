<?php

defined('BASEPATH') OR exit('No direct script access allowed');

Class Reward_model extends CI_Model {

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

    public function get_member_point($set_member_id = 0) {
        $member_id = isset($_REQUEST['member']) ? $_REQUEST['member'] : $set_member_id;

        $this->db->reset_query();

        $this->db->where('member_id', $member_id);
        $this->db->where('shop_id', $this->access_workspace['id']);
        $this->db->where('history_id >', 0);
        $this->db->where('exp_date >', date('Y-m-d'));
        $this->db->or_where('exp_date', date('Y-m-d'));

        $points = $this->db->count_all_results('member_reward_points');

        return intval($points);
    }

}
