<?php

defined('BASEPATH') OR exit('No direct script access allowed');

Class Oauth_model extends CI_Model {

    private $access_module;
    private $cols_selector = 'memh_id AS id,memh_display AS name,memh_firstname AS firstname,memh_lastname AS lastname,memh_gender AS gender,memh_email AS email,memh_level AS level,memh_activated AS activated,memh_status AS status';
    private $oauth_provider = null;
    private $oauth_memh_idn = array(
        'fb' => 'memh_fb_id',
        'gg' => 'memh_gg_id'
    );
    private $oauth_memh_provider = array(
        'fb' => 'facebook',
        'gg' => 'google'
    );

    public function __construct() {
        parent::__construct();

        $this->access_module = $this->router->fetch_module();
    }

    public function valid_user($provider) {
        $this->oauth_provider = strtolower($provider);
        $idn = isset($_SESSION[$this->oauth_provider . '_id']) ? $_SESSION[$this->oauth_provider . '_id'] : null;

        if (empty($idn) || empty($this->oauth_provider)) {
            return false;
        }

        $idn_chk = array('memh_fb_id', 'memh_gg_id');

        if (!in_array($this->oauth_memh_idn[$this->oauth_provider], $idn_chk)) {
            return false;
        }

        $set_where[] = $this->oauth_memh_idn[$this->oauth_provider] . " = '$idn'";

        if (!empty($_SESSION[$this->oauth_provider . '_email'])) {
            $set_where[] = "(memh_email <> '' AND memh_email LIKE '" . $_SESSION[$this->oauth_provider . '_email'] . "')";
        }

        $terms_where = implode(' OR ', $set_where);

        $this->db->select($this->cols_selector);
        $this->db->from('member_header');
        $this->db->where($terms_where);

        $query = $this->db->get();

        if ($query->num_rows() < 1) {
            return null;
        }

        $user_data = $query->row_array();
        $user_data['photo'] = site_url('uploads/user_photo/large/' . $user_data['id']);
        $user_data['photo_thumb'] = site_url('uploads/user_photo/thumb/' . $user_data['id']);

        //-- get reward points
        $this->load->model($this->access_module . '/reward/Reward_model');
        $user_data['reward_points'] = $this->Reward_model->get_member_point($user_data['id']);

        $access_user_key = $this->set_access($user_data);

        return array('access_user_key' => $access_user_key, 'access_user' => $user_data);
    }

    private function set_member_display($user_data) {
        $memh_name = isset($user_data['name']) ? $user_data['name'] : null;

        if (empty($memh_name)) {
            $memh_name = $user_data['firstname'];

            if (!empty($user_data['lastname'])) {
                $memh_name .= ' ' . $user_data['lastname'];
            }
        }

        return ltrim(rtrim($memh_name, ' '), ' ');
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

    public function update_user($provider, $memh_id) {
        $this->oauth_provider = strtolower($provider);
        $oauth_id = isset($_SESSION[$this->oauth_provider . '_id']) ? $_SESSION[$this->oauth_provider . '_id'] : '';

        if (empty($memh_id) || empty($oauth_id) || empty($this->oauth_provider)) {
            return null;
        }

        $data = array(
            $this->oauth_memh_idn[$this->oauth_provider] => $oauth_id,
            'memh_activated' => 1
        );

        $this->db->where('memh_id', $memh_id);
        $this->db->update('member_header', $data);
    }

    public function create_user($provider) {
        $this->oauth_provider = strtolower($provider);

        $user_data = $this->new_user_data();

        $this->db->insert('member_header', $user_data);

        $result = ($this->db->affected_rows() != 1) ? false : true;

        if (!$result) {
            return null;
        }

        $user_data['memh_id'] = intval($this->db->insert_id());

        unset($user_data['memh_password']);

        $access_user = $this->setup_user_data($user_data);

        $access_user_key = $this->set_access($access_user);

        //-- set user photo
        $access_user['photo'] = site_url('uploads/user_photo/large/' . $user_data['memh_id']);
        $access_user['photo_thumb'] = site_url('uploads/user_photo/thumb/' . $user_data['memh_id']);

        //-- get reward points
        $this->load->model($this->access_module . '/reward/Reward_model');
        $access_user['reward_points'] = $this->Reward_model->get_member_point($user_data['memh_id']);

        return array('access_user_key' => $access_user_key, 'access_user' => $access_user);
    }

    private function new_user_data() {
        $oauth_id = isset($_SESSION[$this->oauth_provider . '_id']) ? $_SESSION[$this->oauth_provider . '_id'] : '';
        $oauth_email = isset($_SESSION[$this->oauth_provider . '_email']) ? $_SESSION[$this->oauth_provider . '_email'] : '';
        $oauth_name = isset($_SESSION[$this->oauth_provider . '_name']) ? $_SESSION[$this->oauth_provider . '_name'] : '';
        $oauth_firstname = isset($_SESSION[$this->oauth_provider . '_firstname']) ? $_SESSION[$this->oauth_provider . '_firstname'] : '';
        $oauth_lastname = isset($_SESSION[$this->oauth_provider . '_lastname']) ? $_SESSION[$this->oauth_provider . '_lastname'] : '';
        $oauth_gender = isset($_SESSION[$this->oauth_provider . '_gender']) ? $_SESSION[$this->oauth_provider . '_gender'] : '';
        $oauth_picture = isset($_SESSION[$this->oauth_provider . '_picture']) ? $_SESSION[$this->oauth_provider . '_picture'] : '';

        return array(
            $this->oauth_memh_idn[$this->oauth_provider] => $oauth_id,
            'memh_provider' => $this->oauth_memh_provider[$this->oauth_provider],
            'memh_email' => $oauth_email,
            'memh_password' => '',
            'memh_display' => $oauth_name,
            'memh_firstname' => $oauth_firstname,
            'memh_lastname' => $oauth_lastname,
            'memh_gender' => $oauth_gender,
            'memh_pictureUrl' => $oauth_picture,
            'memh_level' => 'newbies',
            'memh_activated' => 1,
            'memh_status' => 1,
            'memh_cdate' => date('Y-m-d H:i:s')
        );
    }

    private function setup_user_data($data) {
        return array(
            'id' => $data['memh_id'],
            'name' => $data['memh_display'],
            'firstname' => $data['memh_firstname'],
            'lastname' => $data['memh_lastname'],
            'gender' => $data['memh_gender'],
            'email' => $data['memh_email'],
            'level' => $data['memh_level'],
            'activated' => $data['memh_activated'],
            'status' => $data['memh_status']
        );
    }

}
