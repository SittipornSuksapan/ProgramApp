<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Item_model extends CI_Model {

    function __construct() {
        parent:: __construct();
    }

    public function combobox_finder($q = null) {
        $keyword = isset($_REQUEST['q']) ? $_REQUEST['q'] : $q;
        $shop_id = isset($_REQUEST['shop']) ? intval($_REQUEST['shop']) : 0;

        if (empty($shop_id)) {
            return null;
        }

        $this->db->select('bsih_id,bsih_name,bsih_price,bsih_photo');
        $this->db->from('business_shop_item_header');

        if (!empty($shop_id)) {
            $this->db->where('bsih_bssh_id', $shop_id);
        }

        $this->db->like('bsih_name', $keyword, 'after');

        $query = $this->db->get();
        $data = $query->result_array();

        if (!$data) {
            return null;
        }

        return $data;
    }

    public function item_info($id, $cols = null) {
        if (empty($id)) {
            return null;
        }

        $this->db->reset_query();

        if (empty($cols)) {
            $cols = 'bsih_id AS id,bsih_code AS code,bsih_name AS name,bsih_price AS price';
        }

        $this->db->select($cols);
        $this->db->from('business_shop_item_header');
        $this->db->where('bsih_id', $id);

        $query = $this->db->get();

        if ($query->num_rows() < 1) {
            return null;
        }

        $data = $query->row_array();

        $data['photo'] = site_url('uploads/item_photo/large/' . $id);
        $data['photo_thumb'] = site_url('uploads/item_photo/thumb/' . $id);

        return $data;
    }

}
