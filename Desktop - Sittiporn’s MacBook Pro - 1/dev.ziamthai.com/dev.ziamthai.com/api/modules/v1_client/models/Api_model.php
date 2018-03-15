<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Api_model extends CI_Model {

    private $access_module;
    private $access_token = 'sd23g125sdf1gc10b3yhik58l4o4';

    public function __construct() {
        parent::__construct();

        $this->access_module = $this->router->fetch_module();

        $this->load->language($this->access_module . '/api', get_language());
    }

    public function valid_access() {
        $referer = isset($_SERVER['HTTP_REFERER']) ? $_SERVER['HTTP_REFERER'] : null;

        if (empty($referer)) {
            return $this->valid_access_token();
        }

        /* if (ENVIRONMENT == 'development') {
          return null;
          } */

        if (!preg_match('/\.ziamthai\.(com|co.th)/', $referer)) {
            echo json_encode(array('error' => true, 'message' => $this->lang->line('invalid_domain_access')));
            exit();
        }

        $base_url = base_url();
        $base_url2 = str_ireplace(array('www.', 'test.', 'dev.'), array('', '', ''), $base_url);

        header("Access-Control-Allow-Origin: " . rtrim($base_url2, '/'));
        header("Access-Control-Allow-Origin: " . rtrim($base_url, '/'));
    }

    private function valid_access_token() {
        $get_key = isset($_REQUEST['access_token']) ? $_REQUEST['access_token'] : null;

        if ($get_key != $this->access_token) {
            echo json_encode(array('error' => true, 'message' => $this->lang->line('invalid_access_token') . ' Your Token Key : ' . $get_key));
            exit();
        }
    }

    public function valid_user() {
        $access_user = array();

        if ($this->session->has_userdata('access_client')) {
            $access_user = $this->session->userdata('access_client');
        }

        if (empty($access_user['id'])) {
            return null;
        }

        return $access_user;
    }

    public function valid_workspace() {
        $access_workspace = array();

        if ($this->session->has_userdata('access_workspace')) {
            $access_workspace = $this->session->userdata('access_workspace');
        }

        if (empty($access_workspace['id'])) {
            return null;
        }

        return $access_workspace;
    }

}
