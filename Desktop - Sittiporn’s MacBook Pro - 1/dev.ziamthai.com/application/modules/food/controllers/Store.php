<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Store extends CI_Controller {

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

    public function show() {
        $shop_id = $this->uri->segment(4, 0);
        $shop_info = $this->valid_shop($shop_id);

        $this->load->language($this->access_module . '/business/review', $this->access_lang);

        $this->template->set('title', $shop_info['name']);
        $this->template->set('xs_topnav_right', '<button type="button" class="btn btn-link btn-link-icon" onclick="layout_2col(\'toggle\',\'#store_show\');"><i class="fa fa-info-circle"></i></button>');
        $this->template->view($this->access_module . '/business/show_template', array(
            'access_module' => $this->access_module,
            'access_lang' => $this->access_lang,
            'access_user' => $this->access_user,
            'shop_menu_active' => 'home',
            'shop_info' => $shop_info,
            'show_content' => $this->load->view($this->access_module . '/business/homepage', array(
                'access_module' => $this->access_module,
                'access_lang' => $this->access_lang,
                'access_user' => $this->access_user,
                'shop_info' => $shop_info
                    ), true)
        ));
    }
    
    private function valid_shop($shop_id) {
        $this->load->model($this->access_module . '/business/Shop_model');

        $shop_info = $this->Shop_model->get_info($shop_id);

        if (empty($shop_id) || empty($shop_info['id'])) {
            redirect('template/home/page_notfound');
        }

        $this->load->language($this->access_module . '/business/show', $this->access_lang);

        return $shop_info;
    }

    public function feed() {
        $feed_type = $this->feed_valid_type();
        
        $shop_id = $this->uri->segment(5, 0);
        $shop_info = $this->valid_shop($shop_id);

        $this->template->set('title', $this->lang->line('title_' . $feed_type) . ' | ' . $shop_info['name']);
        $this->template->set('xs_topnav_right', '<button type="button" class="btn btn-link btn-link-icon" onclick="layout_2col(\'toggle\',\'#store_show\');"><i class="fa fa-info-circle"></i></button>');
        $this->template->view($this->access_module . '/business/show_template', array(
            'access_module' => $this->access_module,
            'access_lang' => $this->access_lang,
            'access_user' => $this->access_user,
            'shop_menu_active' => $feed_type,
            'shop_info' => $shop_info,
            'show_content' => $this->load->view($this->access_module . '/business/homepage_feed', array(
                'access_module' => $this->access_module,
                'access_lang' => $this->access_lang,
                'access_user' => $this->access_user,
                'shop_info' => $shop_info,
                'feed_type' => $feed_type
                    ), true)
        ));
    }

    private function feed_valid_type() {
        $feed_type = $this->uri->segment(4, 'news');

        if (!in_array($feed_type, array('posts', 'review', 'blog'))) {
            redirect('template/home/page_notfound');
        }

        if ($feed_type == 'review') {
            $this->load->language($this->access_module . '/business/review', $this->access_lang);
        }

        return $feed_type;
    }

    public function menu() {
        $shop_id = $this->uri->segment(4, 0);
        $shop_info = $this->valid_shop($shop_id);

        $this->template->set('title', $shop_info['name']);

        if (!empty($this->access_user['id'])) {
            $this->template->set('xs_topnav_right', '<button type="button" class="btn btn-link btn-link-icon" onclick="store_order_cart_view();" style="position:relative;"><i class="fa fa-shopping-cart"></i><span class="icon-menu-cart-count">0</span></button>');
        } else {
            $this->template->set('xs_topnav_right', '<button type="button" class="btn btn-link btn-link-icon" onclick="layout_2col(\'toggle\',\'#store_show\');"><i class="fa fa-info-circle"></i></button>');
        }

        $this->template->view($this->access_module . '/business/show_template', array(
            'access_module' => $this->access_module,
            'access_lang' => $this->access_lang,
            'access_user' => $this->access_user,
            'shop_menu_active' => 'menu',
            'shop_info' => $shop_info,
            'show_content' => $this->load->view($this->access_module . '/business/menu', array(
                'access_module' => $this->access_module,
                'access_lang' => $this->access_lang,
                'access_user' => $this->access_user,
                'shop_info' => $shop_info
                    ), true)
        ));
    }

    public function viewOrder() {
        $order_id = $this->uri->segment(4); //get bssh_id from url

        $this->load->model('api/foods/Order_model');

        $order_data = $this->Order_model->get_data($order_id);

        if (empty($order_id) || empty($order_data['order_id'])) {
            echo 'Not found!';
            exit();
        }

        $this->load->view('api/mail_notifications/order_biz_owner', array('order_data' => $order_data,
            'order_list' => $this->Order_model->get_list($order_id)
        ));
    }

    public function onlineOrder() {
        $bssh_id = $this->uri->segment(4); //get bssh_id from url
        //$bssh_title = $this->uri->segment(5); //get bssh_title from url

        /* if (!$this->session->has_userdata('memh_id')) {
          $_SESSION[
          'login_return_url'] = site_url('foods/store/onlineOrder/' . $bssh_id);
          redirect('accounts/pages/login');
          exit();
          } */

        $this->load->model('api/Business_shop_model');

        $bssh_data = $this->Business_shop_model->get_info($bssh_id);

        if (empty($bssh_id) || !isset($bssh_data['bssh_id'])) {
            redirect('template/home/page_notfound');
        }

        $this->load->language('foods/store_order');

        $page_title = isset($bssh_data['bssh_title']) ? $this->lang->line('page_title') . ' - ' . $bssh_data['bssh_title'] : $this->lang->line('page_title');

        $back_url = site_url('foods/store/show/' . $bssh_id);

        $this->template->set('title', $page_title);
        $this->template->set('xs_topnav_left', '<a href="' . $back_url . '" class="btn btn-link text-blue" style="font-size:1.3em;"><i class="fa fa-chevron-left"></i></a>');
        $this->template->set('xs_topnav_right', '<a href="' . $_SERVER["PHP_SELF"] . '" class="btn btn-link text-blue" style="font-size:1.3em;"><i class="fa fa-refresh"></i></a>');
        $this->template->view('foods/store_order', array(
            'bssh_info' => $bssh_data,
            'menu_by_cate' => $this->Business_shop_model->menu_by_cate($bssh_id),
            'work_hour_list' => $this->Business_shop_model->work_hour_list($bssh_id),
            'work_hour_today' => $this->Business_shop_model->work_hour_today($bssh_id)
        ));
    }

}
