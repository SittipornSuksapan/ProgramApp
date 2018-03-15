<?php

defined('BASEPATH') OR exit('No direct script access allowed');

require_once ROOT_PATH . '/library/fb-php-sdk-5/src/Facebook/autoload.php';

Class Fb_connect extends CI_Controller {

    private $fb, $app_id, $app_secret, $base_url;

    public function __construct() {
        parent::__construct();

        $this->base_url = base_url('index.php');
    }

    public function ios_login() {
        //same as website
        //
        $this->app_id = '779004135581742';
        $this->app_secret = 'd3a70746c254329e4ed441749a7d94d4';

        $this->connected();
    }

    public function do_login() {
		// City Thai Portland V1
		$this->app_id = '214208529037100';
		$this->app_secret = '976c81566a169e977475f6b6daa63d6c';

		$this->connected();
    }

    public function do_login_v2() {

//		$this->app_id = '315913542221442';
//		$this->app_secret = '48d132302d1b4e92d07ad573269b75a1';
		// CITYTHAI V2
		$this->app_id = '862338467260346';
		$this->app_secret = '930ab380eb29bb96343eb83b3f454d66';
		$this->connected();
    }
    public function do_login1() {
        // Dokbua Kitchen Android
        $this->app_id = '1847729788840138';
        $this->app_secret = 'dfb0d71a7c10e7378afb7b44751d068d';

        $this->connected();
    }

    public function do_login2() {
        // Dokbua Kitchen Android (New)
        $this->app_id = '1551534708224048';
        $this->app_secret = 'a7bb844096875e0fa93b4281d1a356ce';

        $this->connected();
    }

    public function do_login_citythai() {
        // City Thai Portland Android
        $this->app_id = '1685046291800445';
        $this->app_secret = 'e3b943b0fd28c379e1ddcacfdae801dd';

        $this->connected();
    }

    private function connected() {
        $accessToken = isset($_POST['m_oauth_token']) ? $_POST['m_oauth_token'] : null;

        if (empty($accessToken)) {
            echo json_encode(array('error' => true, 'message' => 'Bad request.'));
            exit();
        }

        $this->fb = new Facebook\Facebook([
            'app_id' => $this->app_id,
            'app_secret' => $this->app_secret,
            'default_graph_version' => 'v2.2',
        ]);

        $oAuth2Client = $this->fb->getOAuth2Client();

        try {
            $tokenMetadata = $oAuth2Client->debugToken($accessToken);
            $tokenMetadata->validateAppId($this->app_id);
            $tokenMetadata->validateExpiration();

            $response = $this->fb->get('/me?fields=id,name,first_name,last_name,email,gender', $accessToken);
        } catch (Facebook\Exceptions\FacebookResponseException $e) {
            $err_message = 'Graph returned an error: ' . $e->getMessage();
            echo json_encode(array('error' => true, 'message' => $err_message));
            exit();
        } catch (Facebook\Exceptions\FacebookSDKException $e) {
            $err_message = 'Facebook SDK returned an error: ' . $e->getMessage();
            echo json_encode(array('error' => true, 'message' => $err_message));
            exit();
        }

        $get_access_user = $response->getGraphUser();

        $_SESSION['fb_token'] = (string) $accessToken;
        $_SESSION['fb_id'] = isset($get_access_user['id']) ? $get_access_user['id'] : '';
        $_SESSION['fb_email'] = isset($get_access_user['email']) ? $get_access_user['email'] : '';
        $_SESSION['fb_name'] = isset($get_access_user['name']) ? $get_access_user['name'] : '';
        $_SESSION['fb_firstname'] = isset($get_access_user['first_name']) ? $get_access_user['first_name'] : '';
        $_SESSION['fb_lastname'] = isset($get_access_user['last_name']) ? $get_access_user['last_name'] : '';
        $_SESSION['fb_gender'] = isset($get_access_user['gender']) ? $get_access_user['gender'] : '';
        $_SESSION['fb_picture'] = 'http://graph.facebook.com/' . $get_access_user['id'] . '/picture?type=large';

        $this->valid_user();
    }

    private function valid_user() {
        $this->load->model('accounts/Oauth_model');

        //-- go to login
        $access_data = $this->Oauth_model->valid_user('fb');

        //-- login complete
        if (!empty($access_data['access_user_key'])) {
            $this->Oauth_model->update_user('fb', $access_data['access_user']['id']);

            $this->session->set_userdata($access_data);

            $access_data['success'] = true;
            echo json_encode($access_data);
            exit();
        }

        //-- Create new user
        $new_user_data = $this->Oauth_model->create_user('fb');

        if (!empty($new_user_data['access_user_key'])) {
            $this->session->set_userdata($new_user_data);

            $new_user_data['success'] = true;
            echo json_encode($new_user_data);
            exit();
        }

        echo json_encode(array('error' => true, 'message' => 'Cannot create new user from facebook accounts.'));
    }

    public function do_logout() {
        $helper = $this->fb->getRedirectLoginHelper();

        $q_token = isset($_REQUEST['access_token']) ? $_REQUEST['access_token'] : null;
        $q_token = isset($_REQUEST['fb_token']) ? $_REQUEST['fb_token'] : null;
        $get_token = isset($_SESSION['fb_token']) ? $_SESSION['fb_token'] : $q_token;
        $set_return_url = isset($_REQUEST['return_url']) ? $_REQUEST['return_url'] : $this->base_url;

        $logoutUrl = $helper->getLogoutUrl($get_token, $set_return_url);

        unset($_SESSION['fb_token'], $_SESSION['fb_id'], $_SESSION['fb_name'], $_SESSION['fb_email']);

        $this->session->sess_destroy();

        session_destroy();

        header('Location: ' . $logoutUrl);
    }

}
