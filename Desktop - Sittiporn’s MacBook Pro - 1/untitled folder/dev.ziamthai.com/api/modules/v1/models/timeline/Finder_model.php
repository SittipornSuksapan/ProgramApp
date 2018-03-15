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
            'posts_type' => isset($_REQUEST['posts_type']) ? $_REQUEST['posts_type'] : null,
            'limit' => isset($_REQUEST['limit']) ? intval($_REQUEST['limit']) : 0,
            'page' => isset($_REQUEST['page']) ? intval($_REQUEST['page']) : 0,
            'page_limit' => isset($_REQUEST['page_limit']) ? intval($_REQUEST['page_limit']) : 10,
            'photo_limit' => isset($_REQUEST['photo_limit']) ? intval($_REQUEST['photo_limit']) : 3,
            'description_length' => isset($_REQUEST['description_length']) ? intval($_REQUEST['description_length']) : 100,
            'sort_by' => isset($_REQUEST['sort_by']) ? strtoupper($_REQUEST['sort_by']) : 'DESC',
            'order_by' => isset($_REQUEST['order_by']) ? strtolower($_REQUEST['order_by']) : 'timeline_update'
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

//        return implode(',', $cols_selector);
        return '*';
    }

    private function data_setup($data) {
        if (sizeof($data) < 1) {
            return $data;
        }

        $data_return = array();

        foreach ($data as $key => $value) {
            $img_cover = null;

            if ($value['ref_type'] == 'blog' && !empty($value['img_cover'])) {
                $img_cover = base_url(UPLOADS_CLIENT . $value['shop_id'] . '/blog/' . $value['img_cover']);
            }

            $author_domain = '';

            if (!empty($value['author_url'])) {
                $a_url1 = parse_url($value['author_url']);
                $author_domain = isset($a_url1['host']) ? str_ireplace('www.', '', $a_url1['host']) : '';
            }

            $data_return[$key]['post'] = array(
                'id' => intval($value['id']),
                'type' => $value['ref_type'],
                'ref_id' => $value['ref_id'],
                'title' => $value['title'],
                'stick_top' => $value['stick_top'],
                'highlight' => isset($value['highlight']) ? $value['highlight'] : null,
                'review_score' => isset($value['review_score']) ? intval($value['review_score']) : 5,
                'review_price_rate' => isset($value['review_price_rate']) ? intval($value['review_price_rate']) : 1,
                'author_name' => $value['author_name'],
                'author_url' => $value['author_url'],
                'author_domain' => $author_domain,
                'created_timeago' => time_ago($value['c_date']),
                'created_date' => $value['c_date'],
                'modified_date' => $value['m_date'],
                'img_cover' => $img_cover,
//                'img_cover_thumb' => site_url('uploads/reviews_img/thumb/' . $value['bsrh_cover_image'])
            );


            $address_arr = explode(',', $value['shop_address']);

            $data_return[$key]['shop'] = array(
                'id' => $value['shop_id'],
                'name' => $value['shop_name'],
                'address' => $value['shop_address'],
                'city' => isset($address_arr[0]) ? $address_arr[0] : '',
                'state_code' => isset($address_arr[1]) ? $address_arr[1] : '',
                'rating' => $value['shop_rating'],
                'img_logo' => site_url('uploads/shop_photo/large/' . $value['shop_id'] . '/imgfront'),
                'img_logo_thumb' => site_url('uploads/shop_photo/thumb/' . $value['shop_id'] . '/imgfront')
            );

            $data_return[$key]['writer'] = array(
                'id' => $value['c_uid'],
                'name' => $value['c_uname'],
                'photo' => site_url('uploads/user_photo/large/' . $value['c_uid']),
                'photo_thumb' => site_url('uploads/user_photo/thumb/' . $value['c_uid'])
            );

            $data_return[$key]['media'] = array();

            if (!empty($value['media'])) {
                $data_return[$key]['media'] = $this->media_setup($value);
            }
        }

        return $data_return;
    }

    private function media_setup($data) {
        $ref_type = isset($data['ref_type']) ? strtolower($data['ref_type']) : 'posts';
        $media_data = isset($data['media']) ? $data['media'] : null;
        $shop_id = isset($data['shop_id']) ? $data['shop_id'] : 0;
        $media_array = array();
        $data_array = explode('||', $media_data);

        if (sizeof($data_array) < 1) {
            return $media_array;
        }

        foreach ($data_array as $media) {
            $data_info = explode('--', $media);

            $file_name = isset($data_info[1]) ? $data_info[1] : null;

            $name_arr = explode('.', $file_name);
            $name_first = isset($name_arr[0]) ? $name_arr[0] : null;
            $name_last = isset($name_arr[1]) ? $name_arr[1] : null;

            $media_type = isset($data_info[3]) ? $data_info[3] : null;
            $media_url = base_url(UPLOADS_CLIENT . $shop_id . '/' . $media_type . '/');

            $file_url = $media_url . $file_name;

            if ($ref_type == 'review') {
                $file_url = base_url('uploads/reviews_img/' . $file_name);
            }

            $media_info = array(
                'file_id' => isset($data_info[0]) ? intval($data_info[0]) : 0,
                'file_type' => isset($data_info[2]) ? $data_info[2] : null,
                'file_url' => $file_url,
                'media_type' => $media_type,
                'media_width' => isset($data_info[4]) ? intval($data_info[4]) : 0,
                'media_height' => isset($data_info[5]) ? intval($data_info[5]) : 0,
                'media_duration' => isset($data_info[6]) ? $data_info[6] : 0
            );

            if ($media_type == 'video') {
                $name_last = 'jpg';
                $media_info['img_url'] = $media_url . $name_first . '.jpg';
            }

            if ($media_type == 'video' || $media_type == 'photo') {
                if ($ref_type == 'review') {
                    $media_info['img_thumb'] = site_url('uploads/reviews_img/thumb/' . $file_name);
                } else {
                    $media_info['img_320'] = $media_url . $name_first . '_320.' . $name_last;
                    $media_info['img_640'] = $media_url . $name_first . '_640.' . $name_last;
                    $media_info['img_1024'] = $media_url . $name_first . '_1024.' . $name_last;
                }
            }

            if (!empty($file_name)) {
                $media_array[] = $media_info;
            }
        }

        return $media_array;
    }

    private function order_setup() {
        $order_by = '';

        if ($this->params['order_by'] == 'timeline_create') {
            $order_by = 'id';
        }

        if ($this->params['order_by'] == 'timeline_update') {
            $order_by = 'm_date';
        }

        if (!empty($this->params['shop'])) {
            $this->db->order_by('stick_top', 'DESC');
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

//        $this->db->group_by('posts_id');

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
            $this->db->where('public >', 0);
        } else {
            $this->db->where("(( (public > 0 )AND (c_uid <> '" . $this->access_user['id'] . "') ) OR c_uid = '" . $this->access_user['id'] . "')");
        }
    }

    private function search_condition() {
        $this->db->from('business_timeline_posts');

//        $this->db->join('member_header', 'memh_id = bsrh_cuser', 'left');
//        $this->db->join('business_shop', 'bssh_id = bsrh_bssh_id', 'left');

        if ($this->params['posts_type'] == 'posts' || $this->params['posts_type'] == 'blog' || $this->params['posts_type'] == 'review') {
            $this->db->where('ref_type', $this->params['posts_type']);
        }

        if ($this->params['posts_type'] == 'posts_blog') {
            $this->db->not_like('ref_type', 'review');
        }

        if (!empty($this->params['shop'])) {
            $this->db->where('shop_id', $this->params['shop']);
        }

        if (!empty($this->params['writer'])) {
            $this->db->where('c_uid', $this->params['writer']);
        }
    }

    private function pagination($data) {
        $this->db->reset_query();
        $this->db->select('id');

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
