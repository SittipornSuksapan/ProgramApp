<?php

defined('BASEPATH') OR exit('No direct script access allowed');

Class Business_shop extends CI_Controller {

    private $mod_name, $access_user;

    public function __construct() {
        parent::__construct();

        $this->mod_name = $this->router->fetch_module();

        $this->load->model($this->mod_name . '/Api_model');

        $this->Api_model->valid_access();

        $this->access_user = $this->Api_model->valid_user();
    }

    public function info() {
        $shop_id = isset($_REQUEST['shop']) ? intval($_REQUEST['shop']) : intval($_REQUEST['shop']);

        if (empty($shop_id)) {
            echo json_encode(array('error' => true, 'message' => 'Undefined shop reference.'));
            exit();
        }

        $this->load->model($this->mod_name . '/business/Shop_model');

        $result = $this->Shop_model->get_info($shop_id);

        if (sizeof($result) < 1) {
            echo json_encode(array('error' => true, 'message' => 'Not found data.'));
            exit();
        }

        echo json_encode(array('success' => true, 'data' => $result));
    }

    public function data() {
        $shop_id = isset($_REQUEST['shop']) ? intval($_REQUEST['shop']) : intval($_REQUEST['shop']);

        if (empty($shop_id)) {
            echo json_encode(array('error' => true, 'message' => 'Undefined shop reference.'));
            exit();
        }

        $this->load->model($this->mod_name . '/business/Shop_model');

        $result = $this->Shop_model->get_data($shop_id);

        if (sizeof($result) < 1) {
            echo json_encode(array('error' => true, 'message' => 'Not found data.'));
            exit();
        }

        echo json_encode(array('success' => true, 'data' => $result));
    }

    public function recommend_item() {
        $shop_id = isset($_REQUEST['shop']) ? intval($_REQUEST['shop']) : 0;
        $limit = isset($_REQUEST['limit']) ? intval($_REQUEST['limit']) : 8;

        if (empty($shop_id)) {
            echo json_encode(array('error' => true, 'message' => 'Undefined shop reference.'));
            exit();
        }

        // item_recommend
        $this->load->model($this->mod_name . '/business/Shop_asset_model');

        $result = $this->Shop_asset_model->recommend_item($shop_id, $limit);
        
        if (sizeof($result) < 1) {
            echo json_encode(array('error' => true, 'message' => 'Not found data.'));
            exit();
        }

        echo json_encode(array('success' => true, 'data' => $result));
    }

}
