<?php

defined('BASEPATH') OR exit('No direct script access allowed');

Class Timeline_posts extends CI_Controller {

    private $access_module, $access_user, $access_workspace;

    public function __construct() {
        parent::__construct();

        $this->access_module = $this->router->fetch_module();

        $this->load->model($this->access_module . '/Api_model');

        $this->Api_model->valid_access();
    }

    public function writing_save() {
        $this->load->model($this->access_module . '/timeline/Posts_model');

        $result = $this->Posts_model->save_data();

        echo json_encode($result);
    }

}
