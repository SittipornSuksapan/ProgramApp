<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Locations extends CI_Controller {

    private $mod_name;
    
    public function __construct() {
        parent::__construct();
        
        $this->mod_name = $this->router->fetch_module();

        $this->load->model($this->mod_name . '/Api_model');
        $this->Api_model->valid_access();
    }

    public function finder() {
        $this->load->model($this->mod_name . '/Locations_model');

        $result = $this->Locations_model->has_store();

        if (!$result) {
            echo json_encode(array('error' => true, 'message' => 'Not found data.'));
            exit();
        }

        echo json_encode(array('success' => true, 'data' => $result));
    }

}
