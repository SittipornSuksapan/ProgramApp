<?php

defined('BASEPATH') OR exit('No direct script access allowed');

require_once ROOT_PATH . '/library/gg-php-api-2/vendor/autoload.php';

Class Gg_connect extends CI_Controller {

    private $client, $base_url, $callback_url;

    public function __construct() {
        parent::__construct();
        
        $this->base_url = base_url('index.php');
        $this->callback_url = $this->base_url . '/accounts/gg_connect/do_callback';

        $this->client = new Google_Client();
        //$this->client->setApplicationName("PHP Google OAuth Login Example");
        //$this->client->setRedirectUri($this->callback_url);
        $this->client->addScope("https://www.googleapis.com/auth/userinfo.email");
    }

    public function ios_login() {
        $this->client->setClientId('228878799951-m0sgl4o6v81mba9s0di98t7joi34sk5a.apps.googleusercontent.com');
        $this->client->setClientSecret('');
        $this->client->setDeveloperKey('AIzaSyDFtsSvsf3-N0S77vYPVZwmGJMjGvXdRWA');

        $this->do_connect();
    }

    public function do_login() {
		$this->client->setClientId('228878799951-lhmlo7je30aqpbu7i4h4cb467auqfqo5.apps.googleusercontent.com');

		$this->client->setClientSecret('RtF_-caC03vcpgeV9EiWXdXd');
		$this->client->setDeveloperKey('AIzaSyAaQL-lZTlhZuaDk67TdkaZV2f0ettOJuo');


		$this->do_connect();
    }

    public function do_login_v2() {
		$this->client->setClientId('228878799951-i1gm9arq1f6phmd348qj9stmpo98qgod.apps.googleusercontent.com');

		$this->client->setClientSecret('RtF_-caC03vcpgeV9EiWXdXd');
		$this->client->setDeveloperKey('AIzaSyAaQL-lZTlhZuaDk67TdkaZV2f0ettOJuo');


		$this->do_connect();
    }
    private function do_connect() {
        $gg_token = isset($_POST['m_oauth_token']) ? $_POST['m_oauth_token'] : null;

        if (empty($gg_token)) {
            echo json_encode(array('error' => true, 'message' => 'Bad request.'));
            exit();
        }

        $this->client->setAccessToken($gg_token);

        $user_data = array();

        if ($this->client->getAccessToken()) {
            $objOAuthService = new Google_Service_Oauth2($this->client);
            $user_data = $objOAuthService->userinfo->get();
        }

        if (!isset($user_data['id'])) {
            echo json_encode(array('error' => true, 'message' => 'Invalid access to Google accounts.'));
            exit();
        }

        $idn = isset($user_data['id']) ? $user_data['id'] : null;
        $f_name = isset($user_data['givenName']) ? $user_data['givenName'] : null;
        $l_name = isset($user_data['familyName']) ? $user_data['familyName'] : null;
        $email = isset($user_data['email']) ? $user_data['email'] : null;
        $gender = isset($user_data['gender']) ? $user_data['gender'] : null;
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
        $_SESSION['gg_gender'] = $gender;
        $_SESSION['gg_firstname'] = $f_name;
        $_SESSION['gg_lastname'] = $l_name;
        $_SESSION['gg_picture'] = isset($user_data['picture']) ? $user_data['picture'] : null;

        $this->valid_user();
    }

    private function valid_user() {
        $this->load->model('accounts/Oauth_model');

        //-- go to login
        $access_data = $this->Oauth_model->valid_user('gg');

        //-- login complete
        if (!empty($access_data['access_user_key'])) {
            $this->Oauth_model->update_user('gg', $access_data['access_user']['id']);

            $this->session->set_userdata($access_data);

            $access_data['success'] = true;
            echo json_encode($access_data);
            exit();
        }

        //-- Create new user
        $new_user_data = $this->Oauth_model->create_user('gg');

        if (!empty($new_user_data['access_user_key'])) {
            $this->session->set_userdata($new_user_data);

            $new_user_data['success'] = true;
            echo json_encode($new_user_data);
            exit();
        }

        echo json_encode(array('error' => true, 'message' => 'Cannot create new user from google accounts.'));
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

}
