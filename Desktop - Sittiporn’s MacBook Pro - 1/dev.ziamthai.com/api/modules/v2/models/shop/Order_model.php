<?php

Class Order_model extends CI_Model {
	private $DEBUG=FALSE;

	private $access_user;

	public function __construct() {
		parent::__construct();
	}


	public function get_price($DataID=0) {
		if (empty($DataID)) {
			return null;
		}
		$this->db->reset_query();
		$this->db->select('id,size_id,price');
		$this->db->from('item_option_price');
		$this->db->where('data_id', $DataID);
		
		$query = $this->db->get();
		$data = $query->result_array();

		if (!$data) {
			return null;
		}

		return $data;
	}
	
	public function get_option_price_by_size($OptionID=0,$SizeID=0) {
		if (empty($OptionID) || empty($SizeID)) {
			return '0.00';
		}
		$this->db->reset_query();
		$this->db->select('id,size_id,price');
		$this->db->from('item_option_price');
		$this->db->where('data_id', $OptionID);
		$this->db->where('size_id', $SizeID);
		
		$query = $this->db->get();
		$data = $query->row_array();

//		echo "\n".$this->db->last_query();
		if (!$data) {
			return "0.00";
		} else {
			return $data['price'];
		}
	}

	public function get_default($OptionID=0) {
		if (empty($OptionID)) {
			return null;
		}
		$this->db->reset_query();
		$this->db->from('item_option_default');
		$this->db->where('option_id', $OptionID);
		
		$query = $this->db->get();
		$data = $query->row_array();

		if (!$data) {
			return null;
		}

		return $data['default_id'];
	}
	
	public function get_section($ID=0) {
		if (empty($ID)) {
			return null;
		}
		$this->db->reset_query();
		$this->db->from('shop_section');
		$this->db->where('id', $ID);
		
		$query = $this->db->get();
		$data = $query->result_array();

		if (!$data) {
			return null;
		}

		return $data;
	}
	
	public function get_item($ItemID=0) {
		if (empty($ItemID)) {
			return null;
		}
		$arrResult=null;
		$this->db->reset_query();
		$this->db->select('id,name,detail');
		$this->db->from('shop_item');
		$this->db->where('id', $ItemID);
		
		$query = $this->db->get();
		$arrResult = $query->row_array();

		
		$arrResult['sizes']=$this->get_size($ItemID);
		$arrResult['default']=$this->get_default_size($ItemID);
		$arrOptions=$this->get_option($ItemID);
		foreach ($arrOptions as $aOption) {
			$iDefaultID=$this->get_default($aOption['id']);
			$arrDatas=$this->list_option_data($aOption['id']);
//			echo sprintf("<br>option_id %d -> %d",$aData['id'],$iDefaultID);
			$arrData=null;
			foreach ($arrDatas as $aData) {
				$arrPrice=null;
				$arrPrices=$this->get_price($aData['id']);
				$arrData[]=array(	'id'=>$aData['id'],
											'name'=>$aData['name'],
											'details'=>$aData['detail'],
											'prices'=>$arrPrices,
					);
			}
			$arrResult['options'][]=array('id'=>$aOption['id'],
										'name'=>$aOption['name'],
										'detail'=>$aOption['detail'],
										'type'=>$aOption['type'],
										'counter'=>count($arrDatas),
										'default'=>$iDefaultID,
										'datas'=>$arrData);
		}
		
		return $arrResult;
	}
	
	public function get_default_size($ItemID=0) {
		if (empty($ItemID)) {
			return 0;
		}
		
		$this->db->reset_query();
		$this->db->from('shop_item_size_default');
		$this->db->where('item_id', $ItemID);

		$query = $this->db->get();
		$data = $query->row_array();
		
		if (!$data) {
			return 0;
		} else {
			return $data['size_id'];
		}
		
	}
	
	public function get_option_by_size($ItemID=0,$SizeID=0) {
		$aReturn=null;
		
		if (empty($ItemID)) {
			return $aReturn;
		}

		$arrOptions=$this->get_option($ItemID);
		foreach ($arrOptions as $aOption) {
			$arrResult=NULL;
			$iDefaultID=$this->get_default($aOption['id']);
			$arrDatas=$this->list_option_data($aOption['id']);
//			echo sprintf("<br>option_id %d -> %d",$aData['id'],$iDefaultID);
			foreach ($arrDatas as $aData) {
//				$arrPrices=$this->Menu_model->get_price($aData['id']);
				$arrPrice=$this->get_option_price_by_size($aData['id'],$SizeID);
				$arrResult[]=array('id'=>$aData['id'],
											'name'=>$aData['name'],
											'details'=>$aData['detail'],
											'price'=>$arrPrice,
					);
			}
			$aReturn['result']=true;
			$aReturn['data'][]=array('id'=>$aOption['id'],
										'name'=>$aOption['name'],
										'detail'=>$aOption['detail'],
										'type'=>$aOption['type'],
										'counter'=>sprintf("%d",count($arrDatas)),
										'default'=>$iDefaultID,
										'datas'=>$arrResult);
		}
		return $aReturn['data'];
	}
	
	public function get_item_by_size($ItemID=0,$SizeID=0) {
		$aReturn=null;
		if (empty($ItemID)) {
			return $aReturn;
		}
		$iDefault_Size=$this->get_default_size($ItemID);
		
		
		$this->db->reset_query();
		$this->db->select('id,name,detail');
		$this->db->from('shop_item');
		$this->db->where('id', $ItemID);
		
		$query = $this->db->get();
		$arrResult = $query->row_array();

		$arrResult['sizes']=$this->get_size($ItemID);
		$arrResult['default']=$iDefault_Size;
		if (empty($SizeID)) {
			$SizeID=$iDefault_Size;
		}
		$arrResult['options']=$this->get_option_by_size($ItemID,$SizeID);
		$aReturn=$arrResult;
		
		return $aReturn;
	}
	
	public function get_item_all_size($ItemID=0) {
		$aReturn=null;
		if (empty($ItemID)) {
			return $aReturn;
		}
		$iDefault_Size=$this->get_default_size($ItemID);
		
		
		$this->db->reset_query();
		$this->db->select('id,name,detail');
		$this->db->from('shop_item');
		$this->db->where('id', $ItemID);
		
		$query = $this->db->get();
		$arrResult = $query->row_array();

		$arrResult['sizes']=$this->get_size($ItemID);
		$arrResult['default']=$iDefault_Size;
		if (empty($SizeID)) {
			$SizeID=$iDefault_Size;
		}
		foreach ($arrResult['sizes'] as $aSize) {
			$arrResult['options'][]=array("id"=>$aSize['id'],
				'name'=>$aSize['size'],
				'data'=>$this->get_option_by_size($ItemID,$aSize['id']));
		}
		$aReturn=$arrResult;
		
		return $aReturn;
	}
	
	public function get_item_price($ItemID=0,$SizeID=0) {
		$aReturn=null;
		if (empty($ItemID) || empty($SizeID)) {
			return $aReturn;
		}
		$this->db->reset_query();
		$this->db->from('shop_item_size');
		$this->db->where('id', $SizeID);
		$this->db->where('item_id', $ItemID);
		
		$query = $this->db->get();
		$data = $query->row_array();
		if ($this->DEBUG) echo sprintf("\n[get_item_price]\n%s",$this->db->last_query());
		if ($data) {
			$aReturn=$data['price'];
		}
		return $aReturn;
	}
	
	public function get_item_option_price($SizeID=0,$OptionID=0) {
		$aReturn=null;
		if (empty($SizeID)) {
			return $aReturn;
		}
		$this->db->reset_query();
		$this->db->select('price');
		$this->db->from('item_option_price');
		$this->db->where('size_id', $SizeID);
		$this->db->where('data_id', $OptionID);
		
		$query = $this->db->get();
		$data = $query->row_array();
		if ($this->DEBUG) echo sprintf("\n[get_item_option_price]\n%s",$this->db->last_query());
		if ($data) {
			$aReturn=$data;
		}
		return $aReturn;
	}
	
	public function calc_item($ItemID=0,$SizeID=0,$sOption=null) {
		$aReturn=null;
		if ($this->DEBUG)  echo sprintf("\n[calc_item] ItemID: %d",$ItemID);
		if ($this->DEBUG)  echo sprintf("\n[calc_item] SizeID: %d",$SizeID);
		if ($this->DEBUG)  echo sprintf("\n[calc_item] sOption: %s",$sOption);
		if (empty($ItemID) || empty($SizeID)) {
			return $aReturn;
		}
		$ItemPrice=$this->get_item_price($ItemID, $SizeID);
		if (is_null($ItemPrice)) {
			return $aReturn;
		} else {
			if ($this->DEBUG)  echo sprintf("\nItemPrice: %0.2f",$ItemPrice);
			$aReturn= floatval($ItemPrice);  // set item price
			if (! is_null($sOption)) {
				$aOption= explode(",", $sOption); // split options input
				foreach($aOption as $OptionID) {
					if (! empty($OptionID)) {
						$OptionPrice=$this->get_item_option_price($SizeID, $OptionID);
						if (! is_null($OptionPrice)) {
							if ($this->DEBUG)  echo sprintf("\nOption [%d] Item: %0.2f",$OptionID,$OptionPrice);
							$aReturn+= floatval($OptionPrice);
						} else {
							if ($this->DEBUG)  echo sprintf("\nOption [%d] Item: No Founded.",$OptionID);
						}
					}
				}
			}
		}
		return $aReturn;
	}
	
	
	
	public function checkLastOrderID($shopID=0) {
		$aReturn=null;
		if (empty($shopID)) {
			return $aReturn;
		}
		$aInput=NULL;
		$sDate=date('Y-m-d');
		$this->db->reset_query();
		$this->db->from('order_counter');
		$this->db->where('shop_id', $shopID);
		$this->db->where('odate', $sDate);
		
		$query = $this->db->get();
		$data = $query->row_array();
		
		if ($data) {
			$this->db->set('counter', 'counter+1', FALSE);
			$this->db->where('shop_id', $shopID);
			$this->db->where('odate', $sDate);
			$this->db->update('order_counter');
			if ($this->db->affected_rows() ==1)  {
				$aReturn=$data['counter']+1;
			}
		} else {
			$this->db->reset_query();
			$this->db->set('odate',$sDate);
			$this->db->set('shop_id',$shopID,true);
			$this->db->set('counter',1,true);
			$this->db->insert('order_counter');
			if ($this->db->affected_rows() ==1)  {
				$aReturn=1;
			}
		}
		
		return $aReturn;
	}
	
	public function genDummyOrder($shopID=0,$aUser=NULL) {
		$aReturn=null;
		if (empty($aUser) ) {
			return $aReturn;
		}
		$LastID=$this->checkLastOrderID($shopID);
		if (! empty($LastID)) {
			$sCode=sprintf("%04d-%s%04d",$shopID,date('Ymd'),$LastID);
			$this->db->reset_query();
			$this->db->set('shop_id',$shopID,true);
			$this->db->set('cust_id',$aUser['id'],true);
			$this->db->set('code',$sCode);
			$this->db->set('odate',date('Y-m-d h:i:s'));
			$this->db->set('cuser',$aUser['name']);
			$this->db->set('cmail',"dummy@ziamthai.com");
			$this->db->set('ctel','000-0000-0000');
			$query=$this->db->insert('order_head');
			if ($this->db->affected_rows() ==1)  {
				$aReturn=$sCode;
			} else {
				echo sprintf("\n Cannot create new order  '%s' ",$this->db->last_query);
			}
		}
		return $aReturn;
	}
	
	public function getOrderID($sCode) {
		$aReturn=null;
		if (! empty($sCode)) {
			$this->db->reset_query();
			$this->db->from('order_head');
			$this->db->where('code', $sCode);
			$query = $this->db->get();
			$data = $query->row_array();
			if (! $data) {
				echo sprintf("\n Cannot get id from '%s'",$this->db->last_query());
			} else {
				$aReturn=$data['id'];
			}
		}
		return $aReturn;
	}
	
	public function getItemInfo($ItemID=0,$SizeID=0,$sOption=NULL) {
		$aReturn=null;
		if (! empty($ItemID)) {
			if (! empty($SizeID)) {
				$aReturn['item_name']='Item Name';
				$aReturn['item_size']='Default';
				if (is_null($sOption)) {
					$aReturn['option']=NULL;
				} else {
					$aOptions=explode(",",$sOption);
//					echo "<br>aOptions<pre>"; print_r($aOptions); echo "</pre>";
					foreach ($aOptions as $aOption) {
						if ($aOption > 0) {
							$aData=$this->getOptionInfo($aOption);
//							echo sprintf("<br>aData %d<pre>",$aOption); print_r($aData); echo "</pre>";
							$aReturn['option'][]=$aData;
						}
					}
				}
			}
		}
		return $aReturn;
	}


	public function getOptionInfo($OptionID) {
		$aReturn=null;
		if (!  empty($OptionID)) {
			$this->db->reset_query();
			$this->db->select('o.id as oid, o.name as oname,d.id as did, d.name as dname');
			$this->db->from('item_option o');
			$this->db->join('item_option_data d',"d.option_id = o.id",'left');
			$this->db->where('d.id', $OptionID,TRUE);
			$query = $this->db->get();
			$aData = $query->row_array();
			if ($aData) {
//				echo sprintf("<br>[getOptionInfo] aData %d<pre>",$OptionID); print_r($aData); echo "</pre>";
				$aReturn['data']=$aData;
				$aReturn['sql']=$this->db->last_query();
			}
			
		}
		return $aReturn;
	}

	public function genArrayOrder($aDatas=NULL) {
		$aReturn=null;
		$aOrders=null;
		if (! is_null($aDatas)) {
			foreach ($aDatas as $aInfo) {
//				echo sprintf("<br>[genArrayOrder] aInfo <pre>"); print_r($aInfo); echo "</pre>";
				$iOption=0;
				foreach ($aInfo['option'] as $aOption) {
					$aOrders[$aOption['data']['oid']]['Head']=$aOption['data']['oname'];

					if (! isset($aOrders[$aOption['data']['oid']]['Option'])) {
						$aOrders[$aOption['data']['oid']]['Option']=''; 
					} else {
						$aOrders[$aOption['data']['oid']]['Option'].=", "; 
					}

					$aOrders[$aOption['data']['oid']]['Option'].=sprintf("%s",$aOption['data']['dname']);
				}
			}
			
			foreach ($aOrders as $aOrder) {
				$aReturn[]=array("Head"=>$aOrder['Head'],"Option"=>$aOrder['Option']);
			}
		}
		return $aReturn;
	}

	public function getMenuInfo($ItemID=0,$SizeID=0) {
		$aReturn=null;
		if (! empty($ItemID)) {
			if (! empty($SizeID)) {
				$aReturn['id']=$ItemID;
				$aReturn['name']='Item Name';
				$aReturn['size']='Standard';
				$this->db->reset_query();
				$this->db->from('shop_item');
				$this->db->where('id',$ItemID,TRUE);
				$query = $this->db->get();
				$aData = $query->row_array();
				if ( is_array($aData)) {
					$aReturn['name']=$aData['name'];
					if (! empty($aData['multisize'])) {
						$this->db->reset_query();
						$this->db->from('shop_item_size');
						$this->db->where('id',$SizeID,TRUE);
						$this->db->where('item_id',$ItemID,TRUE);
						$query = $this->db->get();
						$aData = $query->row_array();
						if ( is_array($aData)) {
							$aReturn['size']=$aData['size'];
						}
					}
				}
				
			}
		}
		return $aReturn;
	}
	
	
	public function genOrderItem($OrderID=0,$aItems=NULL) {
		$aReturn=array('result'=>FALSE);
		$iError=0;
		if (! empty($OrderID)) {
			if (count($aItems) >0)  {
				foreach ($aItems as $aItem) {
//					echo "<br>aItem<pre>"; print_r($aItem); echo "</pre>";
					$sID=$aItem['Info']['id'];
					$sDetail=sprintf("%s (size %s)",$aItem['Info']['name'],$aItem['Info']['size']);
					$iQty=$aItem['Info']['qty'];
					$sPrice=$aItem['Info']['price'];
					$sTotal=$aItem['Info']['total'];
					$this->db->reset_query();
					$this->db->set('order_id',$OrderID,TRUE);
					$this->db->set('item_id',$sID,TRUE);
					$this->db->set('type',0,TRUE);
					$this->db->set('detail',$sDetail);
					$this->db->set('qty',$iQty,TRUE);
					$this->db->set('price',$sPrice,TRUE);
					$this->db->set('total',$sTotal,TRUE);
					$query=$this->db->insert('order_line');
					if ($this->db->affected_rows() ==1)  {
						if (count($aItem['Option'])) {
							foreach ($aItem['Option'] as $aOption) {
//								echo "<br>aOption<pre>"; print_r($aOption); echo "</pre>";
								$this->db->reset_query();
								$this->db->set('order_id',$OrderID,TRUE);
								$this->db->set('item_id',$sID,TRUE);
								$this->db->set('type',1,TRUE);
								$this->db->set('detail',sprintf("%s : %s",$aOption['Head'],$aOption['Option']));
								$query=$this->db->insert('order_line');
								if ($this->db->affected_rows() <> 1)  {
									$iError++;
									$aReturn['err'][]=sprintf("\n Cannot create order for item option '%s' ",$this->db->last_query);
								}
							}
						}
						if (! empty($aItem['Instruction'])) {
							$this->db->reset_query();
							$this->db->set('order_id',$OrderID,TRUE);
							$this->db->set('item_id',$sID,TRUE);
							$this->db->set('type',2,TRUE);
							$this->db->set('detail',$aItem['Instruction']);
							$query=$this->db->insert('order_line');
							if ($this->db->affected_rows() <> 1)  {
								$iError++;
								$aReturn['err'][]=sprintf("\n Cannot create order for item instructionl '%s' ",$this->db->last_query);
							}
						}
					} else {
						$iError++;
						$aReturn['err'][]=sprintf("\n Cannot create order item '%s' ",$this->db->last_query);
					}
				}
				if (empty($iError)) {
					$aReturn['Result']=TRUE;
				}
			}
		}
		return $aReturn;
	}
	
	public function getShopTaxInfo($ShopID=0) {
		$aReturn=null;
		if (! empty($ShopID)) {
			$this->db->reset_query();
			$this->db->from('business_shop');
			$this->db->where('bssh_id',$ShopID,TRUE);
			$query = $this->db->get();
			$aData = $query->row_array();
			if ( is_array($aData)) {
				$aReturn=floatval($aData['tax_rate']);
			}
		}
		return $aReturn;
	}
	
	public function updateOrderInfo($OrderID=0,$aRecord=NULL) {
		$aReturn=null;
		if (! empty($OrderID)) {
			$this->db->reset_query();
			$this->db->set('sub_total',$aRecord['sub_total'],TRUE);
			$this->db->set('tax_rate',$aRecord['tax_rate'],TRUE);
			$this->db->set('tax_amount',$aRecord['tax_amount'],TRUE);
			$this->db->set('grand_total',$aRecord['grand_total'],TRUE);
			$this->db->where('id',$OrderID,TRUE);
			$this->db->update('order_head');
			$aReturn=$this->db->affected_rows();
		}
		return $aReturn;
	}

	public function myfunc($myPara) {
		$aReturn=null;
		return $aReturn;
	}
	
}
