<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Customer_info extends CI_Controller {

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
    $this->load->model($this->access_module . '/customer/Customer_model');
		$arrMesg=null;
		$result=null;
		$arrShop=$this->Shop_model->get_data($shopID);
		$arrInfo=$this->Customer_model->customer_info_get($shopID);
		$this->template->set('title', $this->lang->line('page_title'));
		$this->template->set('sidebar_mnu_active', 'customer_info');
		$this->template->view($this->access_module . '/client/client_index', array(
				'access_client' => $this->access_client,
				'access_workspace' => $this->access_workspace,
				'access_module' => $this->access_module,
				'access_lang' => $this->access_lang,
				'shop' => $arrShop,
				'info' => $arrInfo,
				'mesg'=>$arrMesg,
				'result'=>$result,
		));
  }

		
}
