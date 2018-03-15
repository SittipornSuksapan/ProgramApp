<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Blog extends CI_Controller {

    private $access_module = 'client';
    private $access_client, $access_workspace, $access_lang;

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

        $this->template->set('access_client', $this->access_client);
        $this->template->set('access_workspace', $this->access_workspace);
        $this->template->set('access_module', $this->access_module);
        $this->template->set('access_lang', $this->access_lang);
        $this->template->set('access_menu', $this->access_menu);

        $this->template->load($this->access_module . '/templates/default');
    }

    public function index() {
        $this->load->language($this->access_module . '/blog/search');

        $this->template->set('title', $this->lang->line('page_title'));
        $this->template->set('sidebar_mnu_active', 'blog_search');

        $this->template->view($this->access_module . '/blog/search', array(
            'access_client' => $this->access_client,
            'access_workspace' => $this->access_workspace,
            'access_module' => $this->access_module,
            'access_lang' => $this->access_lang
        ));
    }

    public function writing() {
        $blog_id = isset($_GET['blog_id']) ? intval($_GET['blog_id']) : 0;
        $blog_data = null;
        $mnu_active = 'blog_add';

        if (!empty($blog_id)) {
            $this->load->model($this->access_module . '/blog/Writing_model');

            $blog_data = $this->Writing_model->blog_data($blog_id);

            $mnu_active = 'blog_edit';
        }

        $this->load->language($this->access_module . '/blog/writing');

        $page_title = $this->lang->line('page_title');

        if (!empty($blog_data['blog_title'])) {
            $page_title .= ' : ' . $blog_data['blog_title'];
        }

        $this->template->set('title', $page_title);
        $this->template->set('sidebar_mnu_active', $mnu_active);

        $this->template->view($this->access_module . '/blog/writing', array(
            'access_client' => $this->access_client,
            'access_workspace' => $this->access_workspace,
            'access_module' => $this->access_module,
            'access_lang' => $this->access_lang,
            'blog_id' => $blog_id,
            'blog_data' => $blog_data
        ));
    }

}
