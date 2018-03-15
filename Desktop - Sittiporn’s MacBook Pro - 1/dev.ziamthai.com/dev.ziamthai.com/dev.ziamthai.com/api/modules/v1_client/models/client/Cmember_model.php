<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Cmember_model extends CI_Model {

    private $access_module;

    public function __construct() {
        parent::__construct();

        $this->access_module = $this->router->fetch_module();
    }

    public function add($input) {
				$arrReturn=array('result'=>false,'message'=>null,'data'=>null);
//				echo "<pre>"; print_r($input); echo "</pre>";
				$shopID=(isset($input['shop_id']))?intval($input['shop_id']):0;
				$memID=(isset($input['member_id']))?intval($input['member_id']):0;
				$userID=(isset($input['uid']))?intval($input['uid']):1;
//				$sDate=str_replace('.','',sprintf("%f",microtime(true)));
				$sDate=date('Y-m-d h:i:s');
				$sIP=$_SERVER['REMOTE_ADDR'];
				
				if ( $shopID==0 || $memID==0 ) {
						$aReturn['message']=array();
						if ($memID==0) $aReturn['message'][]='Required Member ID';
						if ($shopID==0) $aReturn['message'][]='Required Shop ID';
						return $aReturn;
				}

				$memLevel=(isset($input['member_level']))?intval($input['member_level']):5;
				$maxPolicy=(isset($input['maxPolicy']))?intval($input['maxPolicy']):0;
				$aPolicy=null;
				
/*
 *			Check Duplicate Member
 */
				$this->db->from('customer_member');
        $this->db->where('mem_id', $memID);
        $this->db->where('shop_id', $shopID);

        $query = $this->db->get();
				$row = $query->row_array();
				if (! is_null($row)) {
					$arrReturn['message'][]='User Exists.';
					return ($arrReturn);
        }
				
				$data['shop_id']=$shopID;
				$data['mem_id']=$memID;
				$data['level']=$memLevel;

				$data['cdate']=$sDate; $data['mdate']=$sDate;
				$data['cip']=$sIP; $data['mip']=$sIP;
				$data['cuser']=$userID;	$data['muser']=$userID;

/*
 *			Add member
 */
				$this->db->reset_query();
				$this->db->insert('customer_member',$data);
				if ($this->db->affected_rows()==1) { 
					$arrReturn['data'][]=$this->db->insert_id();
				} else {
					$arrReturn['message'][]='!!! Cannot add member !!!';
//					echo "<br>arrReturn :<pre>"; print_r($arrReturn); echo "</pre>";
					return ($arrReturn);
				}

				for($iLoop=1; $iLoop<=$maxPolicy; $iLoop++) {
					$chkName=sprintf('chkPolicy%03d',$iLoop);
//					echo "<br>chkName : ".$chkName;
					if (isset($input[$chkName]))  {
//						echo "==> : ".$input[$chkName];
						$aPolicy[]=intval($input[$chkName]);
					}
				}
				
//				echo "<pre>";
//				print_r($aPolicy);
//				echo "</pre>";

/*
 *		Add Member Policy
 */			
				$iPolicy=count($aPolicy);
				$iPass=0;
				if ($iPolicy > 0) {
					foreach($aPolicy as $policy) {
						$data=null;
						$data['mem_id']=$memID;
						$data['shop_id']=$shopID;
						$data['policy_id']=$policy;
						$data['pread']=1;
						
/*
 *					Find Exists Policy
 */
						$this->db->reset_query();
						$this->db->from('customer_role_policy');
						$this->db->where('mem_id', $memID);
						$this->db->where('shop_id', $shopID);
						$this->db->where('policy_id', $policy);
						
						$query = $this->db->get();
						$row = $query->row_array();
						if (! is_null($row)) {
							$arrReturn['message'][]='Policy Exists.';
							return ($arrReturn);
						}
/*
 *		Add Each Member Policy
 */
						$this->db->reset_query();
						$this->db->insert('customer_role_policy',$data);
						if ($this->db->affected_rows()==1) { 
							$arrReturn['data'][]=$this->db->insert_id();
							$iPass++;
						} else {
							$arrReturn['message'][]=sprintf('cannot insert role "%d"',$policy);
						}
					}
				}
				if ($iPass == $iPolicy) { $arrReturn['result']=true; $arrReturn['data'][]='data'.$iPolicy; }
//				echo "<br>arrReturn :<pre>"; print_r($arrReturn); echo "</pre>";
				return $arrReturn;
    }

    public function combobox_finder($q = null) {
        $keyword = isset($_REQUEST['q']) ? $_REQUEST['q'] : $q;

        $this->db->select('memh_id AS id,memh_display AS name,memh_idn AS idn,memh_email AS email');
        $this->db->from('member_header');

        $this->db->where('memh_idn', $keyword);
        $this->db->or_like('memh_display', $keyword, 'after');
        $this->db->or_like('memh_email', $keyword, 'after');

        $query = $this->db->get();
        $data = $query->result_array();

        if (!$data) {
            return null;
        }

        $this->load->model($this->access_module . '/reward/Reward_model');

        foreach ($data as $key => $item) {
            $data[$key]['photo'] = site_url('uploads/user_photo/thumb/' . $item['id']);
            $data[$key]['reward_points'] = $this->Reward_model->get_member_point($item['id']);
        }

        return $data;
    }
		
    public function list_member_policy($shopID=0,$memID=0) {
			$aReturn=array('result'=>false,'message'=>null,'data'=>null);
			if ( $shopID==0 || $memID==0 ) {
					$aReturn['message']=array();
					if ($memID==0) $aReturn['message'][]='Required Member ID';
					if ($shopID==0) $aReturn['message'][]='Required Shop ID';
			} else {
				$this->db->from('customer_policy');
				$this->db->join('zzz_customer_role_policy','zzz_customer_role_policy.policy_id=zzz_customer_policy.id');
				$this->db->where('zzz_customer_role_policy.shop_id',$shopID,false);
				$this->db->where('zzz_customer_role_policy.mem_id',$memID,false);
//				$this->db->where('zzz_customer_policy.active',1,false);
//				$this->db->where('zzz_customer_role_policy.active',1,false);
				$this->db->order_by('customer_policy.head_order');
				$this->db->order_by('customer_policy.policy_order');

				$query=$this->db->get();
				$iRow=$this->db->count_all_results();
				$result=$query->result_array();
	//			echo print_r($result);
				if ($iRow==0) {
					$aReturn['message'][]='No Found Policy for this member';
				} else {
					$aReturn['result']=true;
					$aReturn['data']=$result;
				}
			}
			return $aReturn;
		}
		
    public function delete_member($shopID=0,$memID=0) {
			$aReturn=array('result'=>false,'message'=>null);
			if ( $shopID==0 || $memID==0 ) {
				$aReturn['message']=array();
				if ($memID==0) $aReturn['message'][]='Required Member ID';
				if ($shopID==0) $aReturn['message'][]='Required Shop ID';
			} else {
				$list=$this->list_member_policy($shopID, $memID);
				$iCountList=count($list['data']);
				$this->db->reset_query();
				$this->db->where('mem_id',$memID,false);
				$this->db->where('shop_id',$shopID,false);
				$this->db->delete('customer_role_policy');

				$iAffected=$this->db->affected_rows();
				if ($iAffected!=$iCountList) {
					$aReturn['message'][]='Cannot Delete Policy for this member.';
				} else {
					$this->db->reset_query();
					$this->db->where('mem_id',$memID,false);
					$this->db->where('shop_id',$shopID,false);
					$this->db->delete('customer_member');
					if ($this->db->affected_rows() != 1) {
						$aReturn['message'][]='Cannot Delete member.';
					} else {
						$aReturn['result']=true;
					}
				}
			}
			return $aReturn;
		}
		
    public function edit_member($shopID=0,$memID=0,$policy=array()) {
			$aReturn=array('result'=>false,'message'=>null);

			$aDelete=null; $aInsert=null;	$aUpdate=null; $aOld=array();
//			echo "policy<pre>"; print_r($policy); echo "</pre>";

			if ( $shopID==0 || $memID==0 ) {
				$aReturn['message']=array();
				if ($memID==0) $aReturn['message'][]='Required Member ID';
				if ($shopID==0) $aReturn['message'][]='Required Shop ID';
			} else {
//				echo sprintf("<br>[edit_member](%d,%d)",$shopID,$memID);
				$aData=$this->list_member_policy($shopID,$memID);
//				echo "aData<pre>"; print_r($aData); echo "</pre>";
				
				$aReturn['result']=true;
				if (count($aData['data'])>0) {
					$aOld=array(); $aInsert=array(); $aUpdate=array(); $aDelete=array();
					foreach($aData['data'] as $data) {
						$aOld[]=$data['policy_id'];
						$policyID=$data['policy_id'];
/*
 * Policy in Database is not exist on incoming Policy : Delete Policy
 */
						if (! in_array($policyID,$policy)) {
							$aDelete[]=$policyID;
//							echo sprintf("<br>delete policy %d",$policyID);
							$result=$this->delete_member_policy($shopID, $memID,$policyID);
							$aReturn['result']&=$result['result'];
							$aReturn['message'][]=$result['message'];
						}
					}
				}
/*
 * Incoming Policy is not exist on Database Policy : Add Policy
 */
				if (count($policy)>0) {
					foreach($policy as $data) {
						if (! in_array($data,$aOld)) {
							$aInsert[]=$data;
							$policyID=$data;
//							echo sprintf("<br>add policy %d",$policyID);
							$result=$this->add_member_policy($shopID, $memID,$policyID);
							$aReturn['result']&=$result['result'];
							$aReturn['message'][]=$result['message'];
						}
					}
				}
					
			}
			return $aReturn;
		}
		
    public function add_member_policy($shopID=0,$memID=0,$policyID=0) {
			$aReturn=array('result'=>false,'message'=>null,'data'=>null);
			if ( $shopID==0 || $memID==0 || $policyID==0) {
					$aReturn['message']=array();
					if ($memID==0) $aReturn['message'][]='Required Member ID';
					if ($shopID==0) $aReturn['message'][]='Required Shop ID';
					if ($policyID==0) $aReturn['message'][]='Required Policy ID';
			} else {
				$this->db->from('customer_role_policy');
				$this->db->where('shop_id',$shopID,false);
				$this->db->where('mem_id',$memID,false);
				$this->db->where('policy_id',$policyID,false);

				$query=$this->db->get();
				$row=$query->row_array();
	//			echo print_r($result);
				if ($row) {
					$aReturn['message']='Exist Policy for this member';
				} else {
					$data['mem_id']=$memID;
					$data['shop_id']=$shopID;
					$data['policy_id']=$policyID;
					$data['pread']=1;

					$this->db->reset_query();
					$this->db->insert('customer_role_policy',$data);

					if ($this->db->affected_rows()==1) { 
						$aReturn['result']=true;
						$aReturn['message']=sprintf('Add Policy Completed.(%d)',$this->db->insert_id());
					} else {
						$aReturn['message']=sprintf('Cannot insert role "%d".',$policy);
					}
					
				}
			}
			return $aReturn;
		}
		
    public function delete_member_policy($shopID=0,$memID=0,$policyID=0) {
			$aReturn=array('result'=>false,'message'=>null);
			if ( $shopID==0 || $memID==0 || $policyID==0) {
					$aReturn['message']=array();
					if ($memID==0) $aReturn['message'][]='Required Member ID';
					if ($shopID==0) $aReturn['message'][]='Required Shop ID';
					if ($policyID==0) $aReturn['message'][]='Required Policy ID';
			} else {
				$this->db->from('customer_role_policy');
				$this->db->where('shop_id',$shopID,false);
				$this->db->where('mem_id',$memID,false);
				$this->db->where('policy_id',$policyID,false);

				$query=$this->db->get();
				$row=$query->row_array();
	//			echo print_r($result);
				if (! $row) {
					$aReturn['message']='Not Exist Policy for this member';
				} else {

					$this->db->reset_query();

					$this->db->where('shop_id',$shopID,false);
					$this->db->where('mem_id',$memID,false);
					$this->db->where('policy_id',$policyID,false);
					$this->db->delete('customer_role_policy');

					if ($this->db->affected_rows()==1) { 
						$aReturn['result']=true;
						$aReturn['message']=sprintf('Delete Policy Completed.(%d)',$policyID);
					} else {
						$aReturn['message']=sprintf('Cannot Delete role.');
					}
					
				}
			}
			return $aReturn;
		}
		
		function get_member($memID=0) {
			$aReturn=array('result'=>false,'message'=>null,$data=>null);
			if ($memID==0) {
				$aReturn['message']=array();
				if ($memID==0) $aReturn['message'][]='Required Member ID';
			} else {
				$this->db->from('member_header');
				$this->db->where('memh_id',$memID,false);

				$query=$this->db->get();
				$row=$query->row_array();
	//			echo print_r($result);
				if (! $row) {
					$aReturn['message']='Not Exist Member';
				} else {
					$aReturn['result']=true;
					$aReturn['data']=$row;
				}
			}
			return $aReturn;
		}
}
