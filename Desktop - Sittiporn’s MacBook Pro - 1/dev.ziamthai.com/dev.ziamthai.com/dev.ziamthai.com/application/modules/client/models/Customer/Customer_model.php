<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Customer_model extends CI_Model {

    private $apps_name = 'client';

    function __construct() {
        parent:: __construct();
    }
/**
 * function customer_member_view
 * list customer member information by member id.
 * @param type $id
 * @return	if success return array of information.
 *					if error return null.
 */
		public function customer_member_view($Member_ID=0) {
			if (empty($Member_ID)) return null;
      
			$this->db->select('id,level,memh_id,memh_display, memh_pictureUrl');
			$this->db->select('memh_firstname,memh_lastname');
      $this->db->from('customer_member');
      $this->db->join('member_header','zzz_member_header.memh_id=mem_id');
      $this->db->where('mem_id', $Member_ID,false);
      $this->db->where('memh_activated', 1,false);
      $this->db->order_by('level','DESC');
			$this->db->order_by('memh_display');

/*			
			$sSQL=$this->db->get_compiled_select();
      return $sSQL;
*/
			$query = $this->db->get();
      $row = $query->row_array();

			if (!$row) return null;

			return $row;
		}
/**
 * function customer_member_list
 * list customer member by shop id.
 * @param type $ShopID
 * @return	if success return array of information.
 *					if error/no information return null.
 */		
		public function customer_member_list($ShopID=0) {
			if (empty($ShopID)) return null;
			
			$this->db->select('id,level,memh_id,memh_display, memh_pictureUrl');
			$this->db->select('memh_firstname,memh_lastname');
      $this->db->from('customer_member');
      $this->db->join('member_header','zzz_member_header.memh_id=mem_id');
      $this->db->where('shop_id', $ShopID,false);
      $this->db->where('memh_activated', 1,false);
      $this->db->order_by('level');
			$this->db->order_by('memh_display');
/*
			$sSQL=$this->db->get_compiled_select();
      return $sSQL;
*/
			$query = $this->db->get();
      $row = $query->row_array();
      
			if (!$row) return null;
			
      return $query->result_array();
		}
/**
 * function customer_zmember_list
 * list ziamthai member from name.
 * @param type $name
  * @return	if success return array of information.
 *					if error/no find information/no input name return null.
*/
		public function customer_zmember_list($name=null) {
			
			if (empty($name)) return null;

      $this->db->from('member_header');
			$this->db->group_start();
      $this->db->where('memh_activated', 1,false);
			if (!empty($name)) {
				$this->db->group_start();
				$this->db->like('memh_display',$name);
				$this->db->or_like('memh_firstname',$name);
				$this->db->group_end();
			}
			$this->db->group_end();
			$this->db->order_by('memh_display');
/*
			$sSQL=$this->db->get_compiled_select();
      return $sSQL;
*/
			$query = $this->db->get();
      $row = $query->row_array();

			if (!$row) return null;
			
      return $query->result_array();
 		}
		
		public function customer_info_get($ShopID=0){
			if (empty($ShopID)) return null;
		
      $this->db->from('customer_info');
			$this->db->where('shop_id',$ShopID,false);

			$query = $this->db->get();
      $row = $query->row_array();

			if (!$row) return null;
			
      return $query->result_array();
		}
		
		public function customer_member_role_get($MemberID=0) {
			if (empty($MemberID)) return null;
		
      $this->db->from('customer_member_role');
			$this->db->where('mid',$MemberID,false);

			$query = $this->db->get();
      $row = $query->row_array();

			if (!$row) return null;
			
      return $query->result_array();
		}

		public function customer_member_role_list($shopID=0,$memID=0) {
			if (empty($memID) || empty($shopID)) return null;
		
      $this->db->from('customer_policy');
      $this->db->join('customer_role_policy','zzz_customer_policy.id=policy_id');
      $this->db->where('zzz_customer_policy.active', 1,false);
			$this->db->where('mem_id',$memID,false);
			$this->db->where('shop_id',$shopID,false);
			$this->db->where('zzz_customer_role_policy.active',1,false);
			$this->db->order_by('head_order');
			$this->db->order_by('policy_order');

			$query = $this->db->get();
      $row = $query->row_array();

			if (!$row) return null;
			
      return $query->result_array();
		}
}