<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {

    private $access_module = 'client';
    private $access_client, $access_workspace, $access_lang, $access_menu;

    public function __construct() {
        parent:: __construct();

        $this->access_lang = get_language();
        $this->access_module = $this->router->fetch_module();

        //-- get client user & workspace
        $this->load->model($this->access_module . '/customer/Login_model');
        $this->access_client = $this->Login_model->valid_client();
        $this->access_workspace = $this->Login_model->valid_workspace();
        $this->access_menu = $this->Login_model->valid_role();

        //-- template setup
        $this->template->language($this->access_lang);

        $this->template->set('access_module', $this->access_module);
        $this->template->set('access_lang', $this->access_lang);
        $this->template->set('access_client', $this->access_client);
        $this->template->set('access_workspace', $this->access_workspace);
        $this->template->set('access_menu', $this->access_menu);

        $this->template->load($this->access_module . '/templates/default');
    }

    public function index() {
        $this->load->language($this->access_module . '/dashboard');

        $this->template->set('title', $this->lang->line('page_title'));
        $this->template->set('sidebar_mnu_active', 'dashboard');

        $this->template->view($this->access_module . '/dashboard', array(
            'access_client' => $this->access_client,
            'access_workspace' => $this->access_workspace,
            'access_module' => $this->access_module,
            'access_lang' => $this->access_lang
        ));
    }

}
