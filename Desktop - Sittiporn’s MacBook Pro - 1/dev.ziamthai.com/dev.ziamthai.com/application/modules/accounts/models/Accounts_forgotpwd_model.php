<?php

Class Accounts_forgotpwd_model extends CI_Model {

    public function __construct() {
        parent::__construct();

        $this->load->language('api/accounts_forgotpwd');
    }

    public function reset_pass_valid($email, $code) {
        $this->db->select('memh_id,memh_password,memh_activated');
        $this->db->from('member_header');
        $this->db->where('memh_email', $email);

        $query = $this->db->get();

        if (!$query->row_array()) {
            return array('error' => true, 'message' => $this->lang->line('notfound_user_accounts'));
        }

        $user_data = $query->row_array();

        $code_check = substr(strtoupper($user_data['memh_password']), 1, 24);

        if ($code != $code_check) {
            return array('error' => true, 'message' => $this->lang->line('invalid_confirm_code'));
        }

        return array('success' => true, 'email' => $email, 'code' => $code, 'memh_id' => $user_data['memh_id']);
    }

    public function reset_password() {
        $email = isset($_POST['m_email']) ? $_POST['m_email'] : null;
        $code = isset($_POST['m_code']) ? $_POST['m_code'] : null;
        $pass1 = isset($_POST['m_pass1']) ? $_POST['m_pass1'] : null;
        $pass2 = isset($_POST['m_pass2']) ? $_POST['m_pass2'] : null;

        $valid_code = $this->reset_pass_valid($email, $code);

        if (isset($valid_code['error'])) {
            return $valid_code;
        }

        if (empty($pass1)) {
            return array('error' => true, 'message' => $this->lang->line('insert_your_password'), 'focus' => 'm_pass1');
        }

        if ($pass1 != $pass2) {
            return array('error' => true, 'message' => $this->lang->line('your_password_not_match'), 'focus' => 'm_pass2');
        }

        $this->update_pass($valid_code['memh_id'], $pass2);

        return array('success' => true, 'message' => $this->lang->line('reset_password_complete'));
    }

    public function data_check() {
        $c_email = isset($_POST['m_email']) ? trim($_POST['m_email'], ' ') : null;

        $this->db->select('memh_id,memh_email,memh_password,memh_display,memh_firstname,memh_lastname,memh_activated');
        $this->db->from('member_header');
        $this->db->where('memh_email', $c_email);

        $query = $this->db->get();

        if (!$query->row_array()) {
            return array('error' => true, 'message' => $this->lang->line('notfound_user_accounts'));
        }

        $user_data = $query->row_array();

        $this->send_mail($user_data);

        return array('success' => true, 'message' => $this->lang->line('check_mail_reset_new_pass'));
    }

    private function send_mail($user_data) {
        $user_data['memh_confirm_code'] = substr(strtoupper($user_data['memh_password']), 1, 24);

        $mail_message = $this->load->view('templates/default_mail', array(
            'mail_subject' => $this->lang->line('verify_mail_subject'),
            'mail_message' => $this->load->view('mail_verify_forgotpwd', $user_data, true)
                ), true);

        $this->load->config('email');
        $this->load->library('email');

        $this->email->initialize();
        $this->email->clear();
        $this->email->from($this->config->item('sender_email'), $this->config->item('sender_name'));
        $this->email->to($user_data['memh_email']);
        $this->email->subject($this->lang->line('verify_mail_subject'));
        $this->email->message($mail_message);
        $this->email->send();

        $this->email->print_debugger(array('headers', 'subject', 'body'));
    }

    private function update_pass($memh_id, $pass) {
        $this->db->where('memh_id', $memh_id);
        $this->db->update('member_header', array(
            'memh_password' => sha1($pass)
        ));
    }

    public function data_resend() {
        $c_email = isset($_POST['c_email']) ? $_POST['c_email'] : null;

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
