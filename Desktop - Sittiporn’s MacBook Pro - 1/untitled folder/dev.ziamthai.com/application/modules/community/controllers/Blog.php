<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Blog extends CI_Controller {

    public function __construct() {
        parent:: __construct();

        $this->template->load('templates/community');

        $this->load->language('community/blog');

        /* $this->load->model('api/Shop_model');
          $this->load->model('api/Deal_model');
          $this->load->model('api/Location_model');
          $this->load->model('api/Review_model'); */
    }

    public function find($cate = null) {
        //$data['list_shop_last'] = $this->Shop_model->listShopLastUpdate(0, 12);
        //$data['list_deal'] = $this->Deal_model->listDealLastUpdate(1, 6);
        //$data['list_review'] = $this->Review_model->getReview();

        $cate = isset($_GET['q']) ? $_GET['q'] : $cate;

        if (!empty($cate)) {
            $cate = str_ireplace('%20', ' ', $cate);
            $cate = ucfirst($cate);
        }

        $this->template->view('community/blog_find', array('set_menu_active' => 'blog', 'cate_title' => $cate));
    }

    public function read() {
        //$data['list_shop_last'] = $this->Shop_model->listShopLastUpdate(0, 12);
        //$data['list_deal'] = $this->Deal_model->listDealLastUpdate(1, 6);
        //$data['list_review'] = $this->Review_model->getReview();

        $this->template->view('community/blog_read', array('set_menu_active' => 'blog'));
    }

}
