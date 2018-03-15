<?php

defined('BASEPATH') OR exit('No direct script access allowed');

Class Reward extends CI_Controller {

    private $access_module, $access_user;

    public function __construct() {
        parent::__construct();

        $this->access_module = $this->router->fetch_module();

        $this->load->model($this->access_module . '/Api_model');

        $this->Api_model->valid_access();

        $this->access_user = $this->Api_model->valid_user();
    }

    public function member_point() {
        $this->load->model($this->access_module . '/reward/Reward_model');
				$arrReturn = array("success"=>false,"points"=>0);

        $shop_id = isset($_REQUEST['shop']) ? intval($_REQUEST['shop']) : intval($_REQUEST['shop']);

				if (! empty($this->access_user['id'])) {
					$arrReturn['points']= $this->Reward_model->get_member_point($this->access_user['id'],$shop_id);
					$arrReturn['success']=true;
				}

        echo json_encode($arrReturn);
    }
		
		public function history_member() {
        $this->load->model($this->access_module . '/reward/Reward_model');
				
				$arrReturn = array("result"=>false,"data"=>null);
				$shop_id=isset($_REQUEST['shop']) ? intval($_REQUEST['shop']) : 0;
				
				$data=$this->Reward_model->history_member($this->access_user['id'],$shop_id);
				
        if ($data == null) {
					$arrReturn['message']='no records';
        } else {
					$arrReturn['result']=true;
					$arrReturn['data'] = $data;
				}

				echo json_encode($arrReturn);

		}

}
