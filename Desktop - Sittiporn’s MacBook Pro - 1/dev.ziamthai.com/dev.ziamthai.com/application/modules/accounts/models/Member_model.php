<?php

defined('BASEPATH') OR exit('No direct script access allowed');

Class Member_model extends CI_Model {

    //private $access_module, $base_url;
    private $cols_selector = 't1.memh_id AS id,t1.memh_display AS name,t1.memh_firstname AS firstname,t1.memh_lastname AS lastname,t1.memh_email AS email,t1.memh_level AS level,t1.memh_activated AS activated,t1.memh_status AS status';

    public function __construct() {
        parent::__construct();

        /* $this->base_url = base_url();
          $this->access_module = $this->router->fetch_module(); */
    }

    public function valid_user() {
        $access_user = array();

        if ($this->session->has_userdata('access_user')) {
            $access_user = $this->session->userdata('access_user');
        }

        if (!empty($access_user['id'])) {
            return $access_user;
        }

        return $this->valid_access();
    }

    public function get_access_key() {
        $get_key = isset($_REQUEST['access_user_key']) ? $_REQUEST['access_user_key'] : null;

        if (!$get_key) {
            $get_key = isset($_SESSION['access_user_key']) ? $_SESSION['access_user_key'] : null;
        }

        return $get_key;
    }

    public function valid_access() {
        $access_key = $this->get_access_key();

        if (!$access_key) {
            return array('error' => true, 'message' => $this->lang->line(''));
        }

        $this->db->reset_query();
        $this->db->select($this->cols_selector);
        $this->db->from('member_header AS t1');
        $this->db->join('member_access AS t2', 't1.memh_id = t2.mema_memh_id', 'left');
        $this->db->where('t2.mema_key', $access_key);
        $this->db->group_by('t1.memh_id');

        $query = $this->db->get();

        if ($query->num_rows() < 1) {
            return null;
        }

        $valid_data = $this->check_user($query->row_array());

        if (isset($valid_data['error'])) {
            return $valid_data;
        }

        $this->update_access($access_key, $valid_data);

        return $valid_data;
    }

    private function check_user($user_data) {
        if (empty($user_data['activated'])) {
            return array('error' => true, 'message' => $this->lang->line('please_confirm_email'), 'confirm_email' => true);
        }

        if (empty($user_data['status'])) {
            return array('error' => true, 'message' => $this->lang->line('deactived_user'));
        }

        unset($user_data['activated'], $user_data['status']);

        return $user_data;
    }

    private function update_access($access_key, $user_data) {
        $memh_name = $this->set_member_display($user_data);

        $set_agent = isset($_SERVER['HTTP_USER_AGENT']) ? $_SERVER['HTTP_USER_AGENT'] : null;
        $set_ip = get_client_ip();
        $set_time = time();

        $data = array(
            'mema_memh_name' => $memh_name,
            'mema_last_time' => $set_time,
            'mema_last_agent' => $set_agent,
            'mema_last_ip' => $set_ip
        );

        $this->db->reset_query();
        $this->db->where('mema_key', $access_key);
        $this->db->where('mema_memh_id', $user_data['id']);
        $this->db->update('member_access', $data);
    }

    public function get_data($id, $cols = null) {
        if (empty($id)) {
            return array('error' => true, 'message' => $this->lang->line(''));
        }

        if (empty($cols)) {
            $cols = 'memh_id AS id,memh_display AS name,memh_firstname AS firstname,memh_lastname AS lastname,memh_email AS email,memh_level AS level,memh_activated AS activated,memh_status AS status,memh_gender AS gender';
        }

        $this->db->reset_query();
        $this->db->select($cols);
        $this->db->from('member_header');
        $this->db->where('memh_id', $id);

        $query = $this->db->get();

        if ($query->num_rows() < 1) {
            return null;
        }

        return $query->row_array();
    }

}
