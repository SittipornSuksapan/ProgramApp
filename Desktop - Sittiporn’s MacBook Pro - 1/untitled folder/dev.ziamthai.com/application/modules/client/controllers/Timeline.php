<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Timeline extends CI_Controller {

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

    public function search() {
        if (empty($this->access_client['id']) || empty($this->access_workspace['id'])) {
            redirect($this->access_module . '/login/?return_url=' . site_url($this->access_module . '/timeline'));
            exit();
        }

        $this->load->language($this->access_module . '/timeline/search');

        $this->template->set('title', $this->lang->line('page_title'));
        $this->template->set('sidebar_mnu_active', 'timeline_search');

        $this->template->view($this->access_module . '/timeline/search', array(
            'access_client' => $this->access_client,
            'access_workspace' => $this->access_workspace,
            'access_module' => $this->access_module,
            'access_lang' => $this->access_lang
        ));
    }

    public function index() {
        if (empty($this->access_client['id']) || empty($this->access_workspace['id'])) {
            redirect($this->access_module . '/login/?return_url=' . site_url($this->access_module . '/timeline/writing'));
            exit();
        }

        $posts_id = isset($_GET['posts_id']) ? intval($_GET['posts_id']) : 0;
        $posts_data = null;
        $mnu_active = 'timeline_posts';

        if (!empty($posts_id)) {
            $this->load->model($this->access_module . '/timeline/Writing_model');

            $posts_data = $this->Writing_model->posts_data($posts_id);

            $mnu_active = 'timeline_posts_edit';
        }

        $this->load->language($this->access_module . '/timeline/writing');

        $page_title = $this->lang->line('page_title');

        if (!empty($posts_data['posts_title'])) {
            $page_title .= ' : ' . $posts_data['posts_title'];
        }

        $this->template->set('title', $page_title);
        $this->template->set('sidebar_mnu_active', $mnu_active);

        $this->template->view($this->access_module . '/timeline/writing', array(
            'access_client' => $this->access_client,
            'access_workspace' => $this->access_workspace,
            'access_module' => $this->access_module,
            'access_lang' => $this->access_lang,
            'posts_id' => $posts_id,
            'posts_data' => $posts_data
        ));
    }

}
