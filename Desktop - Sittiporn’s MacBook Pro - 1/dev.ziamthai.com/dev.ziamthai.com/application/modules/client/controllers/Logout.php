<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Logout extends CI_Controller {

    private $access_module;

    public function __construct() {
        parent:: __construct();

        $this->access_module = $this->router->fetch_module();
    }

    public function index() {
        $this->load->model($this->access_module . '/customer/Login_model');

        $this->Login_model->unset_client();

        $redirect_url = $this->input->get('return_url', null);

        if (empty($redirect_url)) {
            //$redirect_url = site_url($this->access_module . '/login');
            $redirect_url = site_url('accounts/pages/logout/?logout_return_url=' . site_url('food'));
        }

        redirect($redirect_url);
    }

}
