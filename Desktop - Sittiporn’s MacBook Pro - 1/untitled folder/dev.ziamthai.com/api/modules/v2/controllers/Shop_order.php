<?php

defined('BASEPATH') OR exit('No direct script access allowed');

Class Shop_order extends CI_Controller {

	private $mod_name, $access_user;
	
	public function __construct() {
		parent::__construct();

		$this->mod_name = $this->router->fetch_module();

		$this->load->model($this->mod_name . '/Api_model');

		$this->Api_model->valid_access();

		$this->access_user = $this->Api_model->valid_user();	
	}
	
	public function confirm() {
		$arrResult=array('result'=>false,'mesg'=>'');
		$ItemCount=isset($_REQUEST['item_count']) ? intval($_REQUEST['item_count']) : 0;
		$ShopID=isset($_REQUEST['shop']) ? intval($_REQUEST['shop']) : 0;
//		echo "<pre>"; print_r($this->access_user); echo "</pre>";

		$this->load->model($this->mod_name . '/shop/Order_model');

		if ($ItemCount > 0) {
			$TotalPrice=0.00;
			$arrResult['data']['item']=array();
			$sShopOrder=$this->Order_model->genDummyOrder($ShopID,$this->access_user);
			if (is_null($sShopOrder)) {
				$arrResult['mesg'][]=sprintf("Cannot Create New Order");
			} else {
				$iOrderID=$this->Order_model->getOrderID($sShopOrder);
				if (is_null($iOrderID)) {
					$arrResult['mesg'][]=sprintf("Cannot Find Order ID form Order Code %s",$sShopOrder);
				} else {
					$arrResult['data']['order_code']=$sShopOrder;
					$arrResult['data']['order_id']=$iOrderID;
					$arrResult['result']=true;

					for ($iCount=0; $iCount<$ItemCount; $iCount++) {
						$ItemID = isset($_REQUEST['item_id'][$iCount]) ? intval($_REQUEST['item_id'][$iCount]) : 0;
						$SizeID = isset($_REQUEST['item_size'][$iCount]) ? intval($_REQUEST['item_size'][$iCount]) : 0;
						$sOption = isset($_REQUEST['item_option'][$iCount]) ? $_REQUEST['item_option'][$iCount] : null;
						$sIns = isset($_REQUEST['item_instruction'][$iCount]) ? $_REQUEST['item_instruction'][$iCount] : null;
						$Qty = isset($_REQUEST['item_qty'][$iCount]) ? $_REQUEST['item_qty'][$iCount] : null;


				//		$Price=$this->Menu_model->get_item_price($ItemID,$SizeID);
						$Price=$this->Order_model->calc_item($ItemID,$SizeID,$sOption);
						$aData=$this->Order_model->getItemInfo($ItemID,$SizeID,$sOption);
						$arrResult['order'][]=$aData;
						if (! is_null($Price)) {
							$arrResult['data']['item'][$iCount]=array("price"=>sprintf("%0.2f",$Price));
						} else {
							$Price=0.00;
						}
						$TotalPrice+=($Price*$Qty);
						$arrResult['data']['item'][$iCount]['Info']=$this->Order_model->getMenuInfo($ItemID,$SizeID);
						$arrResult['data']['item'][$iCount]['Info']['price']=$Price;
						$arrResult['data']['item'][$iCount]['Info']['qty']=intval($Qty);
						$arrResult['data']['item'][$iCount]['Info']['total']=$Price*$Qty;
						
						$arrResult['data']['item'][$iCount]['Option']=$this->Order_model->genArrayOrder($arrResult['order']);
						$arrResult['data']['item'][$iCount]['Instruction']=$sIns;

//						echo sprintf("<br>[controller] aNewOrder <pre>"); print_r($aNewOrder); echo "</pre>";
//												
						
					}
					$TaxInfo=$this->Order_model->getShopTaxInfo($ShopID);
					if (! is_null($TaxInfo)) { $arrResult['data']['tax_rate']=$TaxInfo; }
					$arrResult['data']['sub_total']=$TotalPrice;
					if (! empty($arrResult['data']['tax_rate'])) {
						$arrResult['data']['tax_amount']=($TotalPrice*$arrResult['data']['tax_rate'])/100;
						$arrResult['data']['grand_total']=$TotalPrice*(100+$arrResult['data']['tax_rate'])/100;
					}

					$arrResult['data']['item']['result']=$this->Order_model->genOrderItem($iOrderID,$arrResult['data']['item']);
					if (! empty($this->Order_model->updateOrderInfo($iOrderID,$arrResult['data']))) {
						$arrResult['result']=TRUE;
					} else {
						$arrResult['mesg'][]="Cannot update order information".$this->db->last_query();
					}

					unset($arrResult['data']['item']);
					unset($arrResult['order']);

				}
			}
		}
 
// 		echo sprintf("\nItemPrice : %0.2f",$Price);
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
