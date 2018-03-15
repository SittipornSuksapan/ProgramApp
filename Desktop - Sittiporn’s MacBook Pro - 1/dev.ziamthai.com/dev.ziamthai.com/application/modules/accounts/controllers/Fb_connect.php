<?php

defined('BASEPATH') OR exit('No direct script access allowed');

require_once ROOT_PATH . '/library/fb-php-sdk-5/src/Facebook/autoload.php';

Class Fb_connect extends CI_Controller {

    private $fb;
    private $app_id = '779004135581742';
    private $app_secret = 'd3a70746c254329e4ed441749a7d94d4';
    private $base_url, $accounts_url, $signup_url, $login_url, $callback_url;

    public function __construct() {
        parent::__construct();

        $this->base_url = base_url('index.php');
        $this->accounts_url = $this->base_url . '/accounts';
        $this->signup_url = $this->base_url . '/accounts/pages/signup';
        $this->login_url = $this->base_url . '/accounts/pages/login';
        $this->callback_url = $this->base_url . '/accounts/fb_connect/do_callback';

        $this->fb = new Facebook\Facebook([
            'app_id' => $this->app_id,
            'app_secret' => $this->app_secret,
            'default_graph_version' => 'v2.2',
        ]);
    }

    public function do_login() {
        $return_url = isset($_GET['return_url']) ? $_GET['return_url'] : null;

        if ($return_url && empty($_SESSION['login_return_url'])) {
            $_SESSION['login_return_url'] = $return_url;
        }

        $helper = $this->fb->getRedirectLoginHelper();

        $permissions = ['public_profile', 'email'];

        $loginUrl = $helper->getLoginUrl($this->callback_url, $permissions);

        header('Location: ' . $loginUrl);
    }

    public function do_callback() {
        $helper = $this->fb->getRedirectLoginHelper();

        try {
            $accessToken = $helper->getAccessToken();
        } catch (Facebook\Exceptions\FacebookResponseException $e) {
            $err_message = 'Graph returned an error: ' . $e->getMessage();
            header('Location: ' . $this->login_url . '?error_message=' . $err_message);
            exit;
        } catch (Facebook\Exceptions\FacebookSDKException $e) {
            $err_message = 'Facebook SDK returned an error: ' . $e->getMessage();
            header('Location: ' . $this->login_url . '?error_message=' . $err_message);
            exit;
        }

        if (!isset($accessToken)) {
            if ($helper->getError()) {
                //header('HTTP/1.0 401 Unauthorized');

                $err_message = "Error: " . $helper->getError() . "<br>";
                $err_message .= "Error Code: " . $helper->getErrorCode() . "<br>";
                $err_message .= "Error Reason: " . $helper->getErrorReason() . "<br>";
                $err_message .= "Error Description: " . $helper->getErrorDescription() . "<br>";

                header('Location: ' . $this->login_url . '?error_message=' . $err_message);
            } else {
                //header('HTTP/1.0 400 Bad Request');

                header('Location: ' . $this->login_url . '?error_message=Bad request');
            }
            exit;
        }

        $oAuth2Client = $this->fb->getOAuth2Client();

        $tokenMetadata = $oAuth2Client->debugToken($accessToken);

        $tokenMetadata->validateAppId($this->app_id);

        $tokenMetadata->validateExpiration();

        if (!$accessToken->isLongLived()) {
            try {
                $accessToken = $oAuth2Client->getLongLivedAccessToken($accessToken);
            } catch (Facebook\Exceptions\FacebookSDKException $e) {
                $err_message = "Error getting long-lived access token: " . $helper->getMessage();
                header('Location: ' . $this->login_url . '?error_message=' . $err_message);
                exit;
            }
        }

        $get_access_token = (string) $accessToken;

        try {
            $response = $this->fb->get('/me?fields=id,name,email', $get_access_token);
        } catch (Facebook\Exceptions\FacebookResponseException $e) {
            $err_message = 'Graph returned an error: ' . $e->getMessage();
            header('Location: ' . $this->login_url . '?error_message=' . $err_message);
            exit;
        } catch (Facebook\Exceptions\FacebookSDKException $e) {
            $err_message = 'Facebook SDK returned an error: ' . $e->getMessage();
            header('Location: ' . $this->login_url . '?error_message=' . $err_message);
            exit;
        }

        $get_access_user = $response->getGraphUser();

        $_SESSION['fb_token'] = (string) $accessToken;
        $_SESSION['fb_id'] = isset($get_access_user['id']) ? $get_access_user['id'] : '';
        $_SESSION['fb_email'] = isset($get_access_user['email']) ? $get_access_user['email'] : '';
        $_SESSION['fb_name'] = isset($get_access_user['name']) ? $get_access_user['name'] : '';
        $_SESSION['fb_firstname'] = isset($get_access_user['first_name']) ? $get_access_user['first_name'] : '';
        $_SESSION['fb_lastname'] = isset($get_access_user['last_name']) ? $get_access_user['last_name'] : '';
        $_SESSION['fb_picture'] = 'http://graph.facebook.com/' . $get_access_user['id'] . '/picture?type=large';

        $this->valid_user();
    }

    public function do_logout() {
        $helper = $this->fb->getRedirectLoginHelper();

        $q_token = isset($_REQUEST['fb_token']) ? $_REQUEST['fb_token'] : null;
        $get_token = isset($_SESSION['fb_token']) ? $_SESSION['fb_token'] : $q_token;
        $set_return_url = isset($_REQUEST['return_url']) ? $_REQUEST['return_url'] : $this->base_url;

        $logoutUrl = $helper->getLogoutUrl($get_token, $set_return_url);

        unset($_SESSION['fb_token'], $_SESSION['fb_id'], $_SESSION['fb_name'], $_SESSION['fb_email']);

        $this->session->sess_destroy();

        session_destroy();

        header('Location: ' . $logoutUrl);
    }

    public function valid_user() {
        $this->load->model('accounts/Oauth_model');

        $return_url = isset($_SESSION['login_return_url']) ? $_SESSION['login_return_url'] : $this->accounts_url;

        if (isset($_SESSION['login_return_url'])) {
            unset($_SESSION['login_return_url']);
        }

        //-- go to login
        $access_data = $this->Oauth_model->valid_user('fb');

        //-- login complete
        if (!empty($access_data['access_user_key'])) {
            $this->Oauth_model->update_user('fb', $access_data['access_user']['id']);

            $this->session->set_userdata($access_data);

            redirect($return_url);
            exit();
        }

        //-- Create new user
        $new_user_data = $this->Oauth_model->create_user('fb');

        if (!empty($new_user_data['access_user_key'])) {
            $this->session->set_userdata($new_user_data);

            redirect($return_url);
            exit();
        }

        redirect($this->signup_url . '/?error_message=Cannot create new user from facebook accounts.');
    }

}
