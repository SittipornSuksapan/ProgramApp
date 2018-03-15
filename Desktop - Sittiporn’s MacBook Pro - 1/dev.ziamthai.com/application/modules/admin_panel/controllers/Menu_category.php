<?php

defined('BASEPATH') OR exit('No direct script access allowed');

if (empty($_SERVER['HTTPS']) || $_SERVER['HTTPS'] == "off") {
    $redirect = 'https://' . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];
    header('HTTP/1.1 301 Moved Permanently');
    header('Location: ' . $redirect);
    exit();
}

class Menu_category extends CI_Controller {

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
//        $this->load->language($this->apps_name . '/business_header',get_language());
//        $this->load->language($this->apps_name . '/business_header');

        $this->load->model($this->apps_name . '/menu_category/Menu_category_model');
        $this->load->model($this->apps_name . '/business_header/Bssh_data_model');
    }

		public function index() {
			$this->template->set('title', $this->lang->line('form_title'));
			$shop_id=(! empty($_REQUEST['id']))?$_REQUEST['id']:0;
			$curr=(! empty($_REQUEST['curr']))?$_REQUEST['curr']:1;
			$ppage=(! empty($_REQUEST['ppage']))?$_REQUEST['ppage']:10;
			
			$result['result']=false;
			$result['message']='';
			if ($shop_id==0) {
				$result['message'].='!!!Cannot find shop information!!!';
			} else {
				$shop = $this->Bssh_data_model->get_data($shop_id);
				if (is_null($shop)) {
					$result['message'].='No Shop Information';
				} else {
//					$arrSubCate=$this->Menu_category_model->list_category($shop_id);
					$arrData=$this->Menu_category_model->get_all_category($shop_id);
					$arrSubCate=null;
					if (count($arrData)>0) {
						foreach($arrData as $aData){
							$cateID=$aData['bsic_id'];
							$arrMenu=$this->Menu_category_model->list_menu($shop_id,$cateID);
							$aData['menu']=$arrMenu;
							$arrSubCate['data'][]=$aData;
						}
					}
					$this->template->view($this->apps_name . '/menu_category/list', array(
								'result' => $result,
								'shop' => $shop,
								'subcate'=>$arrSubCate,
								'user_level'=> $this->session->userdata($this->apps_name . '_utype')
					));
					return;
				}
			}
			$this->template->view($this->apps_name . '/menu_category/error',array(
						'result' => $result,
						'user_level'=> $this->session->userdata($this->apps_name . '_utype')
			));
		}
		
		public function api_add_category() {
			$aReturn=array('result'=>false,'message'=>null,'data'=>null);
			$input=null;
			$input['bsic_bssh_id']=(! empty($_REQUEST['txtShopID']))?$_REQUEST['txtShopID']:0;
			$input['bsic_name']=(! empty($_REQUEST['txtName']))?$_REQUEST['txtName']:null;
			$input['bsic_desc']=(! empty($_REQUEST['txtDesc']))?$_REQUEST['txtDesc']:null;
			$input['bsic_order']=(! empty($_REQUEST['txtOrder']))?$_REQUEST['txtOrder']:0;
			$File=(! empty($_FILES['fileCategory']))?$_FILES['fileCategory']:null;
			$aResult=$this->Menu_category_model->add_category($input,$File);
			$aReturn['result']=$aResult['result'];
			$aReturn['message']=$aResult['message'];

			echo json_encode($aReturn);
		}
		
		public function api_get_category(){
			$aReturn=array('result'=>false,'message'=>null,'data'=>null);
			$id=(! empty($_REQUEST['id']))?$_REQUEST['id']:0;
			if ($id>0) {
				$aResult=$this->Menu_category_model->get_category($id);
				$aReturn['result']=$aResult['result'];
				$aReturn['message']=$aResult['message'];
				$aReturn['data']=$aResult['data'];
			}
			echo json_encode($aReturn);
		}

		public function api_delete_category(){
			$aReturn=array('result'=>false,'message'=>null,'data'=>null);
			$id=(! empty($_REQUEST['txtID']))?$_REQUEST['txtID']:0;
			if ($id>0) {
				$aResult=$this->Menu_category_model->delete_category($id);
				$aReturn['result']=$aResult['result'];
				$aReturn['message']=$aResult['message'];
				$aReturn['data']=$aResult['data'];
			}
			echo json_encode($aReturn);
		}

		public function api_restore_category(){
			$aReturn=array('result'=>false,'message'=>null,'data'=>null);
			$id=(! empty($_REQUEST['txtID']))?$_REQUEST['txtID']:0;
			if ($id>0) {
 				$aResult=$this->Menu_category_model->restore_category($id);
				$aReturn['result']=$aResult['result'];
				$aReturn['message']=$aResult['message'];
				$aReturn['data']=$aResult['data'];
			}
			echo json_encode($aReturn);
		}
		
		public function api_edit_category() {
			$aReturn=array('result'=>false,'message'=>null,'data'=>null);
			$input=null;
			$input['bsic_bssh_id']=(! empty($_REQUEST['txtShopID']))?$_REQUEST['txtShopID']:0;
			$input['bsic_id']=(! empty($_REQUEST['txtID']))?$_REQUEST['txtID']:0;
			if (! empty($_REQUEST['txtName'])) $input['bsic_name']=$_REQUEST['txtName'];
			if (! empty($_REQUEST['txtDesc'])) $input['bsic_desc']=$_REQUEST['txtDesc'];
			if (! empty($_REQUEST['txtOrder'])) $input['bsic_order']=$_REQUEST['txtOrder'];
			$File=(! empty($_FILES['fileCategory']))?$_FILES['fileCategory']:null;
//			echo "input"; print_r($input);
			$aResult=$this->Menu_category_model->edit_category($input,$File);
			$aReturn['result']=$aResult['result'];
			$aReturn['message']=$aResult['message'];

			echo json_encode($aReturn);
		}
		
		public function api_list_menu() {
			$aReturn=array('result'=>false,'message'=>null,'data'=>null,'index'=>null);
//			print_r($_REQUEST);
			$shopID=(! empty($_REQUEST['shopID']))?$_REQUEST['shopID']:0;
			$cateID=(! empty($_REQUEST['cateID']))?$_REQUEST['cateID']:0;
			$cPage=(! empty($_REQUEST['curr']))?$_REQUEST['curr']:1;
			$pPage=(! empty($_REQUEST['ppage']))?$_REQUEST['ppage']:10;
//			echo "input"; print_r($input);
			$aResult=$this->Menu_category_model->list_menu($shopID,$cateID,$cPage,$pPage);
			$aReturn['result']=$aResult['result'];
			$aReturn['message']=$aResult['message'];
			$aReturn['data']=$aResult['data'];
			$aReturn['index']=$aResult['index'];

			echo json_encode($aReturn);
		}
		
		public function api_get_menu(){
			$aReturn=array('result'=>false,'message'=>null,'data'=>null);
			$id=(! empty($_REQUEST['id']))?$_REQUEST['id']:0;
			if ($id>0) {
				$aResult=$this->Menu_category_model->get_menu($id);
				$aReturn['result']=$aResult['result'];
				$aReturn['message']=$aResult['message'];
				$aReturn['data']=$aResult['data'];
			}
			echo json_encode($aReturn);
		}
		
		public function api_add_menu() {
			$aReturn=array('result'=>false,'message'=>null,'data'=>null);
			$input=null;
			$input['bsih_bssh_id']=(! empty($_REQUEST['txtShopID']))?$_REQUEST['txtShopID']:0;
			$input['bsih_bsic_id']=(! empty($_REQUEST['txtCateID']))?$_REQUEST['txtCateID']:0;
			$input['bsih_name']=(! empty($_REQUEST['txtName']))?$_REQUEST['txtName']:null;
			$input['bsih_desc']=(! empty($_REQUEST['txtDesc']))?$_REQUEST['txtDesc']:null;
			$input['bsih_order']=(! empty($_REQUEST['txtOrder']))?$_REQUEST['txtOrder']:0;
			$input['bsih_price']=(! empty($_REQUEST['txtPrice']))?$_REQUEST['txtPrice']:0;
			$input['bsih_recommend']=(! empty($_REQUEST['chkRecommend']))?1:0;
			$input['bsih_online']=(! empty($_REQUEST['chkOnline']))?1:0;
			$File=(! empty($_FILES['fileMenu']))?$_FILES['fileMenu']:null;
			$aResult=$this->Menu_category_model->add_menu($input,$File);
			$aReturn['result']=$aResult['result'];
			$aReturn['message']=$aResult['message'];

			echo json_encode($aReturn);
		}
		
		public function api_edit_menu() {
			$aReturn=array('result'=>false,'message'=>null,'data'=>null);
			$input=null;
			$input['bsih_id']=(! empty($_REQUEST['txtMenuID']))?$_REQUEST['txtMenuID']:0;
			$input['bsih_name']=(! empty($_REQUEST['txtName']))?$_REQUEST['txtName']:null;
			$input['bsih_desc']=(! empty($_REQUEST['txtDesc']))?$_REQUEST['txtDesc']:null;
			$input['bsih_order']=(! empty($_REQUEST['txtOrder']))?$_REQUEST['txtOrder']:0;
			$input['bsih_price']=(! empty($_REQUEST['txtPrice']))?$_REQUEST['txtPrice']:0;
			$input['bsih_recommend']=(! empty($_REQUEST['chkRecommend']))?1:0;
			$input['bsih_online']=(! empty($_REQUEST['chkOnline']))?1:0;
			$File=(! empty($_FILES['fileMenu']))?$_FILES['fileMenu']:null;
			$aResult=$this->Menu_category_model->edit_menu($input);
			$aReturn['result']=$aResult['result'];
			$aReturn['message']=$aResult['message'];

			echo json_encode($aReturn);
		}
		
		public function api_delete_menu() {
			$aReturn=array('result'=>false,'message'=>null,'data'=>null);
			$input=null;
			$input['bsih_id']=(! empty($_REQUEST['txtMenuID']))?$_REQUEST['txtMenuID']:0;
			$aResult=$this->Menu_category_model->delete_menu($input['bsih_id']);
			$aReturn['result']=$aResult['result'];
			$aReturn['message']=$aResult['message'];

			echo json_encode($aReturn);
		}
		
		public function api_restore_menu() {
			$aReturn=array('result'=>false,'message'=>null,'data'=>null);
			$input=null;
			$input['bsih_id']=(! empty($_REQUEST['txtMenuID']))?$_REQUEST['txtMenuID']:0;
			$aResult=$this->Menu_category_model->restore_menu($input['bsih_id']);
			$aReturn['result']=$aResult['result'];
			$aReturn['message']=$aResult['message'];

			echo json_encode($aReturn);
		}
		
		
}
