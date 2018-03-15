<?php

defined('BASEPATH') OR exit('No direct script access allowed');

Class Pages extends CI_Controller {

    private $access_module, $access_user, $access_lang;

    public function __construct() {
        parent::__construct();

        $this->load->model($this->access_module . '/Member_model');

        $this->access_user = $this->Member_model->valid_user();

        $this->access_module = $this->router->fetch_module();

        $this->access_lang = get_language();

        $this->template->language($this->access_lang);

        $this->template->load('food/templates/default');
    }

    public function my() {
        if (empty($this->access_user['id'])) {
            redirect($this->access_module . '/pages/login');
            exit();
        }

        $this->load->language($this->access_module . '/accounts_my', $this->access_lang);

        $this->template->set('title', $this->lang->line('page_title'));

        $this->template->view($this->access_module . '/accounts_my', array(
            'access_module' => $this->access_module,
            'access_lang' => $this->access_lang,
            'access_user' => $this->Member_model->get_data($this->access_user['id'])
        ));
    }

    public function login() {
        if (!empty($this->access_user['id'])) {
            redirect($this->access_module . '/pages/my');
            exit();
        }

        $this->load->language($this->access_module . '/accounts_form', $this->access_lang);

        $this->template->set('title', $this->lang->line('page_title_login'));

        $this->template->view($this->access_module . '/accounts_form_login', array(
            'access_module' => $this->access_module,
            'access_lang' => $this->access_lang,
            'access_user' => $this->access_user
        ));
    }

    public function signup() {
        if (!empty($this->access_user['id'])) {
            redirect($this->access_module . '/pages/my');
            exit();
        }

        $this->load->language($this->access_module . '/accounts_form', $this->access_lang);

        $this->template->set('title', $this->lang->line('page_title'));

        $this->template->view($this->access_module . '/accounts_form', array(
            'access_module' => $this->access_module,
            'access_lang' => $this->access_lang,
            'access_user' => $this->access_user
        ));
    }

    public function confirm_email() {
        if (!empty($this->access_user['id'])) {
            redirect($this->access_module . '/pages/my');
            exit();
        }

        $this->load->language($this->access_module . '/cfmemail_form', $this->access_lang);

        $this->template->set('title', $this->lang->line('page_title'));

        $this->template->view($this->access_module . '/cfmemail_form', array(
            'access_module' => $this->access_module,
            'access_lang' => $this->access_lang,
            'access_user' => $this->access_user
        ));
    }

    public function forgot_password() {
        if (!empty($this->access_user['id'])) {
            redirect($this->access_module . '/pages/my');
            exit();
        }

        $this->load->language($this->access_module . '/forgotpass_form', $this->access_lang);

        $this->template->set('title', $this->lang->line('page_title'));

        $this->template->view($this->access_module . '/forgotpass_form', array(
            'access_module' => $this->access_module,
            'access_lang' => $this->access_lang,
            'access_user' => $this->access_user
        ));
    }

    public function reset_password() {
        if (!empty($this->access_user['id'])) {
            redirect($this->access_module . '/pages/my');
            exit();
        }

        $email = isset($_GET['email']) ? $_GET['email'] : null;
        $code = isset($_GET['code']) ? $_GET['code'] : null;

        $this->load->model('accounts/Accounts_forgotpwd_model');
        $check_result = $this->Accounts_forgotpwd_model->reset_pass_valid($email, $code);

        $this->load->language($this->access_module . '/resetpass_form', $this->access_lang);

        $this->template->set('title', $this->lang->line('page_title'));

        $this->template->view($this->access_module . '/resetpass_form', array(
            'check_result' => $check_result,
            'access_module' => $this->access_module,
            'access_lang' => $this->access_lang,
            'access_user' => $this->access_user
        ));
    }

    public function logout() {
        $logout_url = site_url($this->access_module . '/pages/logout');

        $_SESSION['logout_return_url'] = isset($_REQUEST['logout_return_url']) ? $_REQUEST['logout_return_url'] : null;

        //fb_logout
        if (!empty($_SESSION['fb_token'])) {
            header('Location: ' . site_url($this->access_module . '/fb_connect/do_logout' . '/?return_url=' . $logout_url));
            exit();
        }

        //gg_logout
        if (!empty($_SESSION['gg_token'])) {
            header('Location: ' . site_url($this->access_module . '/gg_connect/do_logout' . '/?return_url=' . $logout_url));
            exit();
        }

        $redirect_to = isset($_SESSION['logout_return_url']) ? $_SESSION['logout_return_url'] : null;

        $this->session->sess_destroy();

        session_destroy();

        if (!$redirect_to) {
            $redirect_to = site_url('food');
        }

        header('Location: ' . $redirect_to);
    }

    public function user_account_policy() {
        $this->load->lang('user_policy', $this->access_lang);
        $this->template->set('title', $this->lang->line('page_title'));
        $this->template->view($this->access_module . '/user_policy', array(
            'access_module' => $this->access_module,
            'access_lang' => $this->access_lang,
            'access_user' => $this->access_user
        ));
    }

    public function terms_of_use() {
        $this->template->set('title', $this->lang->line('page_title'));
        $this->template->view($this->access_module . '/terms_of_use', array(
            'access_module' => $this->access_module,
            'access_lang' => $this->access_lang,
            'access_user' => $this->access_user
        ));
    }

}
