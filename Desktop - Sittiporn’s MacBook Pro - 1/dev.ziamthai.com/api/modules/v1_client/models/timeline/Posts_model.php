<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Posts_model extends CI_Model {

    private $access_module, $access_client, $access_workspace;
    private $client_ip, $now_date;

    public function __construct() {
        parent::__construct();

        $this->access_module = $this->router->fetch_module();

        $this->load->model($this->access_module . '/Api_model');

        $this->access_client = $this->Api_model->valid_user();
        $this->access_workspace = $this->Api_model->valid_workspace();

        $this->client_ip = get_client_ip();
        $this->now_date = date('Y-m-d H:i:s');
    }

    public function set_posts_public($id, $public) {
        if (empty($id)) {
            return false;
        }

        $this->db->reset_query();
        $this->db->trans_start();
        $this->db->where('id', $id);
        $this->db->where('shop_id', $this->access_workspace['id']);
        $this->db->update('business_timeline_posts', array(
            'public' => intval($public)
        ));
        $this->db->trans_complete();

        if ($this->db->trans_status() === FALSE) {
            return false;
        }

        return true;
    }

    public function save_data() {
        $valid_data = $this->form_data_valid();

        if (isset($valid_data['error'])) {
            return $valid_data;
        }
        
        $posts_id = $this->input->post('id', 0);

        if (empty($posts_id)) {
            $result = $this->save_new($valid_data);
        } else {
            $result = $this->save_update($valid_data, $posts_id);
        }

        return $result;
    }

    private function save_new($data) {
        $data['shop_id'] = $this->access_workspace['id'];
        $data['shop_name'] = $this->access_workspace['name'];
        $data['c_ip'] = $this->client_ip;
        $data['c_date'] = $this->now_date;
        $data['c_uid'] = $this->access_client['id'];
        $data['c_uname'] = $this->access_client['name'];
        $data['m_ip'] = $this->client_ip;
        $data['m_date'] = $this->now_date;
        $data['m_uid'] = $this->access_client['id'];
        $data['m_uname'] = $this->access_client['name'];

        $this->db->reset_query();
        $this->db->insert('business_timeline_posts', $data);
        $result = ($this->db->affected_rows() != 1) ? false : true;

        if (!$result) {
            return array('error' => true, 'message' => 'Create posts failed.');
        }

        return array('success' => true, 'message' => 'Create posts complete.');
    }

    private function save_update($data, $id) {
        $data['m_ip'] = $this->client_ip;
        $data['m_date'] = $this->now_date;
        $data['m_uid'] = $this->access_client['id'];
        $data['m_uname'] = $this->access_client['name'];

        $this->db->reset_query();
        $this->db->where('id', $id);
        $this->db->where('shop_id', $this->access_workspace['id']);
        $result = $this->db->update('business_timeline_posts', $data);

        if (!$result) {
            return array('error' => true, 'message' => 'Update posts failed.');
        }

        return array('success' => true, 'message' => 'Update posts complete.');
    }

    private function form_data_valid() {
        if (empty($this->access_client['id'])) {
            return array('error' => true, 'message' => $this->lang->line('please_login'));
        }

        if (empty($this->access_workspace['id'])) {
            return array('error' => true, 'message' => $this->lang->line('please_select_workspace'));
        }

        if ($this->access_client['id'] != $this->access_workspace['owner']) {
            return array('error' => true, 'message' => $this->lang->line('access_denied'));
        }

        $highlight = $this->input->post('highlight', '');
        $media = $this->input->post('media', null);
        $media_count = sizeof($media);
        $media_save = '';

        if ($media_count < 1) {
            if (empty($highlight)) {
                return array('error' => true, 'message' => 'Put posts highlight.', 'focus' => 'highlight');
            }
        }

        if ($media_count > 0) {
            $media_save = implode('||', $media);
        }

        return array(
            'highlight' => strip_tags($highlight),
            'public' => $this->input->post('public', 0),
            'media' => $media_save,
            'ref_type' => 'posts'
        );
    }

}
