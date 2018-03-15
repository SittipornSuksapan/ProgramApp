<?php

defined('BASEPATH') OR exit('No direct script access allowed');

Class Oauth extends CI_Controller {

    public function __construct() {
        parent::__construct();
    }

    public function request() {
        $this->load->model('Oauth_model');

        $result = $this->Oauth_model->valid_client();

        echo json_encode($result);
    }
    
    public function access_form() {
        $this->load->view('oauth_form');
    }

    public function access_token() {
        $this->load->model('Oauth_model');

        $result = $this->Oauth_model->find_token();

        echo json_encode($result);
    }

}
