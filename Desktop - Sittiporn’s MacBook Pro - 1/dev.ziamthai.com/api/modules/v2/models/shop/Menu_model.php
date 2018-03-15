<?php

Class Menu_model extends CI_Model {
	private $DEBUG=TRUE;

//	private $access_user;

	public function __construct() {
		parent::__construct();
	}

	public function get_item_default_price($ItemID) {
		if (empty($ItemID)) {
			return null;
		}
		$this->db->reset_query();
		$this->db->from('shop_item_size_default');
		$this->db->where('item_id', $ItemID);
		
		$query = $this->db->get();
		$data = $query->row_array();

		if (!$data) {
			return null;
		} 
		$size_id=$data['size_id'];

		$this->db->reset_query();
		$this->db->from('shop_item_size');
		$this->db->where('item_id', $ItemID);
		$this->db->where('id', $size_id);
		
		$query = $this->db->get();
		$data = $query->row_array();
		
		if (!$data) {
			return null;
		} 
		
		return $data['price'];
	}

	
	public function list_menu($shopID=0) {
		if (empty($shopID)) {
			return null;
		}
		$this->db->reset_query();
		$this->db->from('shop_menu');
		$this->db->where('shop_id', $shopID);
		
		$this->db->order_by('seq_num','ASC');
		
		$query = $this->db->get();
		$data = $query->result_array();

		if (!$data) {
			return null;
		}

		return $data;
	}

	public function list_section($menuID=0,$bOnline=1,$bActive=1) {
		if (empty($menuID)) {
			return null;
		}
		$this->db->reset_query();
		$this->db->from('shop_section');
		$this->db->where('menu_id', $menuID,TRUE);
		$this->db->where('active', $bActive,TRUE);
		$this->db->where('online', $bOnline,TRUE);
		
		$this->db->order_by('seq_num','ASC');
		
		$query = $this->db->get();
		$data = $query->result_array();

		if (!$data) {
			return null;
		}

		return $data;
	}
	
	public function list_item($sectionID=0) {
		if (empty($sectionID)) {
			return null;
		}
		$this->db->reset_query();
		$this->db->from('shop_item');
		$this->db->where('section_id', $sectionID);
		
		$this->db->order_by('seq_num','ASC');
		
		$query = $this->db->get();
		$data = $query->result_array();

		if (!$data) {
			return null;
		}

		return $data;
	}
	
	
	public function get_option($itemID=0) {
		if (empty($itemID)) {
			return null;
		}
		$this->db->reset_query();
		$this->db->from('item_option');
		$this->db->where('item_id', $itemID);
		$this->db->where('active', 1);
		$this->db->order_by('seq_num','ASC');
		
		$query = $this->db->get();
		$data = $query->result_array();

		if (!$data) {
			return null;
		}

		return $data;
	}

	

	public function get_size($itemID=0) {
		if (empty($itemID)) {
			return null;
		}
		$this->db->reset_query();
		$this->db->select('id,size,price');
		$this->db->from('shop_item_size');
		$this->db->where('item_id', $itemID);
		$this->db->order_by('seq_num','ASC');
		
		$query = $this->db->get();
		$data = $query->result_array();

		if (!$data) {
			return null;
		}

		return $data;
	}

	public function list_option_data($OptionID=0) {
		if (empty($OptionID)) {
			return null;
		}
		$this->db->reset_query();
		$this->db->from('item_option_data');
		$this->db->where('option_id', $OptionID);
		$this->db->order_by('seq_num','ASC');
		
		$query = $this->db->get();
		$data = $query->result_array();

		if (!$data) {
			return null;
		}

		return $data;
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
		if (count($arrOptions)>0) {
			foreach ($arrOptions as $aOption) {
				$iDefaultID=$this->get_default($aOption['id']);
				$arrDatas=$this->list_option_data($aOption['id']);
	//			echo sprintf("<br>option_id %d -> %d",$aData['id'],$iDefaultID);
				$arrData=null;
				if (count($arrDatas)>0) {
					foreach ($arrDatas as $aData) {
						$arrPrice=null;
						$arrPrices=$this->get_price($aData['id']);
						$arrData[]=array(	'id'=>$aData['id'],
													'name'=>$aData['name'],
													'details'=>$aData['detail'],
													'prices'=>$arrPrices,
							);
					}
				}
				$arrResult['options'][]=array('id'=>$aOption['id'],
											'name'=>$aOption['name'],
											'detail'=>$aOption['detail'],
											'type'=>$aOption['type'],
											'counter'=>count($arrDatas),
											'default'=>$iDefaultID,
											'datas'=>$arrData);
			}
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
		if (count($arrOptions) >0) {
			foreach ($arrOptions as $aOption) {
				$arrResult=NULL;
				$iDefaultID=$this->get_default($aOption['id']);
				$arrDatas=$this->list_option_data($aOption['id']);
	//			echo sprintf("<br>option_id %d -> %d",$aData['id'],$iDefaultID);
				if (count($arrDatas)>0) {
					foreach ($arrDatas as $aData) {
		//				$arrPrices=$this->Menu_model->get_price($aData['id']);
						$arrPrice=$this->get_option_price_by_size($aData['id'],$SizeID);
						$arrResult[]=array('id'=>$aData['id'],
													'name'=>$aData['name'],
													'details'=>$aData['detail'],
													'price'=>$arrPrice,
							);
					}
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
		if (count($arrResult['sizes']) > 0) {
			foreach ($arrResult['sizes'] as $aSize) {
				$arrResult['options'][]=array("id"=>$aSize['id'],
					'name'=>$aSize['size'],
					'data'=>$this->get_option_by_size($ItemID,$aSize['id']));
			}
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
		return $aReturn['price'];
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
				if (count($aOption)>0) {
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
		}
		return $aReturn;
	}
	
	
	public function myfunc($myPara) {
		$aReturn=null;
		return $aReturn;
	}
	
}
