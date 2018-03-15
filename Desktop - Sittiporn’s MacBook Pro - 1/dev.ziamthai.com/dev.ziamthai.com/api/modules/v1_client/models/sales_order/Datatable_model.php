<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Datatable_model extends CI_Model {

    private $access_module, $access_client, $access_workspace;

    public function __construct() {
        parent::__construct();

        $this->access_module = $this->router->fetch_module();

        $this->load->model($this->access_module . '/Api_model');

        $this->access_client = $this->Api_model->valid_user();
        $this->access_workspace = $this->Api_model->valid_workspace();
    }

    private function get_post_search() {
        $this->db->where('order_bssh_id', $this->access_workspace['id']);

        $search = $this->input->post('search', null);

        $keyword = isset($search['value']) ? $search['value'] : null;

        if (!empty($keyword)) {
            $this->db->like('order_name', $keyword, 'both');
            $this->db->or_like('order_email', $keyword, 'left');
            $this->db->or_like('order_tel', $keyword);
        }
    }

    private function get_post_order() {
        $order = $this->input->post('order', null);
        $cols = $this->input->post('columns', null);

        if (sizeof($order) < 1) {
            return null;
        }

        foreach ($order as $value) {
            $order_dir = isset($value['dir']) ? strtoupper($value['dir']) : null;
            $col_index = isset($value['column']) ? intval($value['column']) : 0;
            $col_name = null;

            if (isset($cols[$col_index])) {
                $col_name = isset($cols[$col_index]['name']) ? strtolower($cols[$col_index]['name']) : null;
            }

            if (!empty($col_name) && !empty($order_dir)) {
                $set_col_name = '';

                if (strpos($col_name, 'order_') !== false) {
                    $set_col_name = $col_name;
                }

                if (strpos($col_name, 'member_') !== false) {
                    $set_col_name = str_ireplace('memh_', '', $col_name);
                }

                if (!empty($set_col_name)) {
                    $this->db->order_by($set_col_name, $order_dir);
                }
            }
        }
    }

    private function get_count_all() {
        $this->db->reset_query();
        $this->db->join('member_header', 'order_memh_id = memh_id', 'left');
        $this->get_post_search();
        return $this->db->count_all_results('foods_order');
    }

    public function find_data() {
        $start = $this->input->post('start', 0);
        $length = $this->input->post('length', 10);

        $this->db->reset_query();
        $this->db->select('t1.order_id AS order_id,t1.order_date AS order_date,t1.order_name AS order_name,t1.order_street AS order_street,t1.order_address AS order_address,t1.order_city AS order_city,t1.order_state AS order_state,t1.order_zipcode AS order_zipcode,t1.order_delivery_type AS order_delivery_type,t1.order_grand_total AS order_grand_total,t2.memh_id AS member_id,t2.memh_display AS member_display');
        $this->db->from('foods_order AS t1');
        $this->db->join('member_header AS t2', 't1.order_memh_id = t2.memh_id', 'left');

        $this->get_post_search();

        $this->db->group_by('order_id');

        $this->get_post_order();

        $this->db->limit($length, $start);

        $query = $this->db->get();

        if ($query->num_rows() < 1) {
            return null;
        }

        $data = $query->result_array();
        $count_all = $this->get_count_all();

        return array('recordsTotal' => intval($count_all), 'recordsFiltered' => intval($count_all), 'data' => $this->setup_data($data));
    }

    private function setup_data($data) {
        foreach ($data as $key => $value) {
            $data[$key]['order_date'] = isset($value['order_date']) ? display_time_zone($this->access_workspace['time_zone'], $value['order_date']) : null;
        }

        return $data;
    }

}
