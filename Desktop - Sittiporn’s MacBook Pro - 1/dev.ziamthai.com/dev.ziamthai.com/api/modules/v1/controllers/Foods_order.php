<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Foods_order extends CI_Controller {

    private $mod_name, $access_user;

    public function __construct() {
        parent::__construct();

        $this->mod_name = $this->router->fetch_module();

        $this->load->model($this->mod_name . '/Api_model');

        $this->Api_model->valid_access();

        $this->access_user = $this->Api_model->valid_user();
    }

    public function save() {
        $this->load->language($this->mod_name . '/restaurant/order');
        
        $this->load->model($this->mod_name . '/restaurant/Order_model');

        $result_info = $this->Order_model->save_info($this->access_user);

        if (empty($result_info['order_id'])) {
            echo json_encode($result_info);
            exit();
        }

        $result_list = $this->Order_model->save_list($result_info);

        if (!$result_list) {
            $this->Order_model->save_fail($result_info);
            echo json_encode(array('error' => true, 'message' => $this->lang->line('save_order_fail')));
            exit();
        }
        
        $myResult=$this->Order_model->create_billing($result_info);

        echo json_encode(array('success' => true, 
					'message' => $this->lang->line('save_order_complete'),
					'order_id' => $result_info['order_id'],
					'sub_total'=>$myResult['sub_total'],
					'tax_rate'=>$myResult['tax_rate'],
					'tax_amount'=>$myResult['tax_amount'],
					'grand_total'=>$myResult['grand_total'],
					'item_count'=>$myResult['order_cal']['item_count'],
					'item_total'=>$myResult['order_cal']['item_total'],
				 ));
    }
		
    public function test() {
        $this->load->language($this->mod_name . '/restaurant/order');
        
        $this->load->model($this->mod_name . '/restaurant/Order_model');

        $result_info = $this->Order_model->save_info($this->access_user);

        if (empty($result_info['order_id'])) {
            echo json_encode($result_info);
            exit();
        }

        $result_list = $this->Order_model->save_list($result_info);

        if (!$result_list) {
            $this->Order_model->save_fail($result_info);
            echo json_encode(array('error' => true, 'message' => $this->lang->line('save_order_fail')));
            exit();
        }
        
        $myResult=$this->Order_model->create_billing($result_info);

        echo json_encode(array('success' => true, 
					'message' => $this->lang->line('save_order_complete'),
					'order_id' => $result_info['order_id'],
					'sub_total'=>$myResult['sub_total'],
					'tax_rate'=>$myResult['tax_rate'],
					'tax_amount'=>$myResult['tax_amount'],
					'grand_total'=>$myResult['grand_total'],
					'item_count'=>$myResult['order_cal']['item_count'],
					'item_total'=>$myResult['order_cal']['item_total'],
					'myResult'=>$myResult,
				 ));
    }
	

}
