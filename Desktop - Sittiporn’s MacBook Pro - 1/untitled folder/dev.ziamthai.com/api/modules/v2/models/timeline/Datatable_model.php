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
        $this->db->where('posts_bssh_id', $this->access_workspace['id']);

        $search = $this->input->post('search', null);

        $keyword = isset($search['value']) ? $search['value'] : null;

        if (!empty($keyword)) {
            $this->db->like('posts_title', $keyword, 'both');
        }
    }

    private function get_post_order() {
        $order = $this->input->post('order', null);
        $cols = $this->input->post('columns', null);

        if (sizeof($order) < 1) {
            $this->db->order_by('posts_mdate', 'DESC');

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
                $this->db->order_by('posts_' . $col_name, $order_dir);
            }
        }
    }

    private function get_count_all() {
        $this->db->reset_query();
        $this->get_post_search();
        $this->get_post_order();
        return $this->db->count_all_results('business_timeline_posts');
    }

    public function find_data() {
        $start = $this->input->post('start', 0);
        $length = $this->input->post('length', 10);

        $this->db->reset_query();
        $this->db->select('posts_id AS id,posts_ref_id AS ref_id,posts_ref_type AS ref_type,posts_title AS title,posts_highlight AS highlight,posts_cdate AS cdate,posts_mdate AS mdate,posts_public AS public');
        $this->db->from('business_timeline_posts');

        $this->get_post_search();
        $this->get_post_order();

        $this->db->limit($length, $start);

        $query = $this->db->get();

        if ($query->num_rows() < 1) {
            return null;
        }

        $data = $query->result_array();
        $count_all = $this->get_count_all();

        return array('recordsTotal' => intval($count_all), 'recordsFiltered' => count($data), 'data' => $data);
    }

}
