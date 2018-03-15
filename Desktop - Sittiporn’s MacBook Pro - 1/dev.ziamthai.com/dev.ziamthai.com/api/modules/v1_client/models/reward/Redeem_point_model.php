<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Redeem_point_model extends CI_Model {

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

        $this->load->model($this->access_module . '/reward/Reward_model');
        $chk_point_count = $this->Reward_model->get_member_point($data['member_id']);

        if ($chk_point_count < $data['points_amount']) {
            return array('error' => true, 'message' => 'Member poit has been ' . $chk_point_count . ' points.');
        }

        return $data;
    }

    public function redeem_point() {
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
            'action' => 'redeem',
            'auser' => $this->access_client['id'],
            'aname' => $this->access_client['name'],
            'aip' => $this->client_ip,
            'adate' => $this->create_date
        ));

        $result = ($this->db->affected_rows() != 1) ? false : true;

        if (!$result) {
            return array('error' => true, 'message' => 'Cannot redeem point to member.');
        }

        $form_data['history_id'] = intval($this->db->insert_id());

        $this->remove_point($form_data);

        return array('success' => true, 'message' => 'Complete!!! redeem point to member.');
        //return false;
    }

    private function remove_point($data) {
        if (empty($data['history_id']) || empty($data['points_amount'])) {
            return null;
        }

        $this->db->reset_query();

        $this->db->where('member_id', $data['member_id']);
        $this->db->where('shop_id', $this->access_workspace['id']);
        $this->db->where('history_id >', 0);
        $this->db->where('exp_date >', date('Y-m-d'));
        $this->db->or_where('exp_date', date('Y-m-d'));
        $this->db->limit($data['points_amount']);
        $this->db->order_by('id', 'ASC');

        $this->db->delete('member_reward_points');
    }

}
