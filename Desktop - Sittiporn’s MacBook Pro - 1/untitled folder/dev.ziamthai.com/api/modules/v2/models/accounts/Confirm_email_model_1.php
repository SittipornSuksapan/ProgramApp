<?php

Class Confirm_email_model extends CI_Model {

    public function __construct() {
        parent::__construct();
    }

    public function data_check() {
        $c_email = isset($_POST['m_user']) ? $_POST['m_user'] : null;
        $c_code = isset($_POST['m_code']) ? $_POST['m_code'] : null;

        $this->db->select('memh_id,memh_password,memh_activated');
        $this->db->from('member_header');
        $this->db->where('memh_email', $c_email);

        $query = $this->db->get();

        if (!$query->row_array()) {
            return array('error' => true, 'message' => $this->lang->line('notfound_user_accounts'));
        }

        $user_data = $query->row_array();

        if (!empty($user_data['memh_activated'])) {
            return array('error' => true, 'message' => $this->lang->line('has_been_activated'));
        }

        $c_code_check = substr(strtoupper($user_data['memh_password']), 6, 16);

        if ($c_code != $c_code_check) {
            return array('error' => true, 'message' => $this->lang->line('invalid_confirm_code'));
        }

        $this->update_activated($user_data);

        return array('success' => true, 'message' => $this->lang->line('complete_activated_accounts'));
    }

    private function update_activated($user_data) {
        $this->db->where('memh_id', $user_data['memh_id']);
        $this->db->update('member_header', array(
            'memh_activated' => 1
        ));
    }

    private function update_pass($user_data) {
        $this->db->where('memh_id', $user_data['memh_id']);
        $this->db->update('member_header', array(
            'memh_password' => $user_data['memh_password']
        ));
    }

    public function data_resend() {
        $c_email = isset($_POST['m_user']) ? $_POST['m_user'] : null;

        //$this->db->select('memh_id,memh_activated,memh_display,memh_firstname,memh_lastname');
        $this->db->select('*');
        $this->db->from('member_header');
        $this->db->where('memh_email', $c_email);

        $query = $this->db->get();

        if (!$query->row_array()) {
            return array('error' => true, 'message' => $this->lang->line('notfound_user_accounts'));
        }

        $user_data = $query->row_array();

        if (!empty($user_data['memh_activated'])) {
            return array('error' => true, 'message' => $this->lang->line('has_been_activated'));
        }

        if (empty($user_data['memh_password'])) {
            $user_data['memh_password'] = sha1($user_data['memh_id'] . $user_data['memh_email']);
            $this->update_pass($user_data);
        }

        $this->load->model('Accounts_signup_model');
        $this->Accounts_signup_model->send_verify_email($user_data);

        return array('success' => true, 'message' => $this->lang->line('resend_complete'));
    }

}
