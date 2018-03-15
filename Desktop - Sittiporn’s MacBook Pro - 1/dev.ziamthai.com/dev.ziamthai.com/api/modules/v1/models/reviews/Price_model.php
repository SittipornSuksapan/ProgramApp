<?php

defined('BASEPATH') OR exit('No direct script access allowed');

Class Price_model extends CI_Model {

    function __construct() {
        parent:: __construct();
    }
    
    public function price_rate() {
        $this->db->from('business_shop_review_price');
        $this->db->join('member_header', 'memh_id = bsri_cuser', 'left');
        $this->db->join('business_shop_review_header', 'bsrh_id = bsri_bsrh_id', 'left');
        $this->db->group_by('bsri_id');
        $this->db->order_by('bsri_cdate', 'DESC');
        $query = $this->db->get();

        if ($query->num_rows() < 1) {
            return null;
        }

        return $query->result_array();
    }

}
