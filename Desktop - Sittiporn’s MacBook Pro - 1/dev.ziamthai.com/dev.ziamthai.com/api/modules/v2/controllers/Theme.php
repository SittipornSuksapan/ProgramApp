<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Theme extends CI_Controller {

	private $mod_name;
//	private $access_user;

	public function __construct() {
		parent::__construct();

		$this->mod_name = $this->router->fetch_module();

		$this->load->model($this->mod_name . '/Api_model');
		$this->load->model($this->mod_name . '/restaurant/Payment_model');
		$this->load->model($this->mod_name . '/restaurant/Order_model');

		$this->Api_model->valid_access();

//		$this->access_user = $this->Api_model->valid_user();
	}
	
	public function index() {
		$arrReturn=array('result'=>true,'data'=>null);
		$shop_id = isset($_REQUEST['shop_id']) ? intval($_REQUEST['shop_id']) : 0;
		
		$this->load->model($this->mod_name . '/restaurant/Theme_model');
		$arrReturn['data']=$this->Theme_model->get_theme($shop_id);
		
		echo json_encode($arrReturn);
	}
		
		
}
