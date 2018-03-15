<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Reward extends CI_Controller {

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

    public function config_form() {
        $this->load->language($this->access_module . '/reward/config_form');

        $this->load->model($this->access_module . '/reward/Reward_config_model');

        $exchange_rate = $this->Reward_config_model->get_exchange_rate($this->access_workspace['id']);

        $this->template->set('title', $this->lang->line('page_title'));
        $this->template->set('sidebar_mnu_active', 'reward_config');

        $this->template->view($this->access_module . '/reward/config_form', array(
            'access_client' => $this->access_client,
            'access_workspace' => $this->access_workspace,
            'access_module' => $this->access_module,
            'access_lang' => $this->access_lang,
            'exchange_rate' => $exchange_rate
        ));
    }

    public function gen_points() {
        $this->load->language($this->access_module . '/reward/reward_points');

        $this->load->model($this->access_module . '/reward/Reward_config_model');

        $exchange_rate = $this->Reward_config_model->get_exchange_rate($this->access_workspace['id']);

        $this->template->set('title', $this->lang->line('page_title_generate'));
        $this->template->set('sidebar_mnu_active', 'reward_points');

        $this->template->view($this->access_module . '/reward/gen_points', array(
            'access_client' => $this->access_client,
            'access_workspace' => $this->access_workspace,
            'access_module' => $this->access_module,
            'access_lang' => $this->access_lang,
            'exchange_rate' => $exchange_rate
        ));
    }

    public function redeem_points() {
        $this->load->language($this->access_module . '/reward/reward_points');

        $this->load->model($this->access_module . '/reward/Reward_config_model');

        $exchange_rate = $this->Reward_config_model->get_exchange_rate($this->access_workspace['id']);

        $this->template->set('title', $this->lang->line('page_title_redeem'));
        $this->template->set('sidebar_mnu_active', 'reward_redeem');

        $this->template->view($this->access_module . '/reward/redeem_points', array(
            'access_client' => $this->access_client,
            'access_workspace' => $this->access_workspace,
            'access_module' => $this->access_module,
            'access_lang' => $this->access_lang,
            'exchange_rate' => $exchange_rate
        ));
    }

}
