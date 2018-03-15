<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Find extends CI_Controller {

    private $access_module, $access_lang, $access_user;

    public function __construct() {
        parent:: __construct();

        $this->load->model('accounts/Member_model');

        $this->access_user = $this->Member_model->valid_user();

        $this->access_module = $this->router->fetch_module();

        $this->access_lang = get_language();

        $this->template->language($this->access_lang);

        $this->template->load($this->access_module . '/templates/default');
    }

    public function index() {
        $this->load->language($this->access_module . '/business/finder', $this->access_lang);
        
        $this->template->set('title', $this->lang->line('title'));
        
        $this->template->set('xs_topnav_right','<button class="btn btn-link btn-link-icon" onclick="$(\'html, body\').animate({scrollTop: 0}, 800);"><i class="fa fa-2x fa-map"></i></button>');
        
        $this->template->view($this->access_module . '/business/finder', array(
            'access_module' => $this->access_module,
            'access_lang' => $this->access_lang,
            'access_user' => $this->access_user
        ));
    }

}
