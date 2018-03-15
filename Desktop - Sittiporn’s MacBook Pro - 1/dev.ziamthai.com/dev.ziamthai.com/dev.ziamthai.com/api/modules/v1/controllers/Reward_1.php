<?php

defined('BASEPATH') OR exit('No direct script access allowed');

Class Reward extends CI_Controller {

    private $access_module, $access_user;

    public function __construct() {
        parent::__construct();

        $this->access_module = $this->router->fetch_module();

        $this->load->model($this->access_module . '/Api_model');

        $this->Api_model->valid_access();

        $this->access_user = $this->Api_model->valid_user();
    }

    public function member_point() {
        $this->load->model($this->access_module . '/reward/Reward_model');
        $points = 0;

        if (!empty($this->access_user['id'])) {
            $points = $this->Reward_model->get_member_point($this->access_user['id']);
        }

        header("Content-Type: text/plain");
        echo $points;
    }

    public function history_member() {
        $this->load->model($this->access_module . '/reward/History_member_model');

        $data = $this->History_member_model->data_search($this->access_user);

        if (!$data) {
            echo json_encode(array('error' => true, 'message' => 'Not found data.'));
            exit();
        }

        echo json_encode(array('success' => true, 'data' => $data));
    }

}
