<?php

Class Order_model extends CI_Model {

    private $access_user, $mod_name;

    public function __construct() {
        parent::__construct();

        $this->mod_name = $this->router->fetch_module();
    }

    private function form_data() {
        $data['order_delivery_type'] = $this->input->post('type', '');
        $data['order_bssh_id'] = $this->input->post('shop', 0);
        $data['order_memh_id'] = isset($this->access_user['id']) ? $this->access_user['id'] : 0;
        $data['order_date'] = date('Y-m-d H:i:s');
        $data['order_name'] = $this->input->post('c_name', '');
        $data['order_email'] = $this->input->post('c_email', '');
        $data['order_tel'] = $this->input->post('c_tel', '');
        $data['order_street'] = $this->input->post('c_street', '');
        $data['order_address'] = $this->input->post('c_address', '');
        $data['order_city'] = $this->input->post('c_city', '');
        $data['order_state'] = $this->input->post('c_state', '');
        $data['order_zipcode'] = $this->input->post('c_zipcode', '');

        return $data;
    }

    private function form_valid() {
        $data = $this->form_data();

        if (empty($data['order_memh_id'])) {
            return array('error' => true, 'message' => $this->lang->line('please_login'));
        }

        if (empty($data['order_bssh_id'])) {
            return array('error' => true, 'message' => $this->lang->line('unselect_shop'));
        }

        $item_id = $this->input->post('item_id');

        if (sizeof($item_id) < 1) {
            return array('error' => true, 'message' => $this->lang->line('cart_empty'));
        }

        if ($data['order_delivery_type'] != 'delivery' && $data['order_delivery_type'] != 'pickup') {
            return array('error' => true, 'message' => $this->lang->line('delivery_type_warning'));
        }

        if (empty($data['order_name'])) {
            return array('error' => true, 'message' => $this->lang->line('put_your_name'), 'modal_show' => '#store_menu_cart_modal');
        }

        if (empty($data['order_email']) && empty($data['order_tel'])) {
            return array('error' => true, 'message' => $this->lang->line('put_your_contact'), 'modal_show' => '#store_menu_cart_modal');
        }

        if ($data['order_delivery_type'] == 'delivery' && (empty($data['order_street']) || empty($data['order_address']) || empty($data['order_zipcode']))) {
            return array('error' => true, 'message' => $this->lang->line('put_your_address'), 'modal_show' => '#store_menu_cart_modal');
        }

        return $data;
    }

    public function save_info($access_user) {
        $this->access_user = $access_user;

        $data = $this->form_valid();

        if (isset($data['error'])) {
            return $data;
        }

        $this->db->insert('foods_order', $data);
        $ins_result = ($this->db->affected_rows() != 1) ? false : true;

        if (!$ins_result) {
            return array('error' => true, 'message' => $this->lang->line('save_order_fail'));
        }

        $this->db->reset_query();

        $data['order_id'] = intval($this->db->insert_id());

        return $data;
    }

    public function save_list($order_data) {
        $item_id = $this->input->post('item_id');
        $item_count = sizeof($item_id);

        if (empty($order_data['order_id']) || $item_count < 1) {
            return false;
        }

        if (!is_array($item_id)) {
            return false;
        }

        $item_name = $this->input->post('item_name');
        $item_price = $this->input->post('item_price');
        $item_qty = $this->input->post('item_qty');
        $item_instruction = $this->input->post('item_instruction');

        $ins_count = 0;

        foreach ($item_id as $key => $menu_id) {
            $ins_data = array();
            $ins_data['list_order_id'] = $order_data['order_id'];
            $ins_data['list_bssh_id'] = $order_data['order_bssh_id'];
            $ins_data['list_bsih_id'] = $menu_id;
            $ins_data['list_detail'] = isset($item_name[$key]) ? $item_name[$key] : '';
            $ins_data['list_price'] = isset($item_price[$key]) ? $item_price[$key] : 0;
            $ins_data['list_qty'] = isset($item_qty[$key]) ? $item_qty[$key] : 0;
            $ins_data['list_instruction'] = isset($item_instruction[$key]) ? $item_instruction[$key] : 0;
            $ins_data['list_total'] = $ins_data['list_price'] * $ins_data['list_qty'];
            $this->db->reset_query();
            $this->db->insert('foods_order_list', $ins_data);
            $ins_result = ($this->db->affected_rows() != 1) ? false : true;
            if ($ins_result) {
                $ins_count++;
            }
        }

        if ($item_count != $ins_count) {
            return false;
        }

        return true;
    }

    public function save_fail($order_data) {
        $this->db->reset_query();
        $this->db->where('order_id', $order_data['order_id']);
        $this->db->where('order_bssh_id', $order_data['order_bssh_id']);
        $this->db->delete('foods_order');

        $this->db->reset_query();
        $this->db->where('list_order_id', $order_data['order_id']);
        $this->db->where('list_bssh_id', $order_data['order_bssh_id']);
        $this->db->delete('foods_order_list');
    }

    public function create_billing($order_data) {
        $order_cal = $this->calculator_billing($order_data);

        $this->db->reset_query();
        $this->db->where('order_id', $order_data['order_id']);
        $this->db->where('order_bssh_id', $order_data['order_bssh_id']);
        $this->db->update('foods_order', array(
            'order_delivery_charge' => isset($order_cal['delivery_charge']) ? floatval($order_cal['delivery_charge']) : 0,
            'order_sub_total' => isset($order_cal['sub_total']) ? floatval($order_cal['sub_total']) : 0,
            'order_tax_rate' => isset($order_cal['tax_rate']) ? floatval($order_cal['tax_rate']) : 0,
            'order_tax_amount' => isset($order_cal['tax_amount']) ? floatval($order_cal['tax_amount']) : 0,
            'order_grand_total' => isset($order_cal['grand_total']) ? floatval($order_cal['grand_total']) : 0
        ));
				
		$order_result=array(
			'order_id'=>$order_data['order_id'],
			'shop_id'=> $order_data['order_bssh_id'],
			'delivery_charge' => isset($order_cal['delivery_charge']) ? sprintf('%0.2f',$order_cal['delivery_charge']) : '0.00',
			'sub_total' => isset($order_cal['sub_total']) ? sprintf('%0.2f',$order_cal['sub_total']) : '0.00',
			'tax_rate' => isset($order_cal['tax_rate']) ? sprintf('%0.2f',$order_cal['tax_rate']) : '0.00',
			'tax_amount' => isset($order_cal['tax_amount']) ? sprintf('%0.2f',$order_cal['tax_amount']) : '0.00',
			'grand_total' => isset($order_cal['grand_total']) ? sprintf('%0.2f',$order_cal['grand_total']) : '0.00',
			'order_data'=>$order_data,
			'order_cal'=>$order_cal,
        );

        $new_data = array_merge($order_data, $order_cal);

        $this->load->model($this->mod_name . '/business/Shop_model');
        $shop_data = $this->Shop_model->get_info($order_data['order_bssh_id']);
// DEBUG VALUE
		$order_result['shop_data']=$shop_data;
		$order_result['new_data']=$new_data;

//        $this->generate_point($new_data, $shop_data);

        $this->load->config('email');
        $this->load->library('email');
        $this->email->initialize();

        $this->send_order_mail($new_data, $shop_data);
		
		return $order_result;
    }

    public function generate_point($order_data, $shop_data) {
        if (empty($order_data['order_memh_id']) || empty($shop_data['id'])) {
            return null;
        }

        $this->load->model($this->mod_name . '/reward/Reward_config_model');
        $point_exchange = $this->Reward_config_model->get_exchange_rate($shop_data['id']);
        $point_received = floor($order_data['grand_total'] / $point_exchange);

        $this->db->reset_query();
        $this->db->insert('member_reward_history', array(
            'member_id' => $order_data['order_memh_id'],
            'shop_id' => $shop_data['id'],
            'point' => $point_received,
            'order_no' => $order_data['order_id'],
            'order_amount' => $order_data['grand_total'],
            'action' => 'receive',
            'auser' => 0,
            'aname' => 'Online Order',
            'aip' => get_client_ip(),
            'adate' => date('Y-m-d H:i:s')
        ));

        $result = ($this->db->affected_rows() != 1) ? false : true;

        if (!$result) {
            return null;
        }

        $history_id = intval($this->db->insert_id());

        $this->generate_point_log($history_id, $order_data['order_memh_id'], $shop_data['id'], $point_received);
    }

    public function generate_point_log($history_id, $member_id, $shop_id, $point_received) {
        if (empty($history_id) || empty($point_received)) {
            return null;
        }

        $exp_timestamp = strtotime(date("Y-m-d", strtotime(date('Y-m-d H:i:s'))) . " +30 days");

        for ($i = 0; $i < $point_received; $i++) {
            $this->db->reset_query();
            $this->db->insert('member_reward_points', array(
                'history_id' => $history_id,
                'shop_id' => $shop_id,
                'member_id' => $member_id,
                'exp_date' => date("Y-m-d", $exp_timestamp)
            ));
        }
    }

    private function calculator_billing($order_data) {
        $shop_config = $this->shop_bill_config($order_data);
        $return['sub_total'] = 0;
        $return['tax_rate'] = isset($shop_config['tax_rate']) ? floatval($shop_config['tax_rate']) : 0;
        $return['delivery_charge'] = isset($shop_config['delivery_charge']) ? floatval($shop_config['delivery_charge']) : 0;
		 $return['item_count']=0;
		 $return['item_total']=0;
        $tax_delivery = isset($shop_config['tax_delivery']) ? intval($shop_config['tax_delivery']) : 0;

        $item_id = $this->input->post('item_id');
        $item_price = $this->input->post('item_price');
        $item_qty = $this->input->post('item_qty');

        if (sizeof($item_id) < 1) {
            return $return;
        }

        foreach ($item_id as $key => $menu_id) {
            $list_price = isset($item_price[$key]) ? $item_price[$key] : 0;
            $list_qty = isset($item_qty[$key]) ? $item_qty[$key] : 0;
            $return['sub_total'] += floatval(($list_price * $list_qty));
			 $return['item_count']++;
			 $return['item_total']+=$list_qty;
        }

        $return['grand_total'] = $return['sub_total'];
        $return['tax_amount'] = 0;

        if ($return['tax_rate'] > 0) {
            $return['tax_amount'] += floatval(($return['sub_total'] * ($return['tax_rate'] / 100)));

            if ($tax_delivery > 0 && $return['delivery_charge'] > 0) {
                $return['tax_amount'] += floatval(($return['delivery_charge'] * ($return['tax_rate'] / 100)));
            }
        }

        if ($order_data['order_delivery_type'] == 'delivery' && $return['delivery_charge'] > 0) {
            $return['grand_total'] += $return['delivery_charge'];
        }

        $return['grand_total'] += $return['tax_amount'];

        return $return;
    }

    private function fail_billing($order_data) {
        $this->save_fail($order_data);

        echo json_encode(array('error' => true, 'message' => $this->lang->line('save_order_fail')));

        die();
    }

    private function shop_bill_config($order_data) {
        if (empty($order_data['order_bssh_id'])) {
            $this->fail_billing($order_data);
        }

        $this->db->reset_query();
        $this->db->select('tax_rate,tax_delivery,delivery_charge');
        $this->db->from('business_shop');
        $this->db->where('bssh_id', intval($order_data['order_bssh_id']));

        $query = $this->db->get();

        if ($query->num_rows() < 1) {
            $this->fail_billing($order_data);
        }

        return $query->row_array();
    }

    private function send_mail($order_data, $shop_data) {
        $mail_subject = 'Online Order #' . $order_data['order_id'];

        $mail_message = $this->load->view($this->mod_name . '/mail_template', array(
            'mail_subject' => $mail_subject,
            'mail_message' => $this->load->view($this->mod_name . '/mail_notifications/order', array(
                'shop_data' => $shop_data,
                'order_data' => $this->get_data($order_data['order_id']),
                'order_list' => $this->get_list($order_data['order_id'])
                    ), true)
                ), true);

        $this->email->clear();
        $this->email->to($order_data['order_email']);
        $this->email->from($this->config->item('sender_email'), $this->config->item('sender_name'));
        $this->email->subject($mail_subject);
        $this->email->message($mail_message);
        $this->email->send();
    }

    public function send_order_mail($order_data, $shop_data) {
        $mail_subject = 'Online Order #' . $order_data['order_id'];

// Create content of order mail
        $mail_message = $this->load->view($this->mod_name . '/mail_template', array(
            'mail_subject' => $mail_subject,
            'mail_message' => $this->load->view($this->mod_name . '/mail_notifications/order', array(
                'shop_data' => $shop_data,
                'order_data' => $this->get_data($order_data['order_id']),
                'order_list' => $this->get_list($order_data['order_id'])
                    ), true)
                ), true);

// Send order mail to customer
        $this->email->clear();
        $this->email->to($order_data['order_email']);
        $this->email->from($this->config->item('sender_email'), $this->config->item('sender_name'));
        $this->email->subject("[ZiamFood] ".$mail_subject." [Payment]");
        $this->email->message($mail_message);
        $this->email->send();

// Send payment mail to restaurant owner
//        $this->email->clear();
//        $this->email->to($shop_data['email']);
//        $this->email->from($this->config->item('sender_email'), $this->config->item('sender_name'));
//        $this->email->subject("[ZiamFood] ".$mail_subject);
//        $this->email->message($mail_message);
//        $this->email->send();
	}

    public function send_payment_mail($order_data, $shop_data) {
        $mail_subject = 'Payment Order #' . $order_data['order_id'];

// Create content of payment mail
			$mail_message = $this->load->view($this->mod_name . '/mail_template', array(
            'mail_subject' => $mail_subject,
            'mail_message' => $this->load->view($this->mod_name . '/mail_notifications/payment', array(
                'shop_data' => $shop_data,
                'order_data' => $this->get_data($order_data['order_id']),
                'order_list' => $this->get_list($order_data['order_id'])
                    ), true)
                ), true);

// Send payment mail to customer
        $this->email->clear();
        $this->email->to($order_data['order_email']);
        $this->email->from($this->config->item('sender_email'), $this->config->item('sender_name'));
        $this->email->subject("[ZiamFood] ".$mail_subject." [Payment]");
        $this->email->message($mail_message);
        $this->email->send();

// Send payment mail to restaurant owner
		$this->email->clear();
        $this->email->to($shop_data['email']);
        $this->email->from($this->config->item('sender_email'), $this->config->item('sender_name'));
        $this->email->subject("[ZiamFood] ".$mail_subject." [Payment]");
        $this->email->message($mail_message);
        $this->email->send();
	}

	public function get_data($order_id) {
        if (empty($order_id)) {
            return null;
        }

        $this->db->reset_query();
        $this->db->from('foods_order');
        $this->db->where('order_id', $order_id);

        $query = $this->db->get();

        if ($query->num_rows() < 1) {
            return null;
        }

        return $query->row_array();
    }

    public function get_list($order_id) {
        if (empty($order_id)) {
            return null;
        }

        $this->db->reset_query();
        $this->db->from('foods_order_list');
        $this->db->where('list_order_id', $order_id);

        $query = $this->db->get();

        if ($query->num_rows() < 1) {
            return null;
        }

        return $query->result_array();
    }
		
	public function update_payment($order_id,$authen,$refnum) {
		$return = false;
		if (empty($order_id) || empty($authen) || empty($refnum) ) {
			return $return;
		}
		if ( (strlen($authen) != 6) || (strlen($refnum)!=10) ) {
			return $return;
		}
		$data=array('order_authencode'=>sprintf('%s-%s',$authen,$refnum),
			'order_pay_date'=>date('Y-m-d H:i:s'),
			'order_payment'=>1,
		 );
		$this->db->reset_query();
		$this->db->where('order_id',$order_id);
		$this->db->update('foods_order',$data);
		
		if ($this->db->affected_rows() == 1) {
			$return = true;
		}
		return $return;
	}

	public function update_credit_payment($order_id,$authen,$refnum) {
		$return = false;
		if (empty($order_id) || empty($authen) || empty($refnum) ) {
			return $return;
		}
		if ( (strlen($authen) != 6) || (strlen($refnum)!=10) ) {
			return $return;
		}
		$data=array('order_authencode'=>sprintf('%s-%s',$authen,$refnum),
			'order_pay_date'=>date('Y-m-d H:i:s'),
			'order_payment'=>1,
		 );
		$this->db->reset_query();
		$this->db->where('order_id',$order_id);
		$this->db->update('foods_order',$data);
		
		if ($this->db->affected_rows() == 1) {
			$return = true;
		}
		return $return;
	}
}
