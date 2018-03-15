<?php

defined('BASEPATH') OR exit('No direct script access allowed');

if (empty($_SERVER['HTTPS']) || $_SERVER['HTTPS'] == "off") {
    $redirect = 'https://' . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];
    header('HTTP/1.1 301 Moved Permanently');
    header('Location: ' . $redirect);
    exit();
}

class Business_header extends CI_Controller {

    private $apps_name = 'admin_panel';

    public function __construct() {
        parent:: __construct();

				if (!$this->session->has_userdata($this->apps_name . '_uid')) {
            redirect($this->apps_name . '/login');
            exit();
        }

				$this->template->load('templates/admin_panel');
        $this->template->set('apps_name', $this->apps_name);
				if ($this->session->userdata($this->apps_name . '_utype')=='admin') {
					$this->template->set('sidebar', array('view' => 'admin_panel/cpanel_sidebar_admin', 'lang' => ''));
				} else {
					$this->template->set('sidebar', array('view' => 'admin_panel/cpanel_sidebar', 'lang' => ''));
				}
        $this->load->language($this->apps_name . '/business_header',get_language());
//        $this->load->language($this->apps_name . '/business_header');

        $this->load->model($this->apps_name . '/business_header/Bssh_data_model');
    }

    public function form() {

        $id = isset($_GET['id']) ? $_GET['id'] : 0;


        $data = $this->Bssh_data_model->get_data($id);

        if (!empty($id) && empty($data['bssh_id'])) {
            $this->template->view('templates/page_notfound');
            exit();
        }


        $this->template->set('title', $this->lang->line('form_title'));
        $this->template->view($this->apps_name . '/business_header/form', array(
            'bssh_id' => $id,
            'bssh_data' => $data
        ));
    }
		
		public function index() {

			$this->template->set('title', $this->lang->line('form_title'));
			$data = $this->Bssh_data_model->list_bizshop();
			$owner=$this->Bssh_data_model->list_owner();
			for ($iCount=0; $iCount<count($data); $iCount++) {
				$data[$iCount]['bssh_owner_name']='Admin';
				for ($iUser=0; $iUser<count($owner); $iUser++) {
					if ($owner[$iUser]['user_id']==$data[$iCount]['bssh_owner'])
						$data[$iCount]['bssh_owner_name']=$owner[$iUser]['user_name'];
				}
			}
			$this->template->view($this->apps_name . '/business_header/list', array(
            'bssh_data' => $data,
						'user_level'=> $this->session->userdata($this->apps_name . '_utype')
      ));
		}
		
		public function add() {
			$id=0;
			$result=null;
			if (isset($_POST['btnSave'])) {
        $result = $this->Bssh_data_model->add_data($_POST,$_FILES);
				if ($result['result']==true) $id=$result['data'];
			}
			$this->template->set('title', $this->lang->line('form_add_title'));
			$data=array();
			$state=$this->Bssh_data_model->list_state(10);
			$biztype=$this->Bssh_data_model->list_biztype();
			$owner=$this->Bssh_data_model->list_owner();			$this->template->set('title', $this->lang->line('form_add_title'));

			$arrSubCategory=$this->Bssh_data_model->list_biztype(101);
			$arrSubCate=NULL;
			foreach ($arrSubCategory as $aInfo) {
				$arrSubCate[]=array("id"=>$aInfo['bsth_id'],"text"=>$aInfo['bsth_title']);
			}
			if ($id==0) {
				$this->template->view($this->apps_name . '/business_header/add', array(
							'bssh_result'=>$result,
							'bssh_id'=>null,
							'bssh_data' => $data,
							'bssh_mesg' => null,
							'sub_data'=>$arrSubCate,
							'bssh_type' => $biztype,
							'owner'=>$owner,
							'bssh_state'=> $state
				));
			} else {
				$this->template->view($this->apps_name . '/business_header/add', array(
							'bssh_result'=>$result,
							'bssh_id'=>$id,
							'bssh_data' => $data,
							'bssh_mesg' => $result['message'],
							'sub_data'=>$arrSubCate,
							'bssh_type' => $biztype,
							'owner'=>$owner,
							'bssh_state'=> $state
				));
			}
		}

		public function edit1() {
			$id=$_REQUEST['id'];
			$state=$this->Bssh_data_model->list_state(10);
			$biztype=$this->Bssh_data_model->list_biztype();
			if (isset($_POST['btnSave'])) {
        $result = $this->Bssh_data_model->edit_data1($_POST,$_FILES);
			}
			if ($id>0) {
				$this->template->set('title', $this->lang->line('form_edit_title'));
				$data=$this->Bssh_data_model->get_data($id);
				$owner=$this->Bssh_data_model->list_owner();
				$arrSubCategory=$this->Bssh_data_model->list_biztype($data['bssh_bsth_id']);
				$arrList=explode('||',$data['bssh_subcate']);
				$arrSub='';
				$arrSubCate=NULL;
				foreach ($arrSubCategory as $aInfo) {
					$arrSubCate[]=array("id"=>$aInfo['bsth_id'],"text"=>$aInfo['bsth_title']);
					if (in_array($aInfo['bsth_id'],$arrList)) {
						$arrSub.=sprintf("||%d=%s",$aInfo['bsth_id'],$aInfo['bsth_title']);
					}
					
				}
				$this->template->view($this->apps_name . '/business_header/edit1', array(
							'bssh_id'=>$id,
							'bssh_data' => $data,
							'bssh_mesg' => null,
							'subcategory'=>$arrSub,
							'sub_data'=>$arrSubCate,
							'bssh_type' => $biztype,
							'owner'=>$owner,
							'bssh_state'=> $state,
							'user_level'=> $this->session->userdata($this->apps_name . '_utype')
				));
			}
		}

