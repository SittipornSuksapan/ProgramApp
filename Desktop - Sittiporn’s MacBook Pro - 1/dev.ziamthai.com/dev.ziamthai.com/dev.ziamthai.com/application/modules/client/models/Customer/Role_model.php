<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Role_model extends CI_Model {

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
		public function role_list($shopID=0) {
			
			if (empty($shopID)) return null;

      $this->db->from('customer_role');
      $this->db->where('shop_id',$shopID,false);
			$this->db->order_by('active');
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
 * @param type $roleID
 * @return type
 */
		public function role_get($roleID=0) {
			
			if (empty($roleID)) return null;

      $this->db->from('customer_role');
      $this->db->where('id',$roleID,false);
			$this->db->order_by('active');
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

		public function role_shop_list($shopID=0) {
			
			if (empty($shopID)) return null;

      $this->db->from('customer_role');
      $this->db->where('shop_id',$shopID,false);
			$this->db->order_by('active','DESC');
			$this->db->order_by('name');
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


		public function role_level($shopID=0,$memID=0) {
			$aReturn=99;
			if (! empty($shopID) &&  ! empty($memID)) {

				$this->db->from('customer_member');
				$this->db->where('shop_id',$shopID);
				$this->db->where('mem_id',$memID);
				$query = $this->db->get();
				$row = $query->row_array();
				if (!empty($row)) {
					$aReturn=$row['level'];
				}
			}
			return $aReturn;
		}
		
		public function role_policy_list($shopID=0,$memID=0) {
			$aReturn=array('head'=>array(),'policy'=>array(),'policy_id'=>array(),'policy_name'=>array(),'level'=>99);
			if (empty($shopID) || empty($memID)) return $aReturn;

			$this->db->from('customer_role_policy');
      $this->db->join('customer_policy','zzz_customer_role_policy.policy_id=zzz_customer_policy.id');
			$this->db->where('zzz_customer_role_policy.mem_id',$memID,false);
			$this->db->where('zzz_customer_role_policy.shop_id',$shopID,false);
/*
			$sSQL=$this->db->get_compiled_select();
      return $sSQL;
*/
			$query = $this->db->get();
			$aValue=$query->result_array();
      if ($query->num_rows()>0) {
				$aReturn['level']=5;
				foreach($aValue as $data) {
					if (! in_array($data['head_name'], $aReturn['head'])) 
						$aReturn['head'][]=$data['head_name'];
					$aReturn['policy'][]=array('id'=>intval($data['id']),
																		'policy_name'=>$data['policy_name'],
																		'active'=>intval($data['active']),
																		'value'=>intval($data['pread']),
																		'pcreate'=>intval($data['pcreate']),
																		'pread'=>intval($data['pread']),
																		'pupdate'=>intval($data['pupdate']),
																		'pdelete'=>intval($data['pdelete']),
					);
					$aReturn['policy_id'][]=intval($data['id']);
					$aReturn['policy_name'][]=$data['policy_name'];
				}
			}
			$aReturn['level']=$this->role_level($shopID,$memID);
			
			return $aReturn;
 		}
}