<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Customer_policy extends CI_Controller {

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
    if (empty($this->access_client['id']) || empty($this->access_workspace['id'])) {
        redirect($this->access_module . '/login');
        exit();
    }
		$shopID=$this->access_workspace['id'];
    $this->load->model($this->access_module . '/business/Shop_model');
    $this->load->model($this->access_module . '/customer/Policy_model');
		$arrMesg=null;
		$result=null;
		$arrShop=$this->Shop_model->get_data($shopID);
		$arrData=$this->Policy_model->policy_list();
		$this->template->set('title', $this->lang->line('page_title'));
		$this->template->set('sidebar_mnu_active', 'customer_policy');
		$this->template->view($this->access_module . '/client/client_policy', array(
				'access_client' => $this->access_client,
				'access_workspace' => $this->access_workspace,
				'access_module' => $this->access_module,
				'access_lang' => $this->access_lang,
				'info' => $arrData,
				'mesg'=>$arrMesg,
				'result'=>$result,
		));
  }

		
}
