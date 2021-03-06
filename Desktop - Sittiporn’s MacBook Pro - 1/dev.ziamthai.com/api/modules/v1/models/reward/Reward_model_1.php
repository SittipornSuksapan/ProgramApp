<?php

defined('BASEPATH') OR exit('No direct script access allowed');

Class Reward_model extends CI_Model {

    private $access_module, $access_user;

    function __construct() {
        $this->access_module = $this->router->fetch_module();
    }

    public function get_member_point($set_user_id, $set_shop_id = 0) {
        $shop_id = isset($_REQUEST['shop']) ? $_REQUEST['shop'] : $set_shop_id;

        if (empty($shop_id)) {
            return 0;
        }

        $this->db->reset_query();

        $this->db->where('member_id', $set_user_id);
        $this->db->where('shop_id', $shop_id);
        $this->db->where('history_id >', 0);
        $this->db->where('exp_date >', date('Y-m-d'));
        $this->db->or_where('exp_date', date('Y-m-d'));

        $points = $this->db->count_all_results('member_reward_points');

        return intval($points);
    }

}
