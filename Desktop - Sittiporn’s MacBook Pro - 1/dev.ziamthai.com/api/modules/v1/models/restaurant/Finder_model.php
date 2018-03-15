<?php

Class Finder_model extends CI_Model {

    private $mod_name, $access_user, $params;
    private $pagination_enable = false;

    public function __construct() {
        parent::__construct();

        $this->mod_name = $this->router->fetch_module();
    }

    private function get_params($return = false) {
        $this->params = array(
            'q' => isset($_REQUEST['q']) ? $_REQUEST['q'] : null,
            'state' => isset($_REQUEST['state']) ? strtoupper($_REQUEST['state']) : null,
            'shop_type' => isset($_REQUEST['shop_type']) ? intval($_REQUEST['shop_type']) : 0,
            'shop_cate' => isset($_REQUEST['shop_cate']) ? $_REQUEST['shop_cate'] : null,
            'zipcode' => isset($_REQUEST['zipcode']) ? $_REQUEST['zipcode'] : null,
            'map_position' => isset($_REQUEST['map_position']) ? $_REQUEST['map_position'] : null,
            'limit' => isset($_REQUEST['limit']) ? intval($_REQUEST['limit']) : 0,
            'page' => isset($_REQUEST['page']) ? intval($_REQUEST['page']) : 0,
            'page_limit' => isset($_REQUEST['page_limit']) ? intval($_REQUEST['page_limit']) : 10,
            'sort_by' => isset($_REQUEST['sort_by']) ? strtoupper($_REQUEST['sort_by']) : null,
            'order_by' => isset($_REQUEST['order_by']) ? strtolower($_REQUEST['order_by']) : 'shop_create',
            'review_limit' => isset($_REQUEST['review_limit']) ? intval($_REQUEST['review_limit']) : 0
        );

        if ($return) {
            return $this->params;
        }
    }

    private function selector() {
        $this->get_params();

        $cols_selector = 'bssh_id AS id,bssh_title AS name,bssh_phone AS phone,bssh_website AS website,bssh_loc2 AS state_code,bssh_address AS address,bssh_zipcode AS zipcode,bssh_maps AS map_position,bssh_force_online AS force_online';

        if (empty($this->params['map_position'])) {
            return $cols_selector;
        }

        $pos_arr = explode(',', $this->params['map_position']);
        $get_lat = isset($pos_arr['0']) ? $pos_arr['0'] : 0;
        $get_lon = isset($pos_arr['1']) ? $pos_arr['1'] : 0;

        $set_distance = "( 3959 * acos( cos( radians('$get_lat') ) * cos( radians( SUBSTRING_INDEX(  bssh_maps ,  ',', 1 )  ) ) * cos( radians( SUBSTRING_INDEX( SUBSTRING_INDEX(  bssh_maps ,  ',', 2 ) ,  ',' , -1 )  ) - radians('$get_lon') ) + sin( radians('$get_lat') ) * sin( radians( SUBSTRING_INDEX(  bssh_maps ,  ',', 1 ) ) ) ) ) AS distance";

        return $cols_selector . ',' . $set_distance;
    }

    private function data_setup($data) {
        if (sizeof($data) < 1) {
            return null;
        }

        $this->load->model($this->mod_name . '/business/Shop_asset_model');

        foreach ($data as $key => $value) {
            $data[$key]['id'] = isset($value['id']) ? intval($value['id']) : null;

            $data[$key]['img_cover'] = site_url('uploads/shop_photo/large/' . $value['id'] . '/imghead');
            $data[$key]['img_cover_thumb'] = site_url('uploads/shop_photo/thumb/' . $value['id'] . '/imghead');

            $data[$key]['img_logo'] = site_url('uploads/shop_photo/large/' . $value['id'] . '/imgfront');
            $data[$key]['img_logo_thumb'] = site_url('uploads/shop_photo/thumb/' . $value['id'] . '/imgfront');

            $data[$key]['distance'] = isset($value['distance']) ? number_format($value['distance'], 2, '.', ',') : 0;
            $data[$key]['score_rate'] = $this->Shop_asset_model->get_score($value['id']);
            $data[$key]['price_rate'] = $this->Shop_asset_model->get_price_rate($value['id']);
            
            $data[$key]['work_hour_today'] = $this->Shop_asset_model->work_hour_today($value['id']);

            if ($this->params['review_limit'] > 0) {
                $data[$key]['last_review'] = $this->find_review($value['id'], $this->params['review_limit']);
            }
        }

        return $data;
    }

    private function order_setup() {
        $order_by = '';

        if ($this->params['order_by'] == 'distance' && !empty($this->params['map_position'])) {
            $order_by = 'distance';
        }

        if ($this->params['order_by'] == 'shop_create') {
            $order_by = 'bssh_id';
        }

        if ($this->params['order_by'] == 'shop_update') {
            $order_by = 'bssh_mdate';
        }

        if (!empty($order_by)) {
            if (!empty($this->params['sort_by'])) {
                $order_by .= ' ' . $this->params['sort_by'];
            }

            $this->db->order_by($order_by);
        }
    }

    private function limit_setup() {
        if ($this->params['page'] > 0) {
            $this->pagination_enable = true;

            $limit_offset = 0;

            if ($this->params['page'] > 1) {
                $limit_offset = (($this->params['page'] - 1) * $this->params['page_limit']);
            }

            $this->db->limit($this->params['page_limit'], $limit_offset);

            return null;
        }

        if ($this->params['limit'] > 0) {
            $limit = $this->params['limit'];

            $this->db->limit($limit);

            return null;
        }
    }

    public function data_search($access_user) {
        $this->access_user = $access_user;

        $this->db->select($this->selector());

        $this->db->from('business_shop');

        $this->order_setup();

        $this->condition();

        $this->limit_setup();

        $this->db->group_by('bssh_id');

        $query = $this->db->get();

        if ($query->num_rows() < 1) {
            return null;
        }

        $data = $query->result_array();

        $find_data = $this->data_setup($data);

        if (!$this->pagination_enable) {
            return $find_data;
        }

        return $this->pagination($find_data);
    }

    private function condition() {
        $this->db->where('bssh_active >', 0);

        if (!empty($this->params['q'])) {
            $q = str_ireplace(' ', '%', $this->params['q']);

            $this->db->like('bssh_title', $q);
        }

        if (!empty($this->params['shop_type'])) {
            $this->db->where('bssh_bsth_id', $this->params['shop_type']);
        }

        if (!empty($this->params['shop_cate'])) {
            $set_cate = str_ireplace(' ', '%||', $this->params['shop_cate']);

            $this->db->like('bssh_subcate', "%||$set_cate%");
        }

        if (!empty($this->params['state'])) {

            $this->db->where("(bssh_loc1 LIKE '" . $this->params['state'] . "' OR bssh_loc2 LIKE '" . $this->params['state'] . "')");
        }

        if (!empty($this->params['zipcode'])) {
            $this->db->like('bssh_zipcode', $this->params['zipcode']);
        }
    }

    private function pagination($data) {
        $this->db->reset_query();
        $this->db->select('bssh_id');
        $this->db->from('business_shop');

        $this->condition();

        $total = $this->db->count_all_results();
        $pagination = pagination_setup($total, $this->params['page'], $this->params['page_limit']);

        return array(
            'data' => $data,
            'total' => $total,
            'page' => $pagination
        );
    }

    private function find_review($bssh_id) {
        if (empty($this->params['review_limit'])) {
            return null;
        }

        $this->db->reset_query();
        $this->db->select('bsrh_id AS id,bsrh_title AS title');
        $this->db->from('business_shop_review_header');
        $this->db->where('bsrh_bssh_id', $bssh_id);
        $this->db->where('bsrh_public > ', 0);
        $this->db->order_by('bsrh_score', 'DESC');
        $this->db->order_by('RAND()');
        $this->db->limit($this->params['review_limit']);

        $query = $this->db->get();

        if ($query->num_rows() < 1) {
            return null;
        }

        return $query->result_array();
    }

}
