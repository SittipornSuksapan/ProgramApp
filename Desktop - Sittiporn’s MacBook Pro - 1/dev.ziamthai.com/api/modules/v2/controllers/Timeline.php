<?php

defined('BASEPATH') OR exit('No direct script access allowed');

Class Timeline extends CI_Controller {

    private $access_module, $access_user, $access_workspace;

    public function __construct() {
        parent::__construct();

        $this->access_module = $this->router->fetch_module();

        $this->load->model($this->access_module . '/Api_model');

        $this->Api_model->valid_access();
    }

    public function datatable() {
        $this->load->model($this->access_module . '/timeline/Datatable_model');

        $result = $this->Datatable_model->find_data();

        if (empty($result['data'])) {
            echo json_encode(array('recordsTotal' => 0, 'recordsFiltered' => 0, 'data' => array()));
            exit();
        }

        $result['success'] = true;

        echo json_encode($result);
    }

    public function set_public() {
        $posts_id = $this->input->post('id', 0);
        $posts_public = $this->input->post('value', 0);

        $this->load->model($this->access_module . '/timeline/Posts_model');

        $result = $this->Posts_model->set_posts_public($posts_id, $posts_public);

        if (!$result) {
            echo json_encode(array('error' => true, 'message' => 'Cannot publish this posts.'));
            exit();
        }

        $success_message = 'Published posts.';

        if (empty($posts_public)) {
            $success_message = 'Unpublished posts.';
        }

        echo json_encode(array('success' => true, 'message' => $success_message));
    }
		
		public function feed() {
        $this->load->model($this->access_module . '/timeline/Finder_model');

        $data = $this->Finder_model->data_search($this->access_user);

        if (!$data) {
            echo json_encode(array('error' => true, 'message' => 'Not found data.'));
            exit();
        }

        echo json_encode(array('success' => true, 'data' => $data));
		}
		
}
