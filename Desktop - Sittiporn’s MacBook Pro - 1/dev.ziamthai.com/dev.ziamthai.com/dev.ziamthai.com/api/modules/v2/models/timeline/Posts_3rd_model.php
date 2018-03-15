<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Posts_3rd_model extends CI_Model {

    private $access_module, $access_user,$shop_data;

    public function __construct() {
        parent::__construct();

        $this->access_module = $this->router->fetch_module();

        $this->load->model($this->access_module . '/Api_model');
        $this->access_user = $this->Api_model->valid_user();
    }

    public function save($data) {
        $valid_data = $this->valid_data($data);

        if (isset($valid_data['error'])) {
            return $valid_data;
        }

        $exists_id = $this->check_exists($valid_data);

        $this->db->reset_query();

        if (empty($exists_id)) {
            $this->db->insert('business_timeline_posts', $valid_data);
        } else {
            $this->db->where('id', $exists_id);
            $this->db->update('business_timeline_posts', $valid_data);
        }

        $this->update_shop_info();
    }

    private function update_shop_info() {
        $this->db->reset_query();
        $this->db->where('shop_id', $this->shop_data['id']);
        $this->db->update('business_timeline_posts', array(
            'shop_name' => $this->shop_data['name'],
            'shop_address' => isset($this->shop_data['address']) ? $this->shop_data['address'] : '',
            'shop_rating' => isset($this->shop_data['rating']) ? $this->shop_data['rating'] : 3
        ));
    }

    private function check_exists($data) {
        $this->db->reset_query();
        $this->db->select('id');
        $this->db->from('business_timeline_posts');
        $this->db->where('ref_id', intval($data['ref_id']));
        $this->db->where('ref_type', strtolower($data['ref_type']));

        $query = $this->db->get();

        if ($query->num_rows() < 1) {
            return 0;
        }

        $get_data = $query->row_array();

        return isset($get_data['id']) ? intval($get_data['id']) : 0;
    }

    private function set_data_default($data) {
        if (empty($this->access_user['id'])) {
            return array('error' => true, 'message' => 'Please login');
        }

        $shop_id = isset($data['shop_id']) ? $data['shop_id'] : null;
        $this->shop_data = $this->get_shop_data($shop_id);

        if (empty($shop_id) || empty($this->shop_data['id'])) {
            return array('error' => true, 'message' => 'Invalid shop references.');
        }

        $date_now = date('Y-m-d H:i:s');
        $get_ip = get_client_ip();

        return array(
            'shop_id' => $this->shop_data['id'],
            'shop_name' => $this->shop_data['name'],
            'shop_address' => isset($this->shop_data['address']) ? $this->shop_data['address'] : '',
            'shop_rating' => isset($this->shop_data['rating']) ? $this->shop_data['rating'] : 3,
            'c_uid' => isset($data['c_uid']) ? $data['c_uid'] : $this->access_user['id'],
            'c_uname' => isset($data['c_uname']) ? $data['c_uname'] : $this->access_user['name'],
            'c_date' => isset($data['c_date']) ? $data['c_date'] : $date_now,
            'c_ip' => isset($data['c_ip']) ? $data['c_ip'] : $get_ip,
            'm_uid' => isset($data['m_uid']) ? $data['m_uid'] : $this->access_user['id'],
            'm_uname' => isset($data['m_uname']) ? $data['m_uname'] : $this->access_user['name'],
            'm_date' => isset($data['m_date']) ? $data['m_date'] : $date_now,
            'm_ip' => isset($data['m_ip']) ? $data['m_ip'] : $get_ip
        );
    }

    private function valid_data($data) {
        $default_data = $this->set_data_default($data);

        if (isset($default_data['error'])) {
            return $default_data;
        }

        $data['public'] = isset($data['public']) ? intval($data['public']) : 0;

        $save_data = array_merge($default_data, $data);

        if ($data['ref_type'] != 'posts' && $data['ref_type'] != 'blog' && $data['ref_type'] != 'photo' && $data['ref_type'] != 'video' && $data['ref_type'] != 'review') {
            return array('error' => true, 'message' => $this->lang->line('invalid_data_type'));
        }

        if (($data['ref_type'] == 'blog' || $data['ref_type'] == 'review') && empty($save_data['ref_id'])) {
            return array('error' => true, 'message' => $this->lang->line('undefined_posts_reference'));
        }

        if (!empty($save_data['highlight'])) {
            $save_data['highlight'] = strip_tags($save_data['highlight']);
        }

        return $save_data;
    }

    private function get_shop_data($id) {
        if (empty($id)) {
            return null;
        }

        $this->load->model($this->access_module . '/business/Shop_model');

        $shop_data = $this->Shop_model->get_info($id, 'bssh_id AS id,bssh_title AS name,bssh_owner AS owner,city,state');

        if (empty($shop_data['id'])) {
            return null;
        }
        
        $shop_adddata = array();
        $shop_adddata[] = isset($shop_data['city']) ? $shop_data['city'] : '';
        $shop_adddata[] = isset($shop_data['state']) ? $shop_data['state'] : '';
        $shop_data['address'] = implode(',', $shop_adddata);
        
        $get_score = $this->Shop_model->current_rating($id);
        $shop_data['rating'] = isset($get_score['rating']) ? $get_score['rating'] : 3;

        return $shop_data;
    }

}
