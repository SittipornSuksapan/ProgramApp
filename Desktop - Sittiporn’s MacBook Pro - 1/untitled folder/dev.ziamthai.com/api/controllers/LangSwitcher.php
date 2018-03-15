<?php

defined('BASEPATH') OR exit('No direct script access allowed');

Class LangSwitcher extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->helper('url');
    }

    function switchLanguage($language = "") {
        $language = ($language != "") ? $language : "english";
        $this->session->set_userdata('site_lang', $language);
        $return_url = isset($_REQUEST['return_url']) ? $_REQUEST['return_url'] : base_url();
        redirect($return_url);
    }

}
