<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Shop_image_model extends CI_Model {

    function __construct() {
        parent:: __construct();
    }

    public function img_by_type($bssh_id, $imgt_id = null, $limit = null) {
        $this->db->select('bssi_id AS id,bssi_title AS title');
        $this->db->from('business_shop_images');
        $this->db->where('bssi_bssh_id', $bssh_id);

        if (!empty($imgt_id)) {
            $this->db->where('bssi_imgt_id', $imgt_id);
        }

        if (!empty($limit) && is_numeric($limit)) {
            $this->db->order_by('bssi_id', 'DESC');
            $this->db->limit($limit);
        }

        $query = $this->db->get();

        if ($query->num_rows() < 1) {
            return null;
        }

        $data = $query->result_array();

        foreach ($data as $key => $value) {
            $data[$key]['img'] = site_url('uploads/shop_image/large/' . $value['id']);
            $data[$key]['img_thumb'] = site_url('uploads/shop_image/thumb/' . $value['id']);
        }

        return $data;
    }

}
