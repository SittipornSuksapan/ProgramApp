<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class User_auth_model extends CI_Model {

    private $apps_name = 'admin_panel';

    function __construct() {
        parent:: __construct();
    }

    public function user_access($return_array = false) {
        $user_id = $this->session->userdata($this->apps_name . '_uid');

        if (empty($user_id)) {
            if ($return_array) {
                return array('error' => true, 'message' => 'Please login.');
            }

            redirect($this->apps_name . '/login');
            exit();
        }

        $user_data = $this->get_user_data(null, null, $user_id);

        if (empty($user_data['user_id']) || empty($user_data['user_active'])) {
            $this->unset_user_login();

            if ($return_array) {
                return array('error' => true, 'message' => 'Please login.');
            }

            redirect($this->apps_name . '/login');
            exit();
        }

        $this->set_user_login($user_data);

        return $user_data;
    }

    private function set_user_login($user_data) {
        if (empty($user_data['user_id']) || empty($user_data['user_active'])) {
            $this->unset_user_login();
            return null;
        }

        $_SESSION[$this->apps_name . '_uid'] = isset($user_data['user_id']) ? $user_data['user_id'] : 0;
        $_SESSION[$this->apps_name . '_uname'] = isset($user_data['user_name']) ? $user_data['user_name'] : 'Unknow';
        $_SESSION[$this->apps_name . '_utype'] = isset($user_data['user_type']) ? $user_data['user_type'] : 'writer';
    }

    public function unset_user_login() {
        if (isset($_SESSION[$this->apps_name . '_uid'])) {
            unset($_SESSION[$this->apps_name . '_uid']);
        }

        if (isset($_SESSION[$this->apps_name . '_uname'])) {
            unset($_SESSION[$this->apps_name . '_uname']);
        }

        if (isset($_SESSION[$this->apps_name . '_utype'])) {
            unset($_SESSION[$this->apps_name . '_utype']);
        }
    }

    public function form_valid_user() {
        $email = $this->input->post('log_email');
        $pass = $this->input->post('log_pass');

        if (empty($email) || empty($pass)) {
            return null;
        }

        $user_data = $this->get_user_data($email, $pass);

        $this->set_user_login($user_data);

        return $user_data;
    }

    private function get_user_data($u = null, $p = null, $id = null) {
        $this->db->select('user_id,user_email,user_name,user_type,user_active');
        $this->db->from($this->apps_name . '_user');
        $set_where = null;

        if (!empty($u) && !empty($p)) {
            $set_pwd = sha1($p);
            $set_where = "(user_email = '$u' AND user_pass = '$set_pwd')";
        }

        if (!empty($id)) {
            $set_where = "user_id = '$id'";
        }

        if (!$set_where) {
            return null;
        }

        $this->db->where($set_where);
        $query = $this->db->get();

        if (!$query->row_array()) {
            return null;
        }

        return $query->row_array();
    }

}
