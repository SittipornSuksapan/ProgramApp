<?php

defined('BASEPATH') OR exit('No direct script access allowed');

if (empty($_SERVER['HTTPS']) || $_SERVER['HTTPS'] == "off") {
    $redirect = 'https://' . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];
    header('HTTP/1.1 301 Moved Permanently');
    header('Location: ' . $redirect);
    exit();
}

class Home extends CI_Controller {

    private $apps_name = 'admin_panel';

    public function __construct() {
        parent:: __construct();

        $this->template->load('templates/admin_panel');
        $this->template->set('apps_name', $this->apps_name);
    }

    public function index() {
        if (!$this->session->has_userdata($this->apps_name . '_uid')) {
            redirect($this->apps_name . '/login');
            exit();
        }
				
				$uID=$this->session->userdata($this->apps_name . '_uid');
				$uType=$this->session->userdata($this->apps_name . '_utype');
				$uName=$this->session->userdata($this->apps_name . '_uname');
				
				if ($uType=='admin') {
					$this->template->set('sidebar', array('view' => 'admin_panel/cpanel_sidebar_admin', 'lang' => ''));
				} else {
					$this->load->model($this->apps_name . '/business_header/Bssh_data_model');
					$data=null;
					$owner=$this->Bssh_data_model->getShopByOwner($uID);
					if ($owner['result']) {
						$data['owner']=$owner['data'];
					} 
					$this->template->set('sidebar', array('view' => 'admin_panel/cpanel_sidebar', 'lang' => '','sidebar'=>array('sidebar'=>$data['owner'])));
				}

				$this->load->language($this->apps_name . '/cpanel');

        $this->template->set('title', $this->lang->line('page_title'));
        $this->template->view($this->apps_name . '/cpanel');
    }

    public function logout() {
        $this->load->model($this->apps_name . '/User_auth_model');

        $this->User_auth_model->unset_user_login();

        $redirect_url = $this->input->get('return_url');

        if (empty($redirect_url)) {
            $redirect_url = site_url($this->apps_name);
        }

        redirect($redirect_url);
    }

}
