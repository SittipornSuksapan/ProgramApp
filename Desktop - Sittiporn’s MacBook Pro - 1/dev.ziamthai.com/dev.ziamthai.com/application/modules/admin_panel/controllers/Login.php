<?php

defined('BASEPATH') OR exit('No direct script access allowed');

if (empty($_SERVER['HTTPS']) || $_SERVER['HTTPS'] == "off") {
    $redirect = 'https://' . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];
    header('HTTP/1.1 301 Moved Permanently');
    header('Location: ' . $redirect);
    exit();
}

class Login extends CI_Controller {

    private $apps_name = 'admin_panel';

    public function __construct() {
        parent:: __construct();

        $this->template->load('templates/admin_panel');
        $this->template->set('apps_name', $this->apps_name);
    }

    public function index() {
        if ($this->session->has_userdata($this->apps_name . '_uid')) {
            redirect($this->apps_name . '/home');
            exit();
        }

        $this->load->model($this->apps_name . '/User_auth_model');
        $this->User_auth_model->unset_user_login();
        $this->load->language('templates/admin_panel_login');
        $this->template->set('title', $this->lang->line('page_title'));
        $this->template->view('templates/admin_panel_login');
    }

    public function form_valid() {
        $this->load->language('templates/admin_panel_login');
        $this->load->model($this->apps_name . '/User_auth_model');

        $user_data = $this->User_auth_model->form_valid_user();

        if (empty($user_data['user_id'])) {
            echo json_encode(array('error' => true, 'message' => $this->lang->line('notfound_user')));
            exit();
        }

        if (empty($user_data['user_active'])) {
            echo json_encode(array('error' => true, 'message' => $this->lang->line('deactivated_user')));
            exit();
        }

        echo json_encode(array('success' => true, 'message' => $this->lang->line('login_complete'), 'data' => $user_data));
    }

}
