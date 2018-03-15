<?php

defined('BASEPATH') OR exit('No direct script access allowed');

Class Accounts extends CI_Controller {

    private $mod_name, $site_lang;

    public function __construct() {
        parent::__construct();

        $this->mod_name = $this->router->fetch_module();

        $this->load->model($this->mod_name . '/Api_model');

        $this->Api_model->valid_access();

        $this->site_lang = $this->Api_model->init_lang();
    }

    public function login() {
        $this->load->language($this->mod_name . '/accounts/login', $this->site_lang);

        $this->load->model($this->mod_name . '/accounts/Login_model');

        $result = $this->Login_model->find_user();

        if (isset($_SESSION['login_return_url'])) {
            unset($_SESSION['login_return_url']);
        }

        if (isset($result['success']) && !empty($result['access_user_key'])) {
            $_SESSION['access_user_key'] = $result['access_user_key'];
            $_SESSION['access_user'] = $result['access_user'];
        }

        echo json_encode($result);
    }

    public function idn_barcode() {
        $this->load->model($this->mod_name . '/accounts/Login_model');
        $this->load->model($this->mod_name . '/accounts/Member_idn_model');

        $user_data = $this->Login_model->valid_access();

        if (empty($user_data['id'])) {
            return $this->Member_idn_model->idn_barcode_img(null);
        }

        if (empty($user_data['idn'])) {
            $user_data['idn'] = $this->Member_idn_model->idn_generator($user_data);
            $this->db->reset_query();
            $this->db->where('memh_id', $user_data['id']);
            $this->db->update('member_header', array('memh_idn' => $user_data['idn']));
        }

        return $this->Member_idn_model->idn_barcode_img($user_data['idn']);
    }

    public function signup() {
        $this->load->language($this->mod_name . '/accounts/signup', $this->site_lang);

        $this->load->model($this->mod_name . '/accounts/Signup_model');

        $result = $this->Signup_model->data_save();

        echo json_encode($result);
    }

    public function pwd_request() {
        $this->load->language($this->mod_name . '/accounts/password_reset', $this->site_lang);

        $this->load->model($this->mod_name . '/accounts/Password_reset_model');

        $result = $this->Password_reset_model->data_check();

        echo json_encode($result);
    }

    public function pwd_reset() {
        $this->load->language($this->mod_name . '/accounts/password_reset', $this->site_lang);

        $this->load->model($this->mod_name . '/accounts/Password_reset_model');

        $result = $this->Password_reset_model->reset_password();

        echo json_encode($result);
    }

    public function confirm_email() {
        $this->load->language($this->mod_name . '/accounts/confirm_email', $this->site_lang);

        $this->load->model($this->mod_name . '/accounts/Confirm_email_model');

        $result = $this->Confirm_email_model->data_check();

        echo json_encode($result);
    }

    public function confirm_email_resend() {
        $this->load->language($this->mod_name . '/accounts/confirm_email', $this->site_lang);

        $this->load->model($this->mod_name . '/accounts/Confirm_email_model');

        $result = $this->Confirm_email_model->data_resend();

        echo json_encode($result);
    }

}
