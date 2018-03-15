<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Oauth_model extends CI_Model {

    private $client_ip, $client_id, $response_type, $scope, $redirect_uri;
    private $time_expire = 300;

    public function __construct() {
        parent::__construct();

        $this->client_ip = get_client_ip();
    }

    public function valid_client() {
        $valid_data = $this->data_valid();

        if (isset($valid_data['error'])) {
            return $valid_data;
        }

        $client_data = $this->check_client();

        if (isset($client_data['error'])) {
            return $client_data;
        }

        $referer = isset($_SERVER['HTTP_REFERER']) ? $_SERVER['HTTP_REFERER'] : null;

        if (!empty($referer)) {
            return $this->check_domain($referer, $client_data);
        }

        return $this->create_auth_code($client_data);
    }

    private function data_valid() {
        $this->client_id = isset($_GET['client_id']) ? $_GET['client_id'] : null;
        $this->scope = isset($_GET['scope']) ? $_GET['scope'] : null;
        $this->redirect_uri = isset($_GET['redirect_uri']) ? $_GET['redirect_uri'] : null;
        $this->response_type = isset($_GET['response_type']) ? $_GET['response_type'] : 'code';

        if (empty($this->client_id)) {
            return array('error' => true, 'message' => 'Undefined client identity.');
        }

        if (empty($this->client_ip)) {
            return array('error' => true, 'message' => 'Undefined client ip address.');
        }

        return true;
    }

    private function check_client() {
        $this->db->reset_query();
        $this->db->select('client_id,client_name,client_domain');
        $this->db->from('api_client');
        $this->db->where('client_id', $this->client_id);

        $query = $this->db->get();

        if ($query->num_rows() < 1) {
            return array('error' => true, 'message' => 'Invalid client information.');
        }

        return $query->row_array();
    }

    private function check_domain($referer, $client_data) {
        if (!preg_match('/\.ziamthai\.(com|co.th)/', $referer)) {
            return array('error' => true, 'message' => 'Invalid origin domain access');
        }

        $base_url = base_url();
        $base_url2 = str_ireplace(array('www.', 'test.', 'dev.'), array('', '', ''), $base_url);

        header("Access-Control-Allow-Origin: " . rtrim($base_url2, '/'));
        header("Access-Control-Allow-Origin: " . rtrim($base_url, '/'));

        return $this->create_auth_code($client_data);
    }

    public function create_auth_code($client_data) {
        $auth_gen = sha1(TIME_NOW . '=>' . $this->client_ip . '/' . $this->client_id);
        $auth_code = substr(strtoupper($auth_gen), 2, 24);

        if ($this->response_type == 'client_credentials') {
            return array('success' => true, 'Authorize code has been created.', 'auth_code' => $auth_code);
        }

        $_SESSION['client_auth_code'] = $auth_code;

        header('Location: ' . base_url() . 'api.php/oauth/access_form/?client_id=' . $client_data['client_id'] . '&scope=' . $this->scope . '&redirect_uri=' . $this->redirect_uri);
        exit();
    }

    public function find_token() {
        $headers = print_r(getallheaders(), true);
        $poster = print_r($_POST, true);
        return array('access_token' => $headers . ' ----------------- ' . $poster);

        $client_secret = isset($_POST['client_secret']) ? $_POST['client_secret'] : null;
        $auth_code = isset($_POST['auth_code']) ? $_POST['auth_code'] : null;

        if (empty($client_secret) || empty($auth_code) || empty($_SESSION['client_auth_code'])) {
            return array('error' => true, 'message' => 'Undefine client information.');
        }

        if ($auth_code != $_SESSION['client_auth_code']) {
            return array('error' => true, 'message' => 'Invalid authorize code.');
        }

        $client_id = $this->get_client_id($client_secret);

        if (empty($client_id)) {
            return array('error' => true, 'message' => 'Invalid client secret key.');
        }

        $user_agent = isset($_SERVER['HTTP_USER_AGENT']) ? $_SERVER['HTTP_USER_AGENT'] : null;
        $token_key = md5($client_secret . TIME_NOW);
        $access_token = strtoupper($token_key) . '_' . $auth_code;

        $this->db->reset_query();
        $this->db->insert('api_access', array(
            'access_auth_code' => $auth_code,
            'access_token_key' => $token_key,
            'access_client_id' => $client_id,
            'access_scope' => $this->scope,
            'access_timeout' => TIME_NOW + $this->time_expire,
            'access_user_ip' => $this->client_ip,
            'access_user_agent' => $user_agent
        ));

        return array('success' => true, 'message' => 'Access token created.', 'access_token' => $access_token, 'expire' => $this->time_expire);
    }

    private function get_client_id($client_secret) {
        $this->db->reset_query();
        $this->db->select('client_id');
        $this->db->from('api_client');
        $this->db->where('client_secret', $client_secret);
        $this->db->group_by('access_auth_code');

        $query = $this->db->get();

        if ($query->num_rows() < 1) {
            return null;
        }

        $data = $query->row_array();

        return $data['client_id'];
    }

}
