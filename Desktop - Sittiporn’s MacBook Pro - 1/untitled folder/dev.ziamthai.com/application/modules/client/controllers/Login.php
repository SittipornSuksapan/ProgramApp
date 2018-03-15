<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {

    private $access_module = 'client';
    private $access_client, $access_lang;

    public function __construct() {
        parent:: __construct();

        $this->access_lang = get_language();
        $this->access_module = $this->router->fetch_module();

        //-- get client user
        $this->load->model($this->access_module . '/customer/Login_model');
        $this->access_client = $this->Login_model->valid_client();

        $this->template->language($this->access_lang);

        $this->template->set('access_module', $this->access_module);
        $this->template->set('access_lang', $this->access_lang);
        $this->template->set('access_client', $this->access_client);

        $this->template->load($this->access_module . '/templates/default');
    }

    public function index() {
        $this->load->model($this->access_module . '/customer/Workspace_model');

        $this->load->language($this->access_module . '/login');

        $this->template->set('title', $this->lang->line('page_title'));
        $this->template->set('navbar_hide', true);
        $this->template->set('sidebar_hide', true);

        $this->template->view($this->access_module . '/login', array(
            'access_module' => $this->access_module,
            'access_client' => $this->access_client,
            'access_workspace' => null,
            'workspace_list' => $this->Workspace_model->find_workspace()
        ));
    }

    public function set_workspace() {
        if (empty($this->access_client['id'])) {
            echo json_encode(array('error' => true, 'message' => 'Please sign In again.'));
            exit();
        }

        $result = $this->Login_model->set_workspace($this->access_client['id']);

        echo json_encode($result);
    }

}
