<?php

defined('BASEPATH') OR exit('No direct script access allowed');

Class Accounts_finder extends CI_Controller {

    private $access_module;

    public function __construct() {
        parent::__construct();

        $this->access_module = $this->router->fetch_module();

        $this->load->model($this->access_module . '/Api_model');

        $this->Api_model->valid_access();
    }

    public function search_barcode() {
        $keyword = isset($_REQUEST['q']) ? $_REQUEST['q'] : null;

        $this->load->model($this->access_module . '/accounts/Member_model');

        $result = $this->Member_model->barcode_finder($keyword);

        if (empty($result['id'])) {
            echo json_encode(array('error' => true, 'message' => 'Not found.'));
            exit();
        }

        echo json_encode(array('success' => true, 'data' => $result));
    }

    public function search_combobox() {
        $keyword = isset($_REQUEST['q']) ? $_REQUEST['q'] : null;

        $this->load->model($this->access_module . '/accounts/Member_model');

        $result = $this->Member_model->combobox_finder($keyword);

        if (sizeof($result) < 1) {
            echo json_encode(array());
        }

        echo json_encode($result);
    }

}
