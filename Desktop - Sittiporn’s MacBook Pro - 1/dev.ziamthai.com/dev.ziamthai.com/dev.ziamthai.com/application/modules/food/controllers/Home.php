<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {

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
        $this->load->language($this->access_module . '/homepage', $this->access_lang);

        $this->template->view($this->access_module . '/homepage/index', array(
            'access_module' => $this->access_module,
            'access_lang' => $this->access_lang,
            'access_user' => $this->access_user,
            'sbmnu_active' => 'home'
        ));
    }

    public function feed() {
        $type = $this->uri->segment(4,'feed');
        $posts_type = strtolower($type);

        if ($posts_type == 'feed') {
            $posts_type = '';
        }

        $this->load->language($this->access_module . '/homepage', $this->access_lang);

        $this->template->set('title', $this->lang->line('title_' . $type));

        $this->template->view($this->access_module . '/homepage/feed', array(
            'access_module' => $this->access_module,
            'access_lang' => $this->access_lang,
            'access_user' => $this->access_user,
            'sbmnu_active' => $type,
            'set_posts_type' => $posts_type
        ));
    }

    public function switch_language($language = "english") {
        $_SESSION['lang'] = $language;

        $referer_url = isset($_SERVER['HTTP_REFERER']) ? $_SERVER['HTTP_REFERER'] : base_url();

        $return_url = isset($_REQUEST['return_url']) ? $_REQUEST['return_url'] : $referer_url;

        redirect($return_url);
    }

}
