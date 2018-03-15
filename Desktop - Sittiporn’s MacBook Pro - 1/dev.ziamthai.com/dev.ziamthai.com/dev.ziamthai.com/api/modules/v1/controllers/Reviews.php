<?php

defined('BASEPATH') OR exit('No direct script access allowed');

Class Reviews extends CI_Controller {

    private $mod_name, $access_user;

    public function __construct() {
        parent::__construct();

        $this->mod_name = $this->router->fetch_module();

        $this->load->model($this->mod_name . '/Api_model');

        $this->Api_model->valid_access();

        $this->access_user = $this->Api_model->valid_user();
    }

    public function finder() {
        $this->load->model($this->mod_name . '/reviews/Finder_model');

        $data = $this->Finder_model->data_search($this->access_user);

        if (!$data) {
            echo json_encode(array('error' => true, 'message' => 'Not found data.'));
            exit();
        }

        echo json_encode(array('success' => true, 'data' => $data));
    }

    public function show() {
        $this->load->model($this->mod_name . '/reviews/Review_model');

        $data = $this->Review_model->get_data($this->mod_name,$this->access_user);

        if (!$data) {
            echo json_encode(array('error' => true, 'message' => 'Not found data.'));
            exit();
        }

        echo json_encode(array('success' => true, 'data' => $data));
    }

    public function writing_save() {
        $this->load->language($this->mod_name . '/reviews/writing_form');
        $this->load->model($this->mod_name . '/reviews/Writing_model');

        $result = $this->Writing_model->data_insert($this->access_user);

        if (isset($result['error'])) {
            echo json_encode($result);
            exit();
        }

        echo json_encode($result);
    }

    public function photo_upload() {
        $return_json = isset($_REQUEST['return_json']) ? intval($_REQUEST['return_json']) : 0;

        $this->load->language($this->mod_name . '/reviews/photo_upload');

        $shop_id = $this->input->post('shop', 0);

        if (empty($shop_id)) {
            $result = array('error' => true, 'message' => $this->lang->line('undefined_shop_id'));

            if ($return_json) {
                die(json_encode($result));
            }

            echo jsprint('parent.reviews_photo_upload_result(' . json_encode($result) . ');');
            exit();
        }

        $photo_id = $this->input->post('photo', 0);

        $this->load->model($this->mod_name . '/reviews/Photo_upload_model');

        $file_save = $this->Photo_upload_model->file_save($this->access_user, $shop_id, $photo_id);

        if (isset($file_save['error']) || empty($file_save['filename'])) {
            if ($return_json) {
                die(json_encode($file_save));
            }

            echo jsprint('parent.reviews_photo_upload_result(' . json_encode($file_save) . ');');
            exit();
        }

        if ($return_json) {
            die(json_encode($file_save));
        }

        echo jsprint('parent.reviews_photo_upload_result(' . json_encode($file_save) . ');');
    }

    public function photo_remove() {
        $photo_id = $this->input->post('photo', 0);
        $shop_id = $this->input->post('shop', 0);

        if (empty($photo_id) || empty($shop_id)) {
            echo json_encode(array('error' => true, 'message' => 'Undefined photo reference.'));
            exit();
        }

        if (empty($this->access_user['id'])) {
            echo json_encode(array('error' => true, 'message' => 'Please login.'));
            exit();
        }

        $this->load->model($this->mod_name . '/reviews/Photo_model');

        $photo_data = $this->Photo_model->photo_data($photo_id);

        if (empty($photo_data['bsri_id'])) {
            echo json_encode(array('error' => true, 'message' => 'Invalid photo reference.'));
            exit();
        }

        $result = $this->Photo_model->photo_remove($photo_id, $shop_id);

        if (!$result) {
            echo json_encode(array('error' => true, 'message' => 'Remove photo failed.'));
            exit();
        }

        echo json_encode(array('success' => true, 'message' => 'Photo has been removed.', 'photo_id' => $photo_id));

        $photo_name_large = isset($photo_data['bsri_file']) ? $photo_data['bsri_file'] : null;
        $photo_name_small = str_replace('_review', '_review_thumb', $photo_name_large);

        @unlink(ROOT_PATH . '/' . PATH_REVIEW_IMG . $photo_name_large);
        @unlink(ROOT_PATH . '/' . PATH_REVIEW_IMG . $photo_name_small);
    }

}
