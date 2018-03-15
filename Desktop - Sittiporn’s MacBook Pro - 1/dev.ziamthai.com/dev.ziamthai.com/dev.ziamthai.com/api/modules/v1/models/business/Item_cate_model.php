<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Item_cate_model extends CI_Model {

    function __construct() {
        parent:: __construct();
    }

	public function get_category($shop_id, $show_item = 0,$per_item=0) {
		if (empty($shop_id)) {
				return null;
		}

//		echo sprintf("<br>[get_category] - show_item =>%d ",$show_item);
//		echo sprintf("<br>[get_category] - shop_id =>%d ",$shop_id);
		
		$this->db->select('bsic_id AS id,bsic_name AS name');
		$this->db->from('business_shop_item_category');

		$this->db->where("bsic_bssh_id", $shop_id);
		$this->db->where('pid >', 0);
		$this->db->where("bsic_active >", 0);

		$this->db->order_by('bsic_order','ASC');
		$this->db->order_by('bsic_name', 'ASC');
		$cate_query = $this->db->get();

		if ($cate_query->num_rows() < 1) {
			return null;
		}

		$data = $cate_query->result_array();

		$data_return = array();
		

		foreach ($data as $key => $value) {
			$data_return[$key]['category'] = array(
					'id' => $value['id'],
					'name' => $value['name']
			);

			$data_return[$key]['item'] = null;

			if ($show_item) {
//				echo sprintf("<br>- Show Item %d",$value['id']);
				$data_return[$key]['item'] = $this->get_item($shop_id, $value['id'],$per_item);
			}
       }

//		print_r($data_return);
        return $data_return;
    }

    public function get_item($shop_id, $cate_id = 0,$per_item=0) {
        if (empty($shop_id)) {
            return null;
        }

        $this->db->select('bsih_id AS id,bsih_name AS name,bsih_desc AS description,bsih_price AS price,bsih_recommend AS recommend,bsih_online AS online_order,bsih_order AS ordering');
        $this->db->from('business_shop_item_header');
        $this->db->where("bsih_bssh_id", $shop_id);
        $this->db->where("bsih_active >", 0);
        $this->db->where("bsih_online >", 0);

        if (!empty($cate_id)) {
            $this->db->where("bsih_bsic_id", $cate_id);
        }
        if (!empty($per_item)) {
			$this->db->limit($per_item);
		}

        $this->db->order_by('bsih_bsic_id', 'ASC');
        $this->db->order_by('bsih_order', 'ASC');
				

		$query = $this->db->get();
//		$str = $this->db->last_query();
//		echo sprintf('<br> SQL=> "%s"',$str);
        if ($query->num_rows() < 1) {
            return null;
        }

        $data = $query->result_array();
//		print_r($data);

        if (sizeof($data) > 0) {
            foreach ($data as $key => $value) {
                $data[$key]['photo'] = site_url('uploads/item_photo/large/' . $value['id']);
                $data[$key]['photo_thumb'] = site_url('uploads/item_photo/thumb/' . $value['id']);
            }
        }

        return $data;
    }

}
