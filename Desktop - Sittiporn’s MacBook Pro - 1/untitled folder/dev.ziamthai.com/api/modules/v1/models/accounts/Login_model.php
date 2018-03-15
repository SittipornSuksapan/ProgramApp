<?php

Class Login_model extends CI_Model {

    private $access_module;
    private $cols_selector = 'memh_id AS id,memh_idn AS idn,memh_display AS name,memh_firstname AS firstname,memh_lastname AS lastname,memh_gender AS gender,memh_email AS email,memh_level AS level,memh_activated AS activated,memh_status AS status,memh_cdate AS created_date';

    public function __construct() {
        parent::__construct();

        $this->access_module = $this->router->fetch_module();
    }

    public function set_member_display($user_data) {
        $memh_name = isset($user_data['name']) ? $user_data['name'] : null;

        if (empty($memh_name)) {
            $memh_name = $user_data['firstname'];

            if (!empty($user_data['lastname'])) {
                $memh_name .= ' ' . $user_data['lastname'];
            }
        }

        return ltrim(rtrim($memh_name, ' '), ' ');
    }

    private function data_valid() {
        $data['user'] = isset($_POST['m_user']) ? $_POST['m_user'] : null;
        $data['pass'] = isset($_POST['m_pass']) ? $_POST['m_pass'] : null;

        if (empty($data['user']) || empty($data['pass'])) {
            return array('error' => true, 'message' => $this->lang->line('insert_user_pass'), 'focus' => 'm_user');
        }

        return $data;
    }

    public function find_user() {
        $post_data = $this->data_valid();

        if (isset($post_data['error'])) {
            return $post_data;
        }

        $this->db->reset_query();
        $this->db->select($this->cols_selector);
        $this->db->from('member_header');
        $this->db->where('memh_email', $post_data['user']);
        $this->db->where('memh_password', sha1($post_data['pass']));

        $query = $this->db->get();

        if ($query->num_rows() < 1) {
            return array('error' => true, 'message' => $this->lang->line('invalid_user_data'), 'focus' => 'm_user');
        }

        $valid_data = $this->valid_user($query->row_array());

        if (isset($valid_data['error'])) {
            return $valid_data;
        }

        //-- setup user photo
        $valid_data['photo'] = site_url('uploads/user_photo/large/' . $valid_data['id']);
        $valid_data['photo_thumb'] = site_url('uploads/user_photo/thumb/' . $valid_data['id']);

        //-- get reward points
        $this->load->model($this->access_module . '/reward/Reward_model');
        $valid_data['reward_points'] = $this->Reward_model->get_member_point($valid_data['id']);

        $access_key = $this->set_access($valid_data);

        return array('success' => true, 'message' => $this->lang->line('login_complete'), 'access_user_key' => $access_key, 'access_user' => $valid_data);
    }

    private function valid_user($user_data) {
        if (empty($user_data['activated'])) {
            return array('error' => true, 'message' => $this->lang->line('please_confirm_email'), 'focus' => 'm_user', 'confirm_email' => true);
        }

        if (empty($user_data['status'])) {
            return array('error' => true, 'message' => $this->lang->line('deactived_user'), 'focus' => 'm_user');
        }

        unset($user_data['activated'], $user_data['status']);

        if (empty($user_data['idn'])) {
            $this->idn_generate($user_data);
        }

        return $user_data;
    }

    private function idn_generate($user_data) {
        $this->load->model($this->access_module . '/accounts/Member_idn_model');
        $idn_no = $this->Member_idn_model->idn_generator($user_data);

        if (!empty($idn_no)) {
            $this->db->reset_query();
            $this->db->where('memh_id', $user_data['id']);
            $this->db->update('member_header', array('memh_idn' => $idn_no));
        }
    }

    private function set_access($user_data) {
        $gen_key = $user_data['id'] . time();

        $access_key = md5($gen_key);

        $memh_name = $this->set_member_display($user_data);

        $set_agent = isset($_SERVER['HTTP_USER_AGENT']) ? $_SERVER['HTTP_USER_AGENT'] : null;
        $set_ip = get_client_ip();
        $set_time = time();

        $data = array(
            'mema_key' => $access_key,
            'mema_memh_id' => $user_data['id'],
            'mema_memh_name' => $memh_name,
            'mema_login_time' => $set_time,
            'mema_login_agent' => $set_agent,
            'mema_login_ip' => $set_ip,
            'mema_last_time' => $set_time,
            'mema_last_agent' => $set_agent,
            'mema_last_ip' => $set_ip
        );

        $this->db->reset_query();
        $this->db->insert('member_access', $data);
        $ins_result = ($this->db->affected_rows() != 1) ? false : true;

        if (!$ins_result) {
            return '';
        }

        return $access_key;
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
            return null;
        }

        $this->db->reset_query();
        $this->db->select($this->cols_selector);
        $this->db->from('member_header');
        $this->db->join('member_access', 'mema_memh_id=memh_id', 'left');
        $this->db->where('mema_key', $access_key);
        $this->db->group_by('memh_id');

        $query = $this->db->get();

        if ($query->num_rows() < 1) {
            return null;
        }

        $valid_data = $this->valid_user($query->row_array());

        if (isset($valid_data['error'])) {
            return $valid_data;
        }

        //-- setup user photo
        $valid_data['photo'] = site_url('uploads/user_photo/large/' . $valid_data['id']);
        $valid_data['photo_thumb'] = site_url('uploads/user_photo/thumb/' . $valid_data['id']);

        //-- get reward points
        $this->load->model($this->access_module . '/reward/Reward_model');
        $valid_data['reward_points'] = $this->Reward_model->get_member_point($valid_data['id']);

        $this->update_access($access_key, $valid_data);

        return $valid_data;
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

}
