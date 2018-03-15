<?php

defined('BASEPATH') OR exit('No direct script access allowed');

Class Client_member extends CI_Controller {

    private $access_module;

    public function __construct() {
        parent::__construct();

        $this->access_module = $this->router->fetch_module();

        $this->load->model($this->access_module . '/Api_model');

        $this->Api_model->valid_access();
    }

    public function add_member() {
				$aReturn=array('result'=>false,'message'=>null);

        $this->load->model($this->access_module . '/client/Cmember_model');

        $result = $this->Cmember_model->add($_REQUEST);

				$aReturn['message']=$result['message'];
				$aReturn['result']=$result['result'];

        echo json_encode($aReturn);
    }
		
    public function list_policy() {
				$aReturn=array('result'=>false,'message'=>null);
				$shopID=(isset($_REQUEST['shopID']))?$_REQUEST['shopID']:0;
				$memID=(isset($_REQUEST['memID']))?$_REQUEST['memID']:0;

        $this->load->model($this->access_module . '/client/Cmember_model');
				if ( $shopID==0 || $memID==0 ) {
					$aReturn['message']=array();
					if ($memID==0) {
						$aReturn['message'][]='Required Member ID';
					}
					if ($shopID==0) {
						$aReturn['message'][]='Required Shop ID';
					}
				} else {
					$result=$this->Cmember_model->list_member_policy($shopID,$memID);

					$aReturn['message']=$result['message'];
					$aReturn['result']=$result['result'];
					$aReturn['data']=$result['data'];
				}

        echo json_encode($aReturn);
    }

    public function search_combobox() {
        $keyword = isset($_REQUEST['q']) ? $_REQUEST['q'] : null;

        $this->load->model($this->access_module . '/accounts/Member_model');

        $result = $this->Member_model->combobox_finder($keyword);

        if (sizeof($result) < 1) {
            echo json_encode(array());
        }

        echo json_encode($result);
    }

    public function delete_member() {
				$aReturn=array('result'=>false,'message'=>null);
				$shopID=(isset($_REQUEST['shopID']))?$_REQUEST['shopID']:0;
				$memID=(isset($_REQUEST['memID']))?$_REQUEST['memID']:0;

        $this->load->model($this->access_module . '/client/Cmember_model');

				if ( $shopID==0 || $memID==0 ) {
					$aReturn['message']=array();
					if ($memID==0) $aReturn['message'][]='Required Member ID';
					if ($shopID==0) $aReturn['message'][]='Required Shop ID';
				} else {
					$result = $this->Cmember_model->delete_member($shopID,$memID);

					$aReturn['message']=$result['message'];
					$aReturn['result']=$result['result'];
				}

        echo json_encode($aReturn);
    }

    public function edit_member() {
				$aReturn=array('result'=>false,'message'=>null);
				$shopID=(isset($_REQUEST['shopID']))?$_REQUEST['shopID']:0;
				$memID=(isset($_REQUEST['memID']))?$_REQUEST['memID']:0;
				$maxPolicy=(isset($_REQUEST['maxPolicy']))?$_REQUEST['maxPolicy']:0;

        $this->load->model($this->access_module . '/client/Cmember_model');

				if ( $shopID==0 || $memID==0 ) {
					$aReturn['message']=array();
					if ($memID==0) $aReturn['message'][]='Required Member ID';
					if ($shopID==0) $aReturn['message'][]='Required Shop ID';
				} else {
					$aPolicy=array();
					for($iLoop=1; $iLoop<=$maxPolicy; $iLoop++) {
						$chkName=sprintf('chkPolicy%03d',$iLoop);
	//					echo "<br>chkName : ".$chkName;
						if (isset($_REQUEST[$chkName]))  {
	//						echo "==> : ".$input[$chkName];
							$aPolicy[]=intval($_REQUEST[$chkName]);
						}
					}
//					echo sprintf("<br>edit_member(%d,%d)",$shopID,$memID);
//					echo "<pre>"; print_r($aPolicy); echo "</pre>";
					$result=$this->Cmember_model->edit_member($shopID,$memID,$aPolicy);

					$aReturn['message']=$result['message'];
					$aReturn['result']=$result['result'];
				}

        echo json_encode($aReturn);
    }

		public function add_member_policy() {
				$aReturn=array('result'=>false,'message'=>null);
				$shopID=(isset($_REQUEST['shopID']))?$_REQUEST['shopID']:0;
				$memID=(isset($_REQUEST['memID']))?$_REQUEST['memID']:0;
				$policyID=(isset($_REQUEST['policyID']))?$_REQUEST['policyID']:0;
				echo "Request<pre>"; print_r($_REQUEST); echo "</pre>";

        $this->load->model($this->access_module . '/client/Cmember_model');

				if ( $shopID==0 || $memID==0 || $policyID==0) {
					$aReturn['message']=array();
					if ($memID==0) $aReturn['message'][]='Required Member ID';
					if ($shopID==0) $aReturn['message'][]='Required Shop ID';
					if ($policyID==0) $aReturn['message'][]='Required Policy ID';
				} else {
					$result = $this->Cmember_model->add_member_policy($shopID,$memID,$policyID);
					echo "Result<pre>"; print_r($result); echo "</pre>";
					$aReturn['message']=$result['message'];
					$aReturn['result']=$result['result'];
				}

        echo json_encode($aReturn);
    }

    public function delete_member_policy() {
				$aReturn=array('result'=>false,'message'=>null);
				$shopID=(isset($_REQUEST['shopID']))?$_REQUEST['shopID']:0;
				$memID=(isset($_REQUEST['memID']))?$_REQUEST['memID']:0;
				$policyID=(isset($_REQUEST['policyID']))?$_REQUEST['policyID']:0;

        $this->load->model($this->access_module . '/client/Cmember_model');

				if ( $shopID==0 || $memID==0 || $policyID==0) {
					$aReturn['message']=array();
					if ($memID==0) $aReturn['message'][]='Required Member ID';
					if ($shopID==0) $aReturn['message'][]='Required Shop ID';
					if ($policyID==0) $aReturn['message'][]='Required Policy ID';
				} else {
					$result = $this->Cmember_model->delete_member_policy($shopID,$memID,$policyID);
					print_r($result);

					$aReturn['message']=$result['message'];
					$aReturn['result']=$result['result'];
				}

        echo json_encode($aReturn);
    }

		public function index() {
			echo json_encode($_REQUEST);
		}

}
