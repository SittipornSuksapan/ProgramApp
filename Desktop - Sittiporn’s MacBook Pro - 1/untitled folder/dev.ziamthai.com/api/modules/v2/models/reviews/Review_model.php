<?php

defined('BASEPATH') OR exit('No direct script access allowed');

Class Review_model extends CI_Model {

    private $access_module, $access_user;

    function __construct() {
        parent:: __construct();
    }

    public function get_data($access_module, $access_user) {
        $this->access_module = $access_module;
        $this->access_user = $access_user;

        $id = isset($_REQUEST['review']) ? $_REQUEST['review'] : 0;

        if (empty($id)) {
            return null;
        }

        $this->db->select('bsrh_id AS id,bsrh_title AS title,bsrh_desc AS description,bsrh_score AS score,bsrh_price_rate AS price_rate,bsrh_cdate AS created_date,bsrh_mdate AS modified_date,bsrh_bssh_id,bsrh_cover_image,bsrh_menu_recommend,bsrh_public AS public,bsrh_cuser');
        $this->db->from('business_shop_review_header');
        $this->db->where('bsrh_id', $id);
        $query = $this->db->get();

        if ($query->num_rows() < 1) {
            return null;
        }

        $data = $this->get_data_setup($query->row_array());

        return $data;
    }

    private function get_data_setup($data) {
        $writer_id = isset($data['bsrh_cuser']) ? $data['bsrh_cuser'] : 0;
        $shop_id = isset($data['bsrh_bssh_id']) ? $data['bsrh_bssh_id'] : 0;
        $recommend_menu = isset($data['bsrh_menu_recommend']) ? $data['bsrh_menu_recommend'] : null;

        $data['img_cover'] = null;
        $data['img_cover_thumb'] = null;

        if (!empty($data['bsrh_cover_image'])) {
            $data['img_cover'] = site_url('uploads/reviews_img/large/' . $data['bsrh_cover_image']);
            $data['img_cover_thumb'] = site_url('uploads/reviews_img/large/' . $data['bsrh_cover_image']);
        }

        unset($data['bsrh_cuser'], $data['bsrh_bssh_id'], $data['bsrh_menu_recommend'], $data['bsrh_cover_image']);

        $data['created_timeago'] = isset($data['created_date']) ? time_ago($data['created_date']) : null;

        $return = array(
            'review' => $data,
            'photo' => $this->get_photo($data['id']),
            'writer' => $this->get_writer($writer_id),
            'shop' => $this->get_shop($shop_id),
            'recommend_menu' => $this->get_recommend_menu($recommend_menu)
        );

        return $return;
    }

    private function get_writer($id) {
        if (empty($id)) {
            return null;
        }

        $this->load->model($this->access_module . '/accounts/Member_model');

        $data = $this->Member_model->member_data($id);

        $member_firstname = isset($data['memh_firstname']) ? $data['memh_firstname'] : null;
        $member_name = isset($data['memh_display']) ? $data['memh_display'] : $member_firstname;

        return array(
            'id' => $id,
            'name' => $member_name,
            'photo' => site_url('uploads/user_photo/large/' . $id),
            'photo_thumb' => site_url('uploads/user_photo/thumb/' . $id)
        );
    }

    private function get_shop($id) {
        if (empty($id)) {
            return null;
        }

        $this->load->model($this->access_module . '/business/Shop_model');

        $data = $this->Shop_model->get_info($id, 'bssh_id AS id,bssh_title AS title');

        if (isset($data['img_cover'])) {
            unset($data['img_cover']);
        }

        if (isset($data['img_cover_thumb'])) {
            unset($data['img_cover_thumb']);
        }

        return $data;
    }

    private function get_recommend_menu($id_str) {
        if (empty($id_str)) {
            return null;
        }

        $id_arr = explode('||', $id_str);

        if (count($id_arr) < 1) {
            return null;
        }

        $this->load->model($this->access_module . '/business/Item_model');

        $return = array();

        foreach ($id_arr as $value) {
            $return[] = $this->Item_model->item_info($value);
        }

        return $return;
    }

    private function get_photo($id) {
        if (empty($id)) {
            return null;
        }

        $this->db->reset_query();
        $this->db->select('bsri_id AS id,bsri_imgt_id AS img_type,bsri_caption AS caption');
        $this->db->from('business_shop_review_image');
        $this->db->where('bsri_bsrh_id', $id);
        $query = $this->db->get();

        if ($query->num_rows() < 1) {
            return null;
        }

        $data = $query->result_array();

        foreach ($data as $key => $value) {
            $data[$key]['img'] = site_url('uploads/reviews_img/large/' . $value['id']);
            $data[$key]['img_thumb'] = site_url('uploads/reviews_img/large/' . $value['id']);
        }

        return $data;
    }

}
