<?php

defined('BASEPATH') OR exit('No direct script access allowed');

Class Blog extends CI_Controller {

    private $mod_name, $access_user;

    public function __construct() {
        parent::__construct();

        $this->mod_name = $this->router->fetch_module();

        $this->load->model($this->mod_name . '/Api_model');

        $this->Api_model->valid_access();

        $this->access_user = $this->Api_model->valid_user();
    }

    public function show() {
        $this->load->model($this->mod_name . '/blog/Blog_model');

        $data = $this->Blog_model->get_data();

        if (!$data) {
            echo json_encode(array('error' => true, 'message' => 'Not found data.'));
            exit();
        }

        echo json_encode(array('success' => true, 'data' => $data));
    }

}
