<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Shop_model extends CI_Model {

    private $mod_name;
    private $cols_selection = 'bssh_id AS id,bssh_title AS title,bssh_detail AS detail,bssh_desc AS description,bssh_address AS address,bssh_loc2 AS state_code,bssh_zipcode AS zipcode,bssh_maps AS map_position,bssh_delivery_area AS delivery_area,bssh_time_zone AS time_zone,bssh_phone AS phone,bssh_mobile AS mobile,bssh_email AS email,bssh_website AS website,bssh_force_online AS force_online,bssh_active AS activated,tax_rate,tax_delivery';

    function __construct() {
        parent:: __construct();

        $this->mod_name = $this->router->fetch_module();
    }

    public function get_info($id, $cols = null) {
        if (empty($id)) {
            return null;
        }

        if (empty($cols)) {
            $cols = $this->cols_selection;
        }

        $this->db->select($cols);
        $this->db->from('business_shop');
        $this->db->where('bssh_id', $id);
        $this->db->where('bssh_active >', 0);

        $query = $this->db->get();

        if ($query->num_rows() < 1) {
            return null;
        }

        $return = $query->row_array();

        if (!empty($return['id'])) {
            $return['img_cover'] = site_url('uploads/shop_photo/large/' . $return['id'] . '/imghead');
            $return['img_cover_thumb'] = site_url('uploads/shop_photo/thumb/' . $return['id'] . '/imghead');

            $return['img_logo'] = site_url('uploads/shop_photo/large/' . $return['id'] . '/imgfront');
            $return['img_logo_thumb'] = site_url('uploads/shop_photo/thumb/' . $return['id'] . '/imgfront');
        }

        return $return;
    }

    public function get_data($id, $cols = null) {
        $shop_data = $this->get_info($id, $cols);

        if (sizeof($shop_data) < 1) {
            return null;
        }

        $this->load->model($this->mod_name . '/business/Shop_asset_model');
        $this->load->model($this->mod_name . '/business/Shop_image_model');

        $shop_data['force_online'] = isset($shop_data['force_online']) ? intval($shop_data['force_online']) : 0;
        $shop_data['tax_rate'] = isset($shop_data['tax_rate']) ? floatval($shop_data['tax_rate']) : 0;
        $shop_data['tax_delivery'] = isset($shop_data['tax_delivery']) ? intval($shop_data['tax_delivery']) : 0;

        $return = array();
        $return['info'] = $shop_data;

        $return['rating_now'] = $this->Shop_asset_model->rating_now($id);
        $return['rating_summary'] = $this->Shop_asset_model->rating_summary($id);

        $return['work_hour_list'] = $this->Shop_asset_model->work_hour_list($id);
        $return['work_hour_today'] = $this->Shop_asset_model->work_hour_today($id);

        //$return['img_environment'] = $this->Shop_image_model->img_by_type($id, 102, 4);
        //$return['img_menu'] = $this->Shop_image_model->img_by_type($id, 103, 4);
        //$return['item_recommend'] = $this->Shop_asset_model->recommend_item($id, 6);

        return $return;
    }

    public function current_rating($id) {
        if (empty($id)) {
            return null;
        }

        $this->db->reset_query();
        $this->db->select('score_value AS rating,score_total_review AS total_review');
        $this->db->from('business_shop_score');
        $this->db->where('score_bssh_id', $id);
        $this->db->order_by('score_date', 'DESC');
        $this->db->limit(1);
        $query = $this->db->get();

        if ($query->num_rows() > 0) {
            return $query->row_array();
        }

        $this->db->reset_query();
        $this->db->select('AVG(bsrh_score) AS rating,COUNT(bsrh_id) AS total_review');
        $this->db->from('business_shop_review_header');
        $this->db->where('bsrh_bssh_id', $id);
        $this->db->where('MONTH(bsrh_cdate)', date('m'));
        $this->db->where('YEAR(bsrh_cdate)', date('Y'));
        $query2 = $this->db->get();

        if ($query2->num_rows() > 0) {
            return $query2->row_array();
        }

        return null;
    }

}
