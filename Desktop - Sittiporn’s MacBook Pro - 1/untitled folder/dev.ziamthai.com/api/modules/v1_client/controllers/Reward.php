<?php

defined('BASEPATH') OR exit('No direct script access allowed');

Class Reward extends CI_Controller {

    private $access_module, $access_user, $access_workspace;

    public function __construct() {
        parent::__construct();

        $this->access_module = $this->router->fetch_module();

        $this->load->model($this->access_module . '/Api_model');

        $this->Api_model->valid_access();
    }

    public function update_exchange_rate() {
        $this->load->model($this->access_module . '/reward/Reward_config_model');

        $result = $this->Reward_config_model->config_exchange_rate();

        if (!$result) {
            echo json_encode(array('error' => true, 'message' => 'Update failed!'));
            exit();
        }

        echo json_encode(array('success' => true, 'message' => 'Update complete.'));
    }

    public function generate_point() {
        $this->load->model($this->access_module . '/reward/Generate_point_model');

        $result = $this->Generate_point_model->gen_point();

        echo json_encode($result);
    }

    public function redeem_point() {
        $this->load->model($this->access_module . '/reward/Redeem_point_model');

        $result = $this->Redeem_point_model->redeem_point();

        echo json_encode($result);
    }

    public function history_datatable() {
        $this->load->model($this->access_module . '/reward/Datatable_history_model');

        $member_id = $this->uri->segment(4, 0);

        $result = $this->Datatable_history_model->find_data($member_id);

        if (empty($result['data'])) {
            echo json_encode(array('recordsTotal' => 0, 'recordsFiltered' => 0, 'data' => array()));
            exit();
        }

        $result['success'] = true;

        echo json_encode($result);
    }

}
