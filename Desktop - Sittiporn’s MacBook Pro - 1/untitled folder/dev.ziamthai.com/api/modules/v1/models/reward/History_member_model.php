<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class History_member_model extends CI_Model {

    private $access_user, $params;
    private $pagination_enable = false;

    public function __construct() {
        parent::__construct();
    }

    private function get_params($return = false) {
        $this->params = array(
            'shop' => isset($_REQUEST['shop']) ? intval($_REQUEST['shop']) : 0,
            'access_user_key' => isset($_REQUEST['access_user_key']) ? intval($_REQUEST['access_user_key']) : 0,
            'limit' => isset($_REQUEST['limit']) ? intval($_REQUEST['limit']) : 0,
            'page' => isset($_REQUEST['page']) ? intval($_REQUEST['page']) : 0,
            'page_limit' => isset($_REQUEST['page_limit']) ? intval($_REQUEST['page_limit']) : 10,
            'sort_by' => isset($_REQUEST['sort_by']) ? strtoupper($_REQUEST['sort_by']) : null,
            'order_by' => isset($_REQUEST['order_by']) ? strtolower($_REQUEST['order_by']) : 'create_date'
        );

        if ($return) {
            return $this->params;
        }
    }

    private function selector() {
        $this->get_params();

        return 'id,action,point,order_no,order_amount,adate AS created_date,auser AS created_user,aname AS created_name';
    }

    private function data_setup($data) {
        if (sizeof($data) < 1) {
            return $data;
        }

        return $data;
    }

    private function order_setup() {
        $order_by = '';

        if ($this->params['order_by'] == 'create_date') {
            $order_by = 'id';
        }

        if (!empty($order_by)) {
            if (!empty($this->params['sort_by'])) {
                $order_by .= ' ' . $this->params['sort_by'];
            }

            $this->db->order_by($order_by);
        }
    }

    private function limit_setup() {
        if ($this->params['page'] > 0) {
            $this->pagination_enable = true;

            $limit_offset = 0;

            if ($this->params['page'] > 1) {
                $limit_offset = (($this->params['page'] - 1) * $this->params['page_limit']);
            }

            $this->db->limit($this->params['page_limit'], $limit_offset);

            return null;
        }

        if ($this->params['limit'] > 0) {
            $limit = $this->params['limit'];

            $this->db->limit($limit);

            return null;
        }
    }

    public function data_search($access_user) {
        $this->access_user = $access_user;

        $this->db->select($this->selector());

        $this->search_condition();

        $this->db->group_by('id');

        $this->order_setup();

        $this->limit_setup();

        $query = $this->db->get();

        if ($query->num_rows() < 1) {
            return null;
        }

        $data = $query->result_array();

        $find_data = $this->data_setup($data);

        if (!$this->pagination_enable) {
            return $find_data;
        }

        return $this->pagination($find_data);
    }

    private function search_condition() {
        $this->db->from('member_reward_history');

        $this->db->join('member_access', 'mema_memh_id = member_id', 'left');
        //$this->db->join('member_header', 'memh_id = member_id', 'left');

        if (!empty($this->params['shop'])) {
            $this->db->where('shop_id', $this->params['shop']);
        }

        if (!empty($this->params['access_user_key'])) {
            $this->db->where('mema_key', $this->params['access_user_key']);
        }
    }

    private function pagination($data) {
        $this->db->reset_query();
        $this->db->select('id');

        $this->search_condition();

        $total = $this->db->count_all_results();

        $pagination = pagination_setup($total, $this->params['page'], $this->params['page_limit']);

        return array(
            'data' => $data,
            'total' => $total,
            'page' => $pagination
        );
    }

}
