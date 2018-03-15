<?php

defined('BASEPATH') OR exit('No direct script access allowed');

Class Sales_order extends CI_Controller {

    private $access_module, $access_user, $access_workspace;

    public function __construct() {
        parent::__construct();

        $this->access_module = $this->router->fetch_module();

        $this->load->model($this->access_module . '/Api_model');

        $this->Api_model->valid_access();
    }

    public function datatable() {
        $this->load->model($this->access_module . '/sales_order/Datatable_model');

        $result = $this->Datatable_model->find_data();

        if (empty($result['data'])) {
            echo json_encode(array('recordsTotal' => 0, 'recordsFiltered' => 0, 'data' => array()));
            exit();
        }

        $result['success'] = true;

        echo json_encode($result);
    }

    public function order_info() {
        $this->load->model($this->access_module . '/sales_order/Order_info_model');

        $result = $this->Order_info_model->get_data();

        echo json_encode($result);
    }

}
