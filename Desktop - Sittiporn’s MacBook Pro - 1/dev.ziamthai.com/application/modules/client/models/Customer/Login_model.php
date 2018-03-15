<?php

defined('BASEPATH') OR exit('No direct script access allowed');

Class Login_model extends CI_Model {

    private $access_module;

    public function __construct() {
        $this->load->helper('cookie');

        $this->access_module = $this->router->fetch_module();
    }

    public function unset_client() {
        $this->session->unset_userdata('access_client');
        $this->session->unset_userdata('access_workspace');
        $this->session->unset_userdata('access_role');
    }

    public function valid_client($force_login = true) {
        //-- check session
        $client_ss = $this->session->userdata('access_client');

        if (!empty($client_ss['id'])) {
            return $client_ss;
        }

        //-- get client user from accounts modules
        $this->load->model('accounts/Member_model');
        $client = $this->Member_model->valid_user();

        if (!empty($client['id'])) {
            $this->session->set_userdata('access_client', $client);

            return $client;
        }

        $this->unset_client();

        if ($force_login === true) {
            $_SESSION['login_return_url'] = site_url($this->access_module);
            redirect('accounts/pages/login');
            exit();
        }

        return null;
    }

    public function valid_workspace($force_login = true) {
        //-- check session
        $workspace = $this->session->userdata('access_workspace');

        if (!empty($workspace['id'])) {
            return $workspace;
        }

        $this->session->unset_userdata('access_workspace');

        if ($force_login === true) {
            redirect($this->access_module . '/login');
            exit();
        }

        return null;
    }

    public function valid_role($force_login = true) {
        //-- check session
        $role = $this->session->userdata('access_role');

        if (sizeof($role) > 0) {
            return $role;
        }

        //-- get client user & workspace
        $client = $this->session->userdata('access_client');
        $workspace = $this->session->userdata('access_workspace');

        if (empty($client['id']) || empty($workspace['id'])) {
            if ($force_login === true) {
                redirect($this->access_module . '/login');
                exit();
            }

            return array('head' => array(), 'policy' => array(), 'level' => 99);
        }

        //-- get client role
        $this->load->model($this->access_module . '/customer/Role_model');

        $role_data = $this->Role_model->role_policy_list($workspace['id'], $client['id']);

        $this->session->set_userdata('access_role', $role_data);

        return $role_data;
    }

    public function set_workspace($user_id) {
        $workspace = $this->input->post('workspace', 0);

        if (empty($workspace)) {
            return array('error' => true, 'message' => 'please select workspace');
        }

        $workspace_data = $this->workspace_data($user_id, $workspace);

        if (empty($workspace_data['id'])) {
            return array('error' => true, 'message' => 'not found workspace');
        }

        return array('success' => true, 'message' => 'workspace selected');
    }

    private function workspace_data($user_id, $shop_id) {
        if (empty($user_id) || empty($shop_id)) {
            return null;
        }

        $this->db->reset_query();
        $this->db->select('bssh_id AS id,bssh_title AS name,bssh_owner AS owner,city,state,bssh_time_zone AS time_zone');
        $this->db->from('business_shop');
        $this->db->join('customer_member', "mem_id = '$user_id'");
        $this->db->where('bssh_id', $shop_id);
        $this->db->group_by('bssh_id');
        $query = $this->db->get();

        if ($query->num_rows() < 1) {
            return null;
        }

        $data = $query->row_array();
        $data['time_zone'] = isset($data['time_zone']) ? $data['time_zone'] : '+00:00';

        return $this->workspace_data_setup($data);
    }

    private function workspace_data_setup($data) {
        $shop_adddata = array();
        $shop_adddata[] = isset($data['city']) ? $data['city'] : '';
        $shop_adddata[] = isset($data['state']) ? $data['state'] : '';
        $data['address'] = implode(',', $shop_adddata);

        $get_score = $this->workspace_data_rating($data['id']);
        $data['rating'] = isset($get_score['rating']) ? $get_score['rating'] : 3;

        $this->session->set_userdata('access_workspace', $data);

        return $data;
    }

    private function workspace_data_rating($id) {
        if (empty($id)) {
            return null;
        }

        $this->db->reset_query();
        $this->db->select('score_value AS rating,score_total_review AS total_review');
        $this->db->from('business_shop_score');
        $this->db->where('score_bssh_id', $id);
        $this->db->order_by('score_date', 'DESC');
        $this->db->limit(1);
        $query = $this->db->get();

        if ($query->num_rows() > 0) {
            return $query->row_array();
        }

        $this->db->reset_query();
        $this->db->select('AVG(bsrh_score) AS rating,COUNT(bsrh_id) AS total_review');
        $this->db->from('business_shop_review_header');
        $this->db->where('bsrh_bssh_id', $id);
        $this->db->where('MONTH(bsrh_cdate)', date('m'));
        $this->db->where('YEAR(bsrh_cdate)', date('Y'));
        $query2 = $this->db->get();

        if ($query2->num_rows() > 0) {
            return $query2->row_array();
        }

        return null;
    }

}