		public function edit2() {
			$id=$_REQUEST['id'];
			$sMesg=NULL;
			$imgLists=NULL;
			$shopInfo=$this->Bssh_data_model->get_data($id);
			$imgTypes=$this->Bssh_data_model->list_imgtype($shopInfo['bssh_bsth_id']);

			if (isset($_POST['btnUploadSave'])) {
        $result = $this->Bssh_data_model->upload_images($id,$_POST,$imgTypes,$_FILES);
//				if ($result['result']) 
          $sMesg=$result['message'];
			}
			if (isset($_POST['btnUpdateSave'])) {
        $result = $this->Bssh_data_model->update_images($_POST);
//				if ($result['result']) 
          $sMesg=$result['message'];
			}

			if ($shopInfo==NULL) {
				$sMesg='No Shop Information';
			} else {
				$imgLists=$this->Bssh_data_model->get_images($id);
			}

			$this->template->set('title', $this->lang->line('form_edit_title'));
			$this->template->view($this->apps_name . '/business_header/edit2', array(
						'bssh_id'=>$id,
					  'shopName'=>$shopInfo['bssh_title'],
						'imgLists' => $imgLists,
						'imgTypes' => $imgTypes,
						'user_level'=> $this->session->userdata($this->apps_name . '_utype'),
						'message' => $sMesg
			));
		}
		public function edit3() {
			$id=$_REQUEST['id'];
			$sMesg=NULL;
			$shopInfo=$this->Bssh_data_model->get_data($id);
			if ($shopInfo==NULL) {
				$sMesg='No Shop Information';
				return null;
			}

			$this->template->set('title', $this->lang->line('form_edit_title'));
			$this->template->view($this->apps_name . '/business_header/edit3', array(
						'bssh_id'=>$id,
					  'shopName'=>$shopInfo['bssh_title'],
						'active'=>$shopInfo['bssh_force_online'],
						'user_level'=> $this->session->userdata($this->apps_name . '_utype'),
						'message' => $sMesg
			));
		}

		public function delete() {
			$id=$_REQUEST['id'];
			if (empty($id)) {
				$this->index();
			} else {				
        $result = $this->Bssh_data_model->delete_shop($id);
			}			
			$this->index();
		}
		
		public function restore() {
			$id=$_REQUEST['id'];
			if (empty($id)) {
				$this->index();
			} else {				
        $result = $this->Bssh_data_model->restore_shop($id);
			}
			$this->index();
		}
    
		public function purge() { // Not Complete
			$id=$_REQUEST['id'];
			if (empty($id)) {
				$this->index();
			} else {				
//        $result = $this->Bssh_data_model->purge_shop($id);
			}
			echo "<pre>"; print_r($result); echo "</pre>";
		}
		
		public function api_add_workhour() {
			$return['result']=false;
			$id=$_REQUEST['shopID'];
			$dow=$_REQUEST['selDOW'];
			$type=$_REQUEST['iType'];
			$open=$_REQUEST['timeOpen'];
			$close=$_REQUEST['timeClose'];
			if (empty($id)) {
				return null;
			} else {
				// add workhour
				$return = $this->Bssh_data_model->add_workhour($id,$type,$dow,$open,$close);
			}
			echo json_encode($return);
		}
		public function api_get_workhour() {
			$return['result']=false;
			$id=$_REQUEST['shopID'];
			$type=$_REQUEST['iType'];
			if (empty($id)) {
				return null;
			} else {
				// add workhour
				$result = $this->Bssh_data_model->get_workhour($id,$type);
				$return['result']=true;
				$return['data']=$result;
				for ($iCount=0; $iCount<count($return['data']); $iCount++) {
					$return['data'][$iCount]['day_of_week']=day_of_week($return['data'][$iCount]['bssw_day_week']);
				}
			}
			echo json_encode($return);
		}
		public function api_edit_workhour() {
			$return['result']=false;
			$id=$_REQUEST['recID'];
			$dow=$_REQUEST['selDOW'];
			$open=$_REQUEST['timeOpen'];
			$close=$_REQUEST['timeClose'];
			if (empty($id)) {
				return null;
			} else {
				// add workhour
				$return = $this->Bssh_data_model->edit_workhour($id,$dow,$open,$close);
			}
			echo json_encode($return);
		}
		public function api_del_workhour() {
			$return['result']=false;
			$id=$_REQUEST['recID'];
			if (empty($id)) {
				return null;
			} else {
				// add workhour
				$return = $this->Bssh_data_model->del_workhour($id);
			}
			echo json_encode($return);
		}
		
		public function api_active_online() {
			$return['result']=false;
			$id=$_REQUEST['shopID'];
			$iForce=$_REQUEST['chkActive'];
			if (empty($id)) {
				return null;
			} else {
				// add workhour
				$return = $this->Bssh_data_model->force_online($id,$iForce);
			}
			echo json_encode($return);
		}
		
}
