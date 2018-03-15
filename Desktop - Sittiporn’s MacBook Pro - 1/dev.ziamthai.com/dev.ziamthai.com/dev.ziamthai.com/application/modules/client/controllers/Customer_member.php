<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Customer_member extends CI_Controller {

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
    $this->load->model($this->access_module . '/customer/Role_model');

		$this->template->set('title', $this->lang->line('page_title'));
		$this->template->set('sidebar_mnu_active', 'customer_member');
		
		$arrMember=$this->Customer_model->customer_member_list($this->access_workspace['id']);
		$arrMesg=null;
		if (!empty($arrMember)) {
			for($iCount=0; $iCount<count($arrMember); $iCount++) {
				$MemberID=$arrMember[$iCount]['id'];
			}
		}
		
		$this->template->view($this->access_module . '/client/client_member', array(
				'access_client' => $this->access_client,
				'access_workspace' => $this->access_workspace,
				'access_module' => $this->access_module,
				'access_lang' => $this->access_lang,
				'mesg'=>$arrMesg,
				'member'=>$arrMember,
		));
  }

  public function add() {
    if (empty($this->access_client['id']) || empty($this->access_workspace['id'])) {
        redirect($this->access_module . '/login');
        exit();
    }
		$shopID=$this->access_workspace['id'];
    $this->load->model($this->access_module . '/business/Shop_model');
    $this->load->model($this->access_module . '/customer/Customer_model');
    $this->load->model($this->access_module . '/customer/Policy_model');

		$this->template->set('title', $this->lang->line('page_title'));
		$this->template->set('sidebar_mnu_active', 'customer_member');
		
		$arrPolicy=$this->Policy_model->policy_list();
		if (isset($_REQUEST['btnSave'])) {
			$arrMesg=null;
			$arrMember=null;

			$this->template->view($this->access_module . '/client/client_member', array(
					'access_client' => $this->access_client,
					'access_workspace' => $this->access_workspace,
					'access_module' => $this->access_module,
					'access_lang' => $this->access_lang,
					'mesg'=>$arrMesg,
					'member'=>$arrMember,
					'request'=>$_REQUEST,
			));
		} else {
			$this->template->view($this->access_module . '/client/client_member_add', array(
					'access_client' => $this->access_client,
					'access_workspace' => $this->access_workspace,
					'access_module' => $this->access_module,
					'access_policy' => $arrPolicy,
					'access_lang' => $this->access_lang,
			));
		}
  }

  public function edit() {
    if (empty($this->access_client['id']) || empty($this->access_workspace['id'])) {
        redirect($this->access_module . '/login');
        exit();
    }
		$shopID=$this->access_workspace['id'];
		$memID=(isset($_REQUEST['memID']))?$_REQUEST['memID']:0;
    $this->load->model($this->access_module . '/business/Shop_model');
    $this->load->model($this->access_module . '/customer/Customer_model');
    $this->load->model($this->access_module . '/customer/Policy_model');
    $this->load->model($this->access_module . '/customer/Role_model');

		$this->template->set('title', $this->lang->line('page_title'));
		$this->template->set('sidebar_mnu_active', 'customer_member');
		
		$arrPolicy=$this->Policy_model->policy_list();
		$arrMember=null;
		$arrRole=null;
		$result=$this->Policy_model->get_member($shopID,$memID);
		if ($result['result']) {
			$arrMember=$result['data'];
		}
		$arrRole=$this->Role_model->role_policy_list($shopID,$memID);
		
		if (isset($_REQUEST['btnSave'])) {
			$arrMesg=null;

			$this->template->view($this->access_module . '/client/client_member', array(
					'access_client' => $this->access_client,
					'access_workspace' => $this->access_workspace,
					'access_module' => $this->access_module,
					'access_lang' => $this->access_lang,
					'mesg'=>$arrMesg,
					'Member'=>$arrMember,
					'request'=>$_REQUEST,
			));
		} else {
			$this->template->view($this->access_module . '/client/client_member_edit', array(
					'access_client' => $this->access_client,
					'access_workspace' => $this->access_workspace,
					'access_module' => $this->access_module,
					'access_policy' => $arrPolicy,
					'access_lang' => $this->access_lang,
					'Role' => $arrRole,
					'Member'=>$arrMember,
			));
		}
  }

	public function api_member_list() {
		$result=array('result'=>false,'mesg'=>null,'data'=>null);
    $this->load->model($this->access_module . '/customer/Customer_model');
		$data=$this->Customer_model->customer_member_list($this->access_workspace['id']);
		if ($data!=null) {$result['result']=true; $result['data']=$data; }
		echo json_encode($result);
	}
	
	public function api_zmember_list() {
		$result=array('result'=>false,'mesg'=>null,'data'=>null);
    $this->load->model($this->access_module . '/customer/Customer_model');
		$input=null;
		if (isset($_REQUEST['q'])) $input=$_REQUEST['q'];
		$data=$this->Customer_model->customer_zmember_list($input);
		if ($data!=null) {$result['result']=true; $result['data']=$data; }
		for($iCount=0; $iCount<count($data); $iCount++) {
			$result['data'][$iCount]['memh_pictureUrl']=str_replace('http://','https://',$result['data'][$iCount]['memh_pictureUrl']);
		}
		echo json_encode($result);
	}

	public function api_role_list() {
		$result=array('result'=>false,'mesg'=>null,'data'=>null);
    $this->load->model($this->access_module . '/customer/Role_model');
		$data=$this->Role_model->role_list($this->access_workspace['id']);
		if ($data!=null) {
			$result['result']=true;
			for ($iCount=0; $iCount<count($data); $iCount++) {
				$policy=$this->Role_model->role_policy_list($data[$iCount]['id']);
				$data[$iCount]['role']=$policy;
			}
			$result['data']=$data;
		}
		echo json_encode($result);
	}

	public function api_member_role_list() {
		$result=array('result'=>false,'mesg'=>null,'data'=>null);
    $this->load->model($this->access_module . '/customer/Customer_model');
    $this->load->model($this->access_module . '/customer/Role_model');
		if (isset($_REQUEST['mid'])) {
			$arrData=$this->Customer_model->customer_member_role_get($_REQUEST['mid']);
			if (!empty($arrData)) {
				$result['result']=true;
				for ($iRole=0; $iRole<count($arrData); $iRole++) {
					$roleID=$arrData[$iRole]['gid'];
					$arrInfo=$this->Role_model->role_get($roleID);
//					echo "arrInfo<br><pre>"; print_r($arrInfo); echo "</pre>";
					if (!empty($arrInfo)) {
						$arrData[$iRole]['role']['info']=$arrInfo;
						$arrRole=$this->Role_model->role_policy_list($roleID);
						if (!empty($arrRole)) {
							$arrData[$iRole]['role']['data']=$arrRole;
						}
					}
				}
			}
			$result['data']=$arrData;
		}
		
		echo json_encode($result);
	}
}
