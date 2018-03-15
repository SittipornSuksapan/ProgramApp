<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Customer_role_policy extends CI_Controller {

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
		$arrMesg=null;
		$result=null;
		$arrData=$this->Shop_model->get_data($shopID);
		$arrList=explode('||',$arrData['bssh_subcate']);
		$arrState=$this->Shop_model->list_state(10);
		$arrSubCategory=$this->Shop_model->list_biztype(101);
		$arrSub='';
		$arrSubCate=NULL;
		$arrCategory=NULL;
		foreach ($arrSubCategory as $aInfo) {
			$arrSubCate[]=array("id"=>$aInfo['bsth_id'],"text"=>$aInfo['bsth_title']);
			if (in_array($aInfo['bsth_id'],$arrList)) {
				$arrSub.=sprintf("||%d=%s",$aInfo['bsth_id'],$aInfo['bsth_title']);
				$arrCategory[]=array("id"=>$aInfo['bsth_id'],"text"=>$aInfo['bsth_title']);
			}
		}
		$this->template->set('title', $this->lang->line('page_title'));
		$this->template->set('sidebar_mnu_active', 'customer_role_policy');
		$this->template->view($this->access_module . '/client/client_role_policy', array(
				'access_client' => $this->access_client,
				'access_workspace' => $this->access_workspace,
				'access_module' => $this->access_module,
				'access_lang' => $this->access_lang,
				'info' => $arrData,
				'subcategory'=>$arrSub,
				'sub_data'=>$arrSubCate,
				'state'=>$arrState,
				'mesg'=>$arrMesg,
				'result'=>$result,
				'category'=>$arrCategory,
		));
  }

		
}
