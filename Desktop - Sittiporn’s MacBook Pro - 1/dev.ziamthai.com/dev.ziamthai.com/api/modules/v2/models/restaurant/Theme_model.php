<?php

Class Theme_model extends CI_Model {

	private $access_user, $mod_name;

	public function __construct() {
		parent::__construct();

		$this->mod_name = $this->router->fetch_module();
	}

	public function get_theme($shop_id) {

		$this->db->reset_query();
		$this->db->where('shop_id', $shop_id);

		$query = $this->db->get('business_shop_theme');
//		echo sprintf("<br>SQL=> %s ",$this->db->last_query());
		
		if ($query->num_rows() < 1) {
			$this->db->reset_query();
			$this->db->where('shop_id', 0);

			$query = $this->db->get('business_shop_theme');
//			echo sprintf("<br>SQL=> %s ",$this->db->last_query());
		}

//		print_r($query->result_array());
		return $query->result_array();
	}
}
