<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Signup_model extends CI_Model {

    function __construct() {
        parent:: __construct();
    }

    private function form_valid() {
        if (empty($_POST['m_firstname'])) {
            echo json_encode(array('error' => true, 'message' => $this->lang->line('insert_your_firstname'), 'focus' => 'm_firstname'));
            exit();
        }

        if (empty($_POST['m_lastname'])) {
            echo json_encode(array('error' => true, 'message' => $this->lang->line('insert_your_lastname'), 'focus' => 'm_lastname'));
            exit();
        }

        if (empty($_POST['m_email'])) {
            echo json_encode(array('error' => true, 'message' => $this->lang->line('insert_your_email'), 'focus' => 'm_email'));
            exit();
        }

        if (!filter_var($_POST['m_email'], FILTER_VALIDATE_EMAIL)) {
            echo json_encode(array('error' => true, 'message' => $this->lang->line('your_email_invalid_format'), 'focus' => 'm_email'));
            exit();
        }

        if (empty($_POST['m_pass1']) || empty($_POST['m_pass2'])) {
            echo json_encode(array('error' => true, 'message' => $this->lang->line('insert_your_password'), 'focus' => 'm_pass1'));
            exit();
        }

        if ($_POST['m_pass1'] != $_POST['m_pass2']) {
            echo json_encode(array('error' => true, 'message' => $this->lang->line('your_password_not_match'), 'focus' => 'm_pass2'));
            exit();
        }
    }

    private function data_valid() {
        $email = isset($_POST['m_email']) ? $_POST['m_email'] : null;

        if (empty($email)) {
            return null;
        }

        $this->db->where('memh_email', $email);
        $this->db->from('member_header');

        $email_count = $this->db->count_all_results();

        if (intval($email_count) > 0) {
            echo json_encode(array('error' => true, 'message' => $this->lang->line('your_email_has_exists'), 'focus' => 'm_email'));
            exit();
        }
    }

    private function data_setup() {
        $fb_id_ss = isset($_SESSION['fb_id']) ? $_SESSION['fb_id'] : null;
        $gg_id_ss = isset($_SESSION['gg_id']) ? $_SESSION['gg_id'] : null;
        $fb_id = isset($_POST['m_fb_id']) ? $_POST['m_fb_id'] : $fb_id_ss;
        $gg_id = isset($_POST['m_gg_id']) ? $_POST['m_gg_id'] : $gg_id_ss;
        $firstname = isset($_POST['m_firstname']) ? $_POST['m_firstname'] : '';
        $lastname = isset($_POST['m_lastname']) ? $_POST['m_lastname'] : '';
        $set_provider = 'website';
        $set_activated = 0;
        $set_pic_url = '';

        if (!empty($fb_id)) {
            $set_provider = 'facebook';
            $set_activated = 1;
            $set_pic_url = 'http://graph.facebook.com/' . $fb_id . '/picture?type=large';
        }

        if (!empty($gg_id)) {
            $set_provider = 'google';
            $set_activated = 1;
        }

        return array(
            'memh_fb_id' => $fb_id,
            'memh_email' => isset($_POST['m_email']) ? strtolower($_POST['m_email']) : '',
            'memh_password' => isset($_POST['m_pass2']) ? sha1($_POST['m_pass2']) : '',
            'memh_display' => $firstname . ' ' . $lastname,
            'memh_firstname' => $firstname,
            'memh_lastname' => $lastname,
            'memh_pictureUrl' => $set_pic_url,
            'memh_activated' => $set_activated,
            'memh_status' => 1,
            'memh_cdate' => date('Y-m-d H:i:s')
        );
    }

    public function data_save() {
        $this->form_valid();

        $this->data_valid();

        $save_data = $this->data_setup();

        $this->db->insert('member_header', $save_data);

        $result = ($this->db->affected_rows() != 1) ? false : true;

        if (!$result) {
            return array('error' => true, 'message' => $this->lang->line('cannot_create_new_accounts'));
        }

        $success_msg = $this->lang->line('create_new_accounts_complete');

        if (empty($save_data['memh_fb_id'])) {
            $success_msg .= '<br>' . $this->lang->line('please_verify_your_email');
            $this->send_verify_email($save_data);
        }

        return array('success' => true, 'message' => $success_msg);
    }

    public function send_verify_email($user_data) {
        $user_data['memh_pass_human'] = isset($_POST['m_pass2']) ? $_POST['m_pass2'] : '';

        $user_data['memh_confirm_code'] = substr(strtoupper($user_data['memh_password']), 6, 16);

        $mail_message = $this->load->view('mail_template', array(
            'mail_subject' => $this->lang->line('verify_mail_subject'),
            'mail_message' => $this->load->view('mail_verify_signup', $user_data, true)
                ), true);

        $this->load->config('email');
        $this->load->library('email');

        $this->email->initialize();
        $this->email->clear();
        $this->email->to($user_data['memh_email']);
        $this->email->from($this->config->item('sender_email'), $this->config->item('sender_name'));
        $this->email->subject($this->lang->line('verify_mail_subject'));
        $this->email->message($mail_message);
        $this->email->send();
    }

}
