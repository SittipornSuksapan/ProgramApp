<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {

    public function __construct() {
        parent:: __construct();

        $this->template->load('templates/community');
    }

    public function index() {

        /*$this->load->model('api/Shop_model');
        $this->load->model('api/Deal_model');
        $this->load->model('api/Location_model');
        $this->load->model('api/Review_model');*/
        
        //$data['list_shop_last'] = $this->Shop_model->listShopLastUpdate(0, 12);
        //$data['list_deal'] = $this->Deal_model->listDealLastUpdate(1, 6);
        //$data['list_review'] = $this->Review_model->getReview();

        $this->load->language('community/homepage');
        $this->template->view('community/homepage', array('set_menu_active' => 'home'));
    }

    public function lang($param) {
        $language = isset($param) ? $param : 'english';
        $this->session->set_userdata('site_lang', $language);
        redirect($_SERVER['HTTP_REFERER']);
    }

}
