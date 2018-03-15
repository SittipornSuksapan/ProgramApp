<?php

defined('BASEPATH') OR exit('No direct script access allowed');
if (! defined('MAX_BIZ_UPLOAD')) define('MAX_BIZ_UPLOAD', 3);

class Hour_model extends CI_Model {

    private $apps_name = 'client';

    function __construct() {
        parent:: __construct();
    }

		public function get_workhour($id,$type=0) {
      if ((empty($id)) || ($type > 1) || ($type <0)){
        return null;
      }
      $this->db->from('business_shop');
//			$this->db->join('image_type','imgt_id=bssh_imgt_id');
      $this->db->where('bssh_id', $id);

      $query = $this->db->get();
      $row = $query->row_array();

      if (!$row) {
        return null;
      }
			$this->db->reset_query();
//			$this->db->set('bssi_title', $desc);
			$this->db->from('business_shop_workhour');
			$this->db->where('bssw_bssh_id', $id,false);
			$this->db->where('bssw_online', $type,false);
			$this->db->order_by('bssw_day_week ASC,bssw_open_time ASC');
      $query = $this->db->get();
      $row = $query->row_array();
      if (!$row) {
				return null;
			}
			return $query->result_array();			
		}

		public function add_workhour($shopID,$type,$dow,$open,$close) {
      if( ($type > 1) || ($type <0) || ($dow > 6) || ($dow < 0) || empty($open) || empty($close) ){
        return null;
      }
			$input['bssw_bssh_id']=$shopID;
			$input['bssw_day_week']=$dow;
			$input['bssw_open_time']=$open;
			$input['bssw_close_time']=$close;
			$input['bssw_online']=$type;
			$result['result']=false;
			
			$sSQL=$this->db->set($input)->get_compiled_insert('business_shop_workhour');
			$this->db->insert('business_shop_workhour',$input);
			if ($this->db->affected_rows()==1) { 
				$result['result']=true;
				$result['data']=$this->db->insert_id();
			} else {
				$result['data']='!!! Cannot insert information !!!';
			}
			return $result;
		}
		
		public function edit_workhour($id,$dow,$open,$close) {
			$result=array('result'=>false,'message'=>null,'data'=>null);
      if (empty($id)) {
					$result['message']=sprintf("No %d",$id);
      } else {
				/* Find Record */
				$this->db->from('business_shop_workhour');
				$this->db->where('bssw_id', $id);

				$query = $this->db->get();
				$row = $query->row_array();

				if (!isset($row)) {
						$result['message']=sprintf("No record %d found",$id);
				} else {
					$data['bssw_day_week']=$dow;
					$data['bssw_open_time']=$open;
					$data['bssw_close_time']=$close;
					$this->db->reset_query();
//					$this->db->set('bssi_title', $desc);
					$this->db->where('bssw_id', $id,false);
				
//					$sSQL=$this->db->get_compiled_update('business_shop_images',$data);
					$this->db->update('business_shop_workhour',$data);
//					$result['message'].=sprintf("<br> %s",$sSQL);
					if ($this->db->affected_rows()==1) { 
						$result['result']=true;
					} else {
						$result['message']=sprintf("Cannot update record because '%s'.",$this->db->error());
					}
				}
			}
			return $result;
		}
		
		public function del_workhour($id){
			$result=array('result'=>false,'message'=>null,'data'=>null);
      if (empty($id)) {
					$result['message']=sprintf("No %d",$id);
      } else {
				/* Find Record */
				$this->db->from('business_shop_workhour');
				$this->db->where('bssw_id', $id);

				$query = $this->db->get();
				$row = $query->row_array();

				if (!isset($row)) {
						$result['message']=sprintf("No record %d found",$id);
				} else {
					$this->db->reset_query();
//					$this->db->set('bssi_title', $desc);
					$this->db->where('bssw_id', $id,false);
				
//					$sSQL=$this->db->get_compiled_delete('business_shop_workhour');
					$this->db->delete('business_shop_workhour');
//					$result['message'].=sprintf("<br> %s",$sSQL);
					if ($this->db->affected_rows()==1) { 
						$result['result']=true;
					} else {
						$result['message']=sprintf("Cannot Delete record because '%s'.",$this->db->error());
					}
				}
			}
			return $result;
		}
		
    public function force_online($id, $iForce) {
			$result=array('result'=>false,'message'=>null,'data'=>null);
      if (empty($id)) {
					$result['message']=sprintf("No %d",$id);
      } else {
				/* Find Record */
				$this->db->from('business_shop');
				$this->db->where('bssh_id', $id);

				$query = $this->db->get();
				$row = $query->row_array();

				if (!isset($row)) {
						$result['message']=sprintf("No record %d found",$id);
				} else {
					if ($row['bssh_force_online']!= $iForce) {
						$this->db->reset_query();
	//					$this->db->set('bssi_title', $desc);
						$this->db->where('bssh_id', $id,false);
						$data['bssh_force_online']=$iForce;

	//					$sSQL=$this->db->get_compiled_update('business_shop_images',$data);
						$this->db->update('business_shop',$data);
	//					$result['message'].=sprintf("<br> %s",$sSQL);
						if ($this->db->affected_rows()==1) { 
							$result['result']=true;
						} else {
							$result['message']=sprintf("Cannot Update record because '%s'.",$this->db->error());
						}
					} else {
						$result['result']=true;
					}
				}
			}
			return $result;
		}
}
