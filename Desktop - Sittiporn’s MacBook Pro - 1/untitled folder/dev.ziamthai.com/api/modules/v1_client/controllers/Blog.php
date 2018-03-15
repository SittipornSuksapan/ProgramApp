<?php

defined('BASEPATH') OR exit('No direct script access allowed');

Class Blog extends CI_Controller {

    private $access_module, $access_user, $access_workspace;

    public function __construct() {
        parent::__construct();

        $this->access_module = $this->router->fetch_module();

        $this->load->model($this->access_module . '/Api_model');

        $this->Api_model->valid_access();
    }

    public function datatable() {
        $this->load->model($this->access_module . '/blog/Datatable_model');

        $result = $this->Datatable_model->find_data();

        if (empty($result['data'])) {
            echo json_encode(array('recordsTotal' => 0, 'recordsFiltered' => 0, 'data' => array()));
            exit();
        }

        $result['success'] = true;

        echo json_encode($result);
    }

    public function writing_save() {
        $return_json = isset($_REQUEST['return_json']) ? intval($_REQUEST['return_json']) : 0;
        $blog_id = isset($_POST['id']) ? $_POST['id'] : 0;

        $this->load->model($this->access_module . '/blog/Writing_model');

        if (empty($blog_id)) {
            $result = $this->Writing_model->save_data();
        } else {
            $result = $this->Writing_model->update_data($blog_id);
        }

        if (!empty($return_json)) {
            echo json_encode($result);
        }

        echo jsprint('parent.blog_writing_result(' . json_encode($result) . ');');
    }

    public function set_public() {
        $blog_id = $this->input->post('id', 0);
        $blog_public = $this->input->post('value', 0);

        $this->load->model($this->access_module . '/blog/Writing_model');

        $result = $this->Writing_model->set_blog_public($blog_id, $blog_public);

        if (!$result) {
            echo json_encode(array('error' => true, 'message' => 'Cannot publish this posts.'));
            exit();
        }

        $success_message = 'Published posts.';

        if (empty($blog_public)) {
            $success_message = 'Unpublished posts.';
        }

        echo json_encode(array('success' => true, 'message' => $success_message));
    }

}
