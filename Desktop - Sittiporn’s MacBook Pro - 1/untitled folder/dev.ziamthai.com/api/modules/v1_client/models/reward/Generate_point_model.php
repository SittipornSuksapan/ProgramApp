<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Generate_point_model extends CI_Model {

    private $access_module, $access_client, $access_workspace;
    private $client_ip, $create_date;

    public function __construct() {
        parent::__construct();

        $this->access_module = $this->router->fetch_module();

        $this->load->model($this->access_module . '/Api_model');

        $this->access_client = $this->Api_model->valid_user();
        $this->access_workspace = $this->Api_model->valid_workspace();

        $this->load->language($this->access_module . '/blog/writing', get_language());

        $this->client_ip = get_client_ip();
        $this->create_date = date('Y-m-d H:i:s');
    }

    private function member_valid($id) {
        $this->db->reset_query();
        $this->db->select('memh_id');
        $this->db->from('member_header');
        $this->db->where('memh_id', $id);
        $query = $this->db->get();

        if ($query->num_rows() < 1) {
            return false;
        }

        return true;
    }

    private function form_valid() {
        $data['member_id'] = $this->input->post('member_id', 0);
        $data['order_no'] = $this->input->post('order_no', null);
        $data['detail'] = $this->input->post('detail', null);
        $data['order_amount'] = $this->input->post('order_amount', 0);
        $data['points_amount'] = $this->input->post('points_amount', 0);

        if (empty($data['member_id'])) {
            return array('error' => true, 'message' => 'Cannot reference member accounts.');
        }

        $chk_member = $this->member_valid($data['member_id']);

        if (!$chk_member) {
            return array('error' => true, 'message' => 'Invalid member accounts.');
        }

        if (empty($data['points_amount'])) {
            return array('error' => true, 'message' => 'Put point amount.');
        }

        if (empty($this->access_workspace['id'])) {
            return array('error' => true, 'message' => 'Cannot reference shop infomation.');
        }

        return $data;
    }

    public function gen_point() {
        $form_data = $this->form_valid();

        if (isset($form_data['error'])) {
            return $form_data;
        }

        $this->db->reset_query();
        $this->db->insert('member_reward_history', array(
            'member_id' => $form_data['member_id'],
            'shop_id' => $this->access_workspace['id'],
            'point' => $form_data['points_amount'],
            'order_no' => $form_data['order_no'],
            'order_amount' => $form_data['order_amount'],
            'detail' => strip_tags($form_data['detail']),
            'action' => 'receive',
            'auser' => $this->access_client['id'],
            'aname' => $this->access_client['name'],
            'aip' => $this->client_ip,
            'adate' => $this->create_date
        ));

        $result = ($this->db->affected_rows() != 1) ? false : true;

        if (!$result) {
            return array('error' => true, 'message' => 'Cannot generate point to member.');
        }

        $form_data['history_id'] = intval($this->db->insert_id());

        $this->save_point($form_data);

        return array('success' => true, 'message' => 'Complete!!! generate point to member.');
        //return false;
    }

    private function save_point($data) {
        if (empty($data['history_id']) || empty($data['points_amount'])) {
            return null;
        }

        $exp_timestamp = strtotime(date("Y-m-d", strtotime($this->create_date)) . " +30 days");

        for ($i = 0; $i < $data['points_amount']; $i++) {
            $this->db->reset_query();
            $this->db->insert('member_reward_points', array(
                'history_id' => $data['history_id'],
                'shop_id' => $this->access_workspace['id'],
                'member_id' => $data['member_id'],
                'exp_date' => date("Y-m-d", $exp_timestamp)
            ));
        }
    }

}
