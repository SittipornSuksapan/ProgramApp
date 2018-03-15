<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Template {

    var $template_view = 'templates/default';
    var $template_data = array();
    var $template_lang = 'english';

    public function set($name, $value) {
        $this->template_data[$name] = $value;
    }

    public function load($view = 'templates/default') {
        $this->template_view = $view;
    }

    public function language($lang) {
        $set_lang = isset($lang) ? strtolower($lang) : get_language();

        $this->template_lang = $set_lang;
    }

    public function view($view, $view_data = array(), $return = FALSE) {
        $TCI = & get_instance();

        $TCI->load->language($this->template_view, $this->template_lang);

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