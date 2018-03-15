<?php

defined('BASEPATH') OR exit('No direct script access allowed');

Class Restaurant extends CI_Controller {

    private $mod_name,$access_user;

    public function __construct() {
        parent::__construct();
        
        $this->mod_name = $this->router->fetch_module();

        $this->load->model($this->mod_name . '/Api_model');
        $this->Api_model->valid_access();

        if ($this->session->has_userdata('memh_id')) {
            $this->access_user['memh_id'] = $this->session->userdata('memh_id');
        }

        if (empty($this->access_user['memh_id'])) {
            $this->load->model($this->mod_name . '/accounts/Login_model');
            $this->access_user = $this->Login_model->valid_access();
        }
    }

    public function finder() {
        $this->load->model($this->mod_name . '/restaurant/Finder_model');

        $data = $this->Finder_model->data_search($this->access_user);

        if (!$data) {
            echo json_encode(array('error' => true, 'message' => 'Not found data.'));
            exit();
        }

        echo json_encode(array('success' => true, 'data' => $data));
    }

}
