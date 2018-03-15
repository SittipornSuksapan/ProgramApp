<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Payments extends CI_Controller {

    private $mod_name, $access_user;

    public function __construct() {
        parent::__construct();

        $this->mod_name = $this->router->fetch_module();

        $this->load->model($this->mod_name . '/Api_model');
        $this->load->model($this->mod_name . '/restaurant/Payment_model');
        $this->load->model($this->mod_name . '/restaurant/Order_model');

        $this->Api_model->valid_access();

        $this->access_user = $this->Api_model->valid_user();
    }
		
    private function form_data() {
        $data['order_id'] = (! is_null($this->input->post('order_id')))?$this->input->post('order_id'):'';
        $data['order_code'] = (! is_null($this->input->post('order_code')))?$this->input->post('order_code'):'';
        $data['order_amount'] = (! is_null($this->input->post('order_amount')))?$this->input->post('order_amount'):'0.00';
        $data['order_desc'] = (! is_null($this->input->post('order_desc')))?$this->input->post('order_desc'):'';
        $data['card_holder'] = (! is_null($this->input->post('card_holder')))?$this->input->post('card_holder'):'';
        $data['card_number'] = (! is_null($this->input->post('card_number')))?$this->input->post('card_number'):'';
        $data['card_month'] = (! is_null($this->input->post('card_month')))?$this->input->post('card_month'):'00';
        $data['card_year'] = (! is_null($this->input->post('card_year')))?$this->input->post('card_year'):'00';
        $data['card_cvv'] = (! is_null($this->input->post('card_cvv')))?$this->input->post('card_cvv'):'000';

        return $data;
    }

	public function confirm() {
		$arrReturn=array('result'=>true,'mesg'=>array());
		$input=$this->form_data();
		if ($input['order_id']=='') {$arrReturn['result']=false; $arrReturn['mesg'][]='"order_id" is not value';}
		if ($input['order_amount']=='0.00') {$arrReturn['result']=false; $arrReturn['mesg'][]='"order amount" is not value.'; }
		if ($input['card_holder']=='')  {$arrReturn['result']=false; $arrReturn['mesg'][]='"card holder" is not value.'; }

		if ($input['card_number']=='')  {$arrReturn['result']=false; $arrReturn['mesg'][]='"card number" is not value.'; }
		if (strlen(trim($input['card_number']))!==16)  {$arrReturn['result']=false; $arrReturn['mesg'][]='"card number" is invalid.'; }

		if ($input['card_month']=='00')  {$arrReturn['result']=false; $arrReturn['mesg'][]='"card month" is not value'; }
		if ((intval($input['card_month'])<1) || (intval($input['card_month']) >13))  {
			$arrReturn['result']=false; $arrReturn['mesg'][]='"card number" is invalid.'; 
		}
		if ($input['card_year']=='00')  {$arrReturn['result']=false; $arrReturn['mesg'][]='"card year" is not value'; }
		if ( (intval($input['card_year'])) < (intval(date('y'))) )  {
			$arrReturn['result']=false; $arrReturn['mesg'][]='"card year" is invalid.'; 
		}

		if ( ( (intval($input['card_year'])) < (intval(date('y'))) ) && 
		 ((intval($input['card_month'])) < (intval(date('m')))) ) {
			$arrReturn['result']=false; $arrReturn['mesg'][]='"card" is expired'; 
		}
		if ($input['card_cvv']=='000')  {$arrReturn['result']=false; $arrReturn['mesg'][]='"card cvv" is not value'; }
		
		if ($arrReturn['result']) {
			$this->Payment_model->key="Eb93RRM2WDthm7nsGtuOIAT5WBSI7n1r";   // Your Source Key
			$this->Payment_model->pin="1234";  // Source Key Pin
			$this->Payment_model->usesandbox=false;  // Sandbox true/false
			$this->Payment_model->testmode=0;    // Change this to 0 for the transaction to process

			$this->Payment_model->command="cc:sale";    // Command to run; Possible values are: cc:sale, cc:authonly, cc:capture, cc:credit, cc:postauth, check:sale, check:credit, void, void:release, refund, creditvoid and cc:save. Default is cc:sale.

			$this->Payment_model->card=$input['card_number'];  // card number, no dashes, no spaces
			$this->Payment_model->exp=sprintf('%02d%02d',$input['card_month'],$input['card_year']);   // expiration date 4 digits no /
			$this->Payment_model->amount=$input['order_amount'];   // charge amount in dollars
			$this->Payment_model->invoice=$input['order_id'];     // invoice number.  must be unique.
			//$tran->cardholder="Test T Jones";  // name of card holder
			$this->Payment_model->cardholder=$input['card_holder'];  // name of card holder
			//$tran->street="1234 Main Street"; // street address
			//$tran->zip="05673";   // zip code
			$this->Payment_model->description=$input['order_desc']; // description of charge
			$this->Payment_model->cvv2=$input['card_cvv'];   // cvv2 code

			if ($this->Payment_model->process()) {
				$arrReturn['ResultData']=sprintf('%s - %s',$this->Payment_model->authcode,$this->Payment_model->refnum);
//				$arrReturn['authcode']=$this->Payment_model->authcode;
//				$arrReturn['refNum']=$this->Payment_model->refnum;
				$this->Order_model->update_payment($input['order_id'],$this->Payment_model->authcode,$this->Payment_model->refnum);


				$order_data=$this->Order_model->get_data($input['order_id']);
				
				if (! isset($order_data['grand_total'])) $order_data['grand_total']='0.00';
				
				$this->load->model($this->mod_name . '/business/Shop_model');
				$shop_data = $this->Shop_model->get_info($order_data['order_bssh_id']);
				
				$this->load->model($this->mod_name . '/business/Shop_model');
				

				$this->load->config('email');
				$this->load->library('email');
				$this->email->initialize();

				$this->Order_model->send_payment_mail($order_data, $shop_data);
				$this->Order_model->generate_point($order_data, $shop_data);
				
			} else {
				$arrReturn['ResultData']=sprintf('%s - %s',$this->Payment_model->result,$this->Payment_model->error);
				$arrReturn['result']=FALSE;
			}
		}
		
		echo json_encode($arrReturn);
//		echo json_encode($_POST);
	}
	
	public function test() {
		$arrReturn=array('result'=>true,'mesg'=>array());
		$input=$this->form_data();
		$arrReturn['input']=$input;
		
		$this->load->model($this->mod_name . '/business/Shop_model');
		$order_data=$this->Order_model->get_data($input['order_id']);
		$arrReturn['order_data']=$order_data;
		$order_item=$this->Order_model->get_list($input['order_id']);
		$arrReturn['order_item']=$order_item;

		
		$this->load->model($this->mod_name . '/business/Shop_model');
		$shop_data = $this->Shop_model->get_info($order_data['order_bssh_id']);
		$arrReturn['shop_data']=$shop_data;

       $shop_config = $this->shop_bill_config($order_data);
		$arrReturn['shop_config']=$shop_config;
		
		echo json_encode($arrReturn);
	}
	
    private function shop_bill_config($order_data) {
		if (empty($order_data['order_bssh_id'])) {
			return null;
		}

		$this->db->reset_query();
		$this->db->select('tax_rate,tax_delivery,delivery_charge');
		$this->db->from('business_shop');
		$this->db->where('bssh_id', intval($order_data['order_bssh_id']));

		$query = $this->db->get();

		if ($query->num_rows() < 1) {
			return null;
		}

		return $query->row_array();
    }
}
