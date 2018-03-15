<?php

Class LanguageLoader {

    function initialize() {
        $ci = & get_instance();
        
        $ci->load->helper('language');

        if (!isset($_SESSION['site_lang'])) {
            $_SESSION['site_lang'] = 'english';
        }

        /* $siteLang = $ci->session->userdata('site_lang');

          if ($siteLang) {
          $ci->lang->load('message',$siteLang);
          } else {
          $ci->lang->load('message','english');
          } */
    }

}
