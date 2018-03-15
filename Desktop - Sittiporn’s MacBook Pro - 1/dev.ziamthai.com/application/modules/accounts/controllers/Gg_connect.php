<?php

defined('BASEPATH') OR exit('No direct script access allowed');

require_once ROOT_PATH . '/library/gg-php-api-2/vendor/autoload.php';

Class Gg_connect extends CI_Controller {

    private $client;
    private $client_id = '228878799951-lhmlo7je30aqpbu7i4h4cb467auqfqo5.apps.googleusercontent.com';
    private $client_secret = 'RtF_-caC03vcpgeV9EiWXdXd';
    private $api_key = 'AIzaSyAaQL-lZTlhZuaDk67TdkaZV2f0ettOJuo';
    private $base_url, $accounts_url, $signup_url, $login_url, $callback_url;

    public function __construct() {
        parent::__construct();

        $this->base_url = base_url('index.php');
        $this->accounts_url = $this->base_url . '/accounts';
        $this->signup_url = $this->base_url . '/accounts/pages/signup';
        $this->login_url = $this->base_url . '/accounts/pages/login';
        $this->callback_url = $this->base_url . '/accounts/gg_connect/do_callback';

        $this->client = new Google_Client();
        $this->client->setApplicationName("PHP Google OAuth Login Example");
        $this->client->setClientId($this->client_id);
        $this->client->setClientSecret($this->client_secret);
        $this->client->setRedirectUri($this->callback_url);
        $this->client->setDeveloperKey($this->api_key);
        $this->client->addScope("https://www.googleapis.com/auth/userinfo.email");
    }

    public function do_login() {
        $return_url = isset($_GET['return_url']) ? $_GET['return_url'] : null;

        if ($return_url && empty($_SESSION['login_return_url'])) {
            $_SESSION['login_return_url'] = $return_url;
        }

        $authUrl = $this->client->createAuthUrl();

        header('Location: ' . $authUrl);
    }

    public function do_callback() {
        if (isset($_GET['code'])) {
            $this->client->authenticate($_GET['code']);
            $_SESSION['gg_token'] = $this->client->getAccessToken();
            header('Location: ' . filter_var($this->callback_url, FILTER_SANITIZE_URL));
        }

        //Set Access Token to make Request
        if (isset($_SESSION['gg_token']) && $_SESSION['gg_token']) {
            $this->client->setAccessToken($_SESSION['gg_token']);
        }

        $user_data = array();

        if ($this->client->getAccessToken()) {
            $objOAuthService = new Google_Service_Oauth2($this->client);
            $user_data = $objOAuthService->userinfo->get();
        }

        if (!isset($user_data['id'])) {
            unset($_SESSION['gg_token']);

            $err_message = 'Invalid access to Google accounts.';
            header('Location: ' . $this->login_url . '?error_message=' . $err_message);
            exit();
        }

        $idn = isset($user_data['id']) ? $user_data['id'] : null;
        $f_name = isset($user_data['givenName']) ? $user_data['givenName'] : null;
        $l_name = isset($user_data['familyName']) ? $user_data['familyName'] : null;
        $email = isset($user_data['email']) ? $user_data['email'] : null;
        $name = isset($user_data['name']) ? $user_data['name'] : $f_name;

        if (empty($name)) {
            if (!empty($email)) {
                $email_arr = explode('@', $email);
                $name = isset($email_arr[0]) ? $email_arr[0] : null;
            }

            if (empty($name)) {
                $name = $idn;
            }
        }

        $_SESSION['gg_id'] = $idn;
        $_SESSION['gg_email'] = $email;
        $_SESSION['gg_name'] = $name;
        $_SESSION['gg_firstname'] = $f_name;
        $_SESSION['gg_lastname'] = $l_name;
        $_SESSION['gg_picture'] = isset($user_data['picture']) ? $user_data['picture'] : null;

        $this->valid_user();
    }

    public function do_logout() {
        $set_return_url = isset($_REQUEST['return_url']) ? $_REQUEST['return_url'] : $this->base_url;

        //Logout
        unset($_SESSION['gg_token'], $_SESSION['gg_email'], $_SESSION['gg_name'], $_SESSION['gg_firstname'], $_SESSION['gg_lastname'], $_SESSION['gg_picture']);

        $this->client->revokeToken();

        $this->session->sess_destroy();

        session_destroy();

        header('Location: https://www.google.com/accounts/Logout?continue=https://appengine.google.com/_ah/logout?continue=' . $set_return_url);
    }

    public function valid_user() {
        $this->load->model('accounts/Oauth_model');

        $return_url = isset($_SESSION['login_return_url']) ? $_SESSION['login_return_url'] : $this->accounts_url;

        if (isset($_SESSION['login_return_url'])) {
            unset($_SESSION['login_return_url']);
        }

        //-- go to login
        $access_data = $this->Oauth_model->valid_user('gg');

        //-- login complete
        if (!empty($access_data['access_user_key'])) {
            $this->Oauth_model->update_user('gg', $access_data['access_user']['id']);

            $this->session->set_userdata($access_data);

            redirect($return_url);
            exit();
        }

        //-- Create new user
        $new_user_data = $this->Oauth_model->create_user('gg');

        if (!empty($new_user_data['access_user_key'])) {
            $this->session->set_userdata($new_user_data);

            redirect($return_url);
            exit();
        }

        redirect($this->signup_url . '/?error_message=Cannot create new user from google accounts.');
    }

}
