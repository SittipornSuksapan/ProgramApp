<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Finder_model extends CI_Model {

    private $access_user, $params;
    private $pagination_enable = false;

    public function __construct() {
        parent::__construct();
    }

    private function get_params($return = false) {
        $this->params = array(
            'shop' => isset($_REQUEST['shop']) ? intval($_REQUEST['shop']) : 0,
            'writer' => isset($_REQUEST['writer']) ? intval($_REQUEST['writer']) : 0,
            'limit' => isset($_REQUEST['limit']) ? intval($_REQUEST['limit']) : 0,
            'page' => isset($_REQUEST['page']) ? intval($_REQUEST['page']) : 0,
            'page_limit' => isset($_REQUEST['page_limit']) ? intval($_REQUEST['page_limit']) : 10,
            'photo_limit' => isset($_REQUEST['photo_limit']) ? intval($_REQUEST['photo_limit']) : 3,
            'description_length' => isset($_REQUEST['description_length']) ? intval($_REQUEST['description_length']) : 100,
            'sort_by' => isset($_REQUEST['sort_by']) ? strtoupper($_REQUEST['sort_by']) : null,
            'order_by' => isset($_REQUEST['order_by']) ? strtolower($_REQUEST['order_by']) : 'review_create'
        );

        if ($return) {
            return $this->params;
        }
    }

    private function selector() {
        $this->get_params();

        $cols_selector[0] = 'bsrh_id,bsrh_title,bsrh_score,bsrh_price_rate,bsrh_cover_image,bsrh_cdate,bsrh_mdate';

        if ($this->params['description_length'] > 0) {
            $cols_selector[0] .= ',bsrh_desc';
        }

        $cols_selector[1] = 'bsrh_cuser,COALESCE(memh_display,memh_firstname) AS memh_name';
        $cols_selector[2] = 'bsrh_bssh_id,bssh_title,bssh_loc1,bssh_loc2';

        return implode(',', $cols_selector);
    }

    private function data_setup($data) {
        if (sizeof($data) < 1) {
            return $data;
        }

        $date_return = array();

        foreach ($data as $key => $value) {
            $date_return[$key]['review'] = array(
                'id' => $value['bsrh_id'],
                'title' => $value['bsrh_title'],
                'description' => isset($value['bsrh_desc']) ? $value['bsrh_desc'] : null,
                'score' => isset($value['bsrh_score']) ? intval($value['bsrh_score']) : 5,
                'price_rate' => isset($value['bsrh_price_rate']) ? intval($value['bsrh_price_rate']) : 1,
                'created_timeago' => time_ago($value['bsrh_cdate']),
                'created_date' => $value['bsrh_cdate'],
                'modified_date' => $value['bsrh_mdate'],
                'img_cover' => site_url('uploads/reviews_img/large/' . $value['bsrh_cover_image']),
                'img_cover_thumb' => site_url('uploads/reviews_img/thumb/' . $value['bsrh_cover_image'])
            );

            $date_return[$key]['shop'] = array(
                'id' => $value['bsrh_bssh_id'],
                'name' => $value['bssh_title'],
                'state_code' => $value['bssh_loc2'],
                'country_code' => $value['bssh_loc1'],
                'img_logo' => site_url('uploads/shop_photo/large/' . $value['bsrh_bssh_id'] . '/imgfront'),
                'img_logo_thumb' => site_url('uploads/shop_photo/thumb/' . $value['bsrh_bssh_id'] . '/imgfront')
            );

            $date_return[$key]['writer'] = array(
                'id' => $value['bsrh_cuser'],
                'name' => $value['memh_name'],
                'photo' => site_url('uploads/user_photo/large/' . $value['bsrh_cuser']),
                'photo_thumb' => site_url('uploads/user_photo/thumb/' . $value['bsrh_cuser'])
            );

            if ($this->params['photo_limit'] > 0) {
                $date_return[$key]['photo'] = $this->photo_list($value['bsrh_id'], $this->params['photo_limit']);
            }

            if ($this->params['description_length'] > 0) {
                if (getStrLenTH($value['bsrh_desc']) > $this->params['description_length']) {
                    $date_return[$key]['review']['description'] = getSubStrTH($value['bsrh_desc'], 0, $this->params['description_length']) . '...';
                }
            }
        }

        return $date_return;
    }

    private function order_setup() {
        $order_by = '';

        if ($this->params['order_by'] == 'review_create') {
            $order_by = 'bsrh_id';
        }

        if ($this->params['order_by'] == 'review_update') {
            $order_by = 'bsrh_mdate';
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

        $this->public_condition();

        $this->search_condition();

        $this->db->group_by('bsrh_id');

        $this->order_setup();

        $this->limit_setup();

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

    private function public_condition() {
        if (empty($this->access_user['id'])) {
            $this->db->where('bsrh_public >', 0);
        } else {
            $this->db->where("((bsrh_public > 0 AND bsrh_cuser <> '" . $this->access_user['id'] . "') OR bsrh_cuser = '" . $this->access_user['id'] . "')");
        }
    }

    private function search_condition() {
        $this->db->from('business_shop_review_header');

        $this->db->join('member_header', 'memh_id = bsrh_cuser', 'left');
        $this->db->join('business_shop', 'bssh_id = bsrh_bssh_id', 'left');

        if (!empty($this->params['shop'])) {
            $this->db->where('bsrh_bssh_id', $this->params['shop']);
        }

        if (!empty($this->params['writer'])) {
            $this->db->where('bsrh_cuser', $this->params['writer']);
        }
    }

    private function pagination($data) {
        $this->db->reset_query();
        $this->db->select('bsrh_id');

        $this->public_condition();
        
        $this->search_condition();

        $total = $this->db->count_all_results();

        $pagination = pagination_setup($total, $this->params['page'], $this->params['page_limit']);

        return array(
            'data' => $data,
            'total' => $total,
            'page' => $pagination
        );
    }

    private function photo_list($id) {
        if (empty($id) || empty($this->params['photo_limit'])) {
            return [];
        }

        $this->db->select('bsri_id AS id,bsri_caption AS caption');
        $this->db->from('business_shop_review_image');
        $this->db->where('bsri_bsrh_id', $id);
        $this->db->order_by('bsri_cdate', 'DESC');
        $this->db->limit($this->params['photo_limit']);

        $query = $this->db->get();

        if ($query->num_rows() < 1) {
            return [];
        }

        $data = $query->result_array();

        return $this->photo_setup($data);
    }

    private function photo_setup($data) {
        if (sizeof($data) < 1) {
            return $data;
        }

        foreach ($data as $key => $value) {
            $data[$key]['img'] = site_url('uploads/reviews_img/large/' . $value['id']);
            $data[$key]['img_thumb'] = site_url('uploads/reviews_img/thumb/' . $value['id']);
        }

        return $data;
    }

}
