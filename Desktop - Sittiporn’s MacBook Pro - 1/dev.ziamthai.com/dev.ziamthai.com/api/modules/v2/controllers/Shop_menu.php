<?php

defined('BASEPATH') OR exit('No direct script access allowed');

Class Shop_menu extends CI_Controller {

	private $mod_name, $access_user;
	
	public function __construct() {
		parent::__construct();

		$this->mod_name = $this->router->fetch_module();

		$this->load->model($this->mod_name . '/Api_model');

		$this->Api_model->valid_access();

		$this->access_user = $this->Api_model->valid_user();	
	}
		
	public function list_head() {
		$arrReturn=array('result'=>false,'mesg'=>'');
		$shop_id = isset($_REQUEST['shop']) ? intval($_REQUEST['shop']) : 0;
		

		$this->load->model($this->mod_name . '/shop/Menu_model');
		$arrReturn['data']=$this->Menu_model->list_menu($shop_id);
		
		echo json_encode($arrReturn);
	}

	public function list_category() {
		$arrReturn=array('result'=>false,'mesg'=>'');
		$menu_id = isset($_REQUEST['menu_id']) ? intval($_REQUEST['menu_id']) : 0;
		$shop_id = isset($_REQUEST['shop']) ? intval($_REQUEST['shop']) : 0;
		
		$this->load->model($this->mod_name . '/shop/Menu_model');

		if (empty($menu_id)) {
//			echo "<br>menu_id empty";
			$aMenu=$this->Menu_model->list_menu($shop_id);
//			print_r($aMenu);
			$menu_id=$aMenu[0]['id'];
		}
		$aSection=$this->Menu_model->list_section($menu_id);
		$arrDatas=null;
		if (count($aSection) > 0) {
			$arrReturn['result']=true;
			foreach($aSection as $aData) {
				$aMenu=$this->Menu_model->list_item($aData['id']);
				$aData['count']=count($aMenu);
				$aDatas[]=$aData;
			}
		}
		$arrReturn['data']=$aDatas;
		
		echo json_encode($arrReturn);
	}

	public function list_menu() {
		$arrReturn=array('result'=>false,'mesg'=>'');
		$section_id = isset($_REQUEST['category_id']) ? intval($_REQUEST['category_id']) : 0;

		$this->load->model($this->mod_name . '/shop/Menu_model');
		$arrReturn['data']=$this->Menu_model->list_item($section_id);
		$arrData=null;
		if (count($arrReturn['data'])>0) {
			$arrReturn['result']=true;
			foreach ($arrReturn['data'] as $aItem) {
//				$aSize=$this->Menu_model->get_size($aItem['id']);
//				$sPrice=(count($aSize)>0)?$aSize[0]['price']:"0.00";
				$DefaultPrice=$this->Menu_model->get_item_default_price($aItem['id']);
				if (is_null($DefaultPrice)) $DefaultPrice=" - ";
				$arrData[]=array(	'id' => $aItem['id'],
											'name'=>$aItem['name'],
											'detail'=>$aItem['detail'],
											'img_thumb'=>site_url('uploads/item_photo/thumb/' . $aItem['id']),
											'img_full'=>site_url('uploads/item_photo/large/' . $aItem['id']),
											'multisize'=>$aItem['multisize'],
											'online'=>$aItem['online'],
											'price'=>$DefaultPrice);
			}
			$arrReturn['data']=$arrData;
		}
		
		echo json_encode($arrReturn);
	}

	public function get_option() {
		$arrResult=array('result'=>false,'mesg'=>'');
		$item_id = isset($_REQUEST['item_id']) ? intval($_REQUEST['item_id']) : 0;
		$size_id = isset($_REQUEST['size_id']) ? intval($_REQUEST['size_id']) : 0;
		
		if (empty($item_id) || empty($size_id)) {
			echo json_encode($arrResult);
			exit;
		}

		$this->load->model($this->mod_name . '/shop/Menu_model');
		$arrOptions=$this->Menu_model->get_option($item_id);
		foreach ($arrOptions as $aOption) {
			$iDefaultID=$this->Menu_model->get_default($aOption['id']);
			$arrDatas=$this->Menu_model->list_option_data($aOption['id']);
//			echo sprintf("<br>option_id %d -> %d",$aData['id'],$iDefaultID);
			$arrData=null;
			foreach ($arrDatas as $aData) {
//				$arrPrices=$this->Menu_model->get_price($aData['id']);
				$arrPrice=$this->Menu_model->get_option_price_by_size($aData['id'],$size_id);
				$arrData[]=array(	'id'=>$aData['id'],
											'name'=>$aData['name'],
											'details'=>$aData['detail'],
											'price'=>$arrPrice,
					);
			}
			$arrResult['result']=true;
			$arrResult['data'][]=array('id'=>$aOption['id'],
										'name'=>$aOption['name'],
										'detail'=>$aOption['detail'],
										'type'=>$aOption['type'],
										'counter'=>count($arrDatas),
										'default'=>$iDefaultID,
										'datas'=>$arrData);
		}
		
		echo json_encode($arrResult);
	}
	
	public function get_menu() {
		$arrResult=array('result'=>false,'mesg'=>'');
		$item_id = isset($_REQUEST['item_id']) ? intval($_REQUEST['item_id']) : 0;
		
		$this->load->model($this->mod_name . '/shop/Menu_model');
		$arrResult['data']=$this->Menu_model->get_item($item_id);
		if (! is_null($arrResult['data'])) { 
			$arrResult['result']=true;
			$arrResult['data']['img_thumb']=site_url('uploads/item_photo/thumb/' . $item_id);
			$arrResult['data']['img_full']=site_url('uploads/item_photo/large/' . $item_id);
		}
		echo json_encode($arrResult);
	}
	
	public function get_menu_by_size() {
		$arrResult=array('result'=>false,'mesg'=>'');
		$item_id = isset($_REQUEST['item_id']) ? intval($_REQUEST['item_id']) : 0;
		$size_id = isset($_REQUEST['size_id']) ? intval($_REQUEST['size_id']) : 0;
		
		$this->load->model($this->mod_name . '/shop/Menu_model');
		$arrResult['data']=$this->Menu_model->get_item_by_size($item_id,$size_id);
		if (! is_null($arrResult['data'])) { 
			$arrResult['result']=true;
			$arrResult['data']['img_thumb']=site_url('uploads/item_photo/thumb/' . $item_id);
			$arrResult['data']['img_full']=site_url('uploads/item_photo/large/' . $item_id);
		}
//		echo json_encode($this->Menu_model->get_option_by_size($item_id,$size_id));		
//		$arrResult['data']['options']=$this->Menu_model->get_option_by_size($item_id,$size_id);
		echo json_encode($arrResult);
	}
	
	public function get_menu_all_size() {
		$arrResult=array('result'=>false,'mesg'=>'');
		$item_id = isset($_REQUEST['item_id']) ? intval($_REQUEST['item_id']) : 0;
		
		$this->load->model($this->mod_name . '/shop/Menu_model');
		$arrResult['data']=$this->Menu_model->get_item_all_size($item_id);
		if (! is_null($arrResult['data'])) { 
			$arrResult['result']=true;
			$arrResult['data']['img_thumb']=site_url('uploads/item_photo/thumb/' . $item_id);
			$arrResult['data']['img_full']=site_url('uploads/item_photo/large/' . $item_id);
		}
//		echo json_encode($this->Menu_model->get_option_by_size($item_id,$size_id));		
//		$arrResult['data']['options']=$this->Menu_model->get_option_by_size($item_id,$size_id);
		echo json_encode($arrResult);
		
	}
	
	public function confirm() {
		$arrResult=array('result'=>false,'mesg'=>'');
		$ItemCount=isset($_REQUEST['item_count']) ? intval($_REQUEST['item_count']) : 0;

		if ($ItemCount > 0) {
			$TotalPrice=0.00;
			$arrResult['item']=array();
			for ($iCount=0; $iCount<$ItemCount; $iCount++) {
				$ItemID = isset($_REQUEST['item_id'][$iCount]) ? intval($_REQUEST['item_id'][$iCount]) : 0;
				$SizeID = isset($_REQUEST['item_size'][$iCount]) ? intval($_REQUEST['item_size'][$iCount]) : 0;
				$sOption = isset($_REQUEST['item_option'][$iCount]) ? $_REQUEST['item_option'][$iCount] : null;
				$Qty = isset($_REQUEST['item_qty'][$iCount]) ? $_REQUEST['item_qty'][$iCount] : null;


				$this->load->model($this->mod_name . '/shop/Menu_model');
		//		$Price=$this->Menu_model->get_item_price($ItemID,$SizeID);
				$Price=$this->Menu_model->calc_item($ItemID,$SizeID,$sOption);
				if (! is_null($Price)) {
					$arrResult['item'][$iCount]=array("price"=>sprintf("%0.2f",$Price));
				} else {
					$Price=0.00;
				}
				$TotalPrice+=($Price*$Qty);
			}
			$arrResult['result']=true;
			$arrResult['total']=sprintf("%0.2f",$TotalPrice);
		}
//		echo sprintf("\nItemPrice : %0.2f",$Price);
		echo json_encode($arrResult);
	}
	
	public function save() {
		$arrResult=array('result'=>false,'mesg'=>'');
		echo json_encode($arrResult);
	}


	public function myfunc() {
		$arrResult=array('result'=>false,'mesg'=>'');
		echo json_encode($arrResult);
	}
}
