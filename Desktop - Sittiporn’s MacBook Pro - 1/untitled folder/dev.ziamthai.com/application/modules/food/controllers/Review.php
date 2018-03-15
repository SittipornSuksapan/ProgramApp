<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Review extends CI_Controller {

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
        $this->load->language('reviews_list');

        $this->template->set('title', $this->lang->line('title'));

        $this->template->view('reviews_list');
    }

    private function valid_review_info() {
        $get_id = $this->uri->segment(4);

        $this->load->model($this->access_module . '/business/Review_model');

        $get_info = $this->Review_model->get_info($get_id);

        if (empty($get_id) || empty($get_info['id'])) {
            redirect('template/home/page_notfound');
        }

        return $get_info;
    }

    private function valid_store_info($get_id) {
        $this->load->model($this->access_module . '/business/Shop_model');

        $get_info = $this->Shop_model->get_info($get_id);

        if (empty($get_id) || empty($get_info['id'])) {
            redirect('template/home/page_notfound');
        }

        $this->load->language($this->access_module . '/business/show', $this->access_lang);

        return $get_info;
    }

    public function show() {
        $review_info = $this->valid_review_info();

        $shop_info = $this->valid_store_info($review_info['shop_id']);

        $this->load->language($this->access_module . '/business/review', $this->access_lang);
        
        $this->template->set('title', $review_info['title']);
        $this->template->set('xs_topnav_right', '<button type="button" class="btn btn-link btn-link-icon" onclick="layout_2col(\'toggle\',\'#store_show\');"><i class="fa fa-info-circle"></i></button>');
        $this->template->view($this->access_module . '/business/show_template', array(
            'access_module' => $this->access_module,
            'access_lang' => $this->access_lang,
            'access_user' => $this->access_user,
            'shop_menu_active' => 'review',
            'shop_info' => $shop_info,
            'show_content' => $this->load->view($this->access_module . '/business/review_show', array(
                'access_module' => $this->access_module,
                'access_lang' => $this->access_lang,
                'access_user' => $this->access_user,
                'shop_info' => $shop_info,
                'review_info' => $review_info
                    ), true)
        ));
    }

}
