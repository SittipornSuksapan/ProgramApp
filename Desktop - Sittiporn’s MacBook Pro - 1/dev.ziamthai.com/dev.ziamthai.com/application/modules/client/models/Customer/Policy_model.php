<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Policy_model extends CI_Model {

    private $apps_name = 'client';

    function __construct() {
        parent:: __construct();
    }
/**
 * function role_list
 * list role of this shop
 * @param type $shopID => 
 * @return	if success return array of information.
 *					if error/no information/no shop id return null.
 */
		public function policy_list() {
			
      $this->db->from('customer_policy');
			$this->db->order_by('head_order,policy_order,policy_name');
/*
			$sSQL=$this->db->get_compiled_select();
      return $sSQL;
*/
			$query = $this->db->get();
      $row = $query->row_array();
      if (!$row) {
          return null;
      }
      return $query->result_array();
 		}

/**
 * function role_get
 * get role by role id
 * @param type $ID
 * @return type
 */
		public function policy_get($ID=0) {
			
			if (empty($ID)) return null;

      $this->db->from('customer_policy');
      $this->db->where('id',$ID,false);
/*
			$sSQL=$this->db->get_compiled_select();
      return $sSQL;
*/
			$query = $this->db->get();
      $row = $query->row_array();
      if (!$row) {
          return null;
      }
      return $row;
 		}

		public function get_member($shopID=0,$memID=0) {
			$aReturn=array('result'=>false,'message'=>null,'data'=>null);
			if ($shopID==0 || $memID==0 ) {
				$aReturn['message']=array();
				if ($shopID==0) $aReturn['message'][]='Required Shop ID';
				if ($memID==0) $aReturn['message'][]='Required Member ID';
			} else {
				$this->db->from('member_header');
				$this->db->join('zzz_customer_member','zzz_customer_member.mem_id=zzz_member_header.memh_id');
				$this->db->where('zzz_customer_member.mem_id',$memID,false);
				$this->db->where('zzz_customer_member.shop_id',$shopID,false);

				$query=$this->db->get();
				$row=$query->row_array();
	//			echo print_r($result);
				if (! $row) {
					$aReturn['message']='Not Exist Member';
				} else {
					$aReturn['result']=true;
					$aReturn['data']=$row;
				}
			}
			return $aReturn;
		}
}