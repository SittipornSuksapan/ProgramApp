<?php

defined('BASEPATH') OR exit('No direct script access allowed');

Class Accounts_update extends CI_Controller {

    private $mod_name, $access_user_id;

    public function __construct() {
        parent::__construct();

        $this->mod_name = $this->router->fetch_module();

        $this->load->model($this->mod_name . '/Api_model');

        $this->Api_model->valid_access();

        $this->access_user = $this->Api_model->valid_user();
    }

    public function info() {
        if (empty($this->access_user['id'])) {
            echo json_encode(array('error' => true, 'message' => 'Please login again.'));
            exit();
        }

        $this->load->language($this->mod_name . '/accounts/update');

        $this->load->model($this->mod_name . '/accounts/Update_model');

        $result = $this->Update_model->update_info($this->access_user['id']);

        echo json_encode($result);
    }

    public function pwd() {
        if (empty($this->access_user['id'])) {
            echo json_encode(array('error' => true, 'message' => 'Please login again.'));
            exit();
        }

        $this->load->language($this->mod_name . '/accounts/update');

        $this->load->model($this->mod_name . '/accounts/Update_model');

        $result = $this->Update_model->update_pass($this->access_user['id']);

        echo json_encode($result);
    }

    public function photo() {
        if (empty($this->access_user['id'])) {
            echo json_encode(array('error' => true, 'message' => 'Please login again.'));
            exit();
        }
        
        $return_json = isset($_REQUEST['return_json']) ? intval($_REQUEST['return_json']) : 0;

        $this->load->language($this->mod_name . '/accounts/update');

        $this->load->model($this->mod_name . '/accounts/Photo_model');

        $result = $this->Photo_model->save_photo($this->access_user);

        if ($return_json) {
            die(json_encode($result));
        }

        echo jsprint('parent.member_photo_upload_result(' . json_encode($result) . ');');
    }

}
