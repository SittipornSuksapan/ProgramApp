<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Template {

    var $template_view = 'templates/default';
    var $template_data = array();

    function set($name, $value) {
        $this->template_data[$name] = $value;
    }

    function load($view) {
        $this->template_view = $view;
    }

    function view($view, $view_data = array(), $return = FALSE) {
        $site_lang = isset($_SESSION['site_lang']) ? $_SESSION['site_lang'] : 'english';

        $TCI = & get_instance();

        $TCI->load->language($this->template_view, $site_lang);

        $page_title = isset($view_data['title']) ? $view_data['title'] : null;

        if (!empty($page_title) && !isset($this->template_data['title'])) {
            $this->set('title', $page_title);
        }

        $view_output = $TCI->load->view($view, $view_data, TRUE);

        $this->set('content', $view_output);

        return $TCI->load->view($this->template_view, $this->template_data, $return);
    }

}

/* End of file Template.php */
/* Location: ./system/application/libraries/Template.php */