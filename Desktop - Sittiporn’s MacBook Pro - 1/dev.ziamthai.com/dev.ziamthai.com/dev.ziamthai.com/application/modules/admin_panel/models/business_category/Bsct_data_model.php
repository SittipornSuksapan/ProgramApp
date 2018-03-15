<?php

defined('BASEPATH') OR exit('No direct script access allowed');
if (! defined('MAX_BIZ_UPLOAD')) define('MAX_BIZ_UPLOAD', 3);

class Bsct_data_model extends CI_Model {

    private $apps_name = 'admin_panel';

    function __construct() {
        parent:: __construct();
    }

		private function photo_resize($photo_path) {
      $this->load->library('image_lib');

      $config['image_library'] = 'gd2';
      $config['source_image'] = $photo_path;
      $config['create_thumb'] = TRUE;
      $config['maintain_ratio'] = TRUE;
      $config['width'] = 320;
      $config['height'] = 240;
      $config['quality'] = 100;

      $this->image_lib->clear();
      $this->image_lib->initialize($config);
      $this->image_lib->resize();
    }

		private function delete_images($id) {
			$result=array('result'=>false,'message'=>null,'data'=>null);
      if (empty($id)) {
					$result['message']=sprintf("No %d",$id);
      } else {
				/* Find Record */
				$this->db->from('business_shop_images');
				$this->db->join('image_type','business_shop_images.bssi_imgt_id=image_type.imgt_id');
				$this->db->where('bssi_id', $id);

				$query = $this->db->get();
				$row = $query->row_array();

				if (!isset($row)) {
						$result['message']=sprintf("No record %d found",$id);
				} else {
					$sFile=sprintf("%s/uploads/%s/%s",ROOT_PATH,$row['imgt_path'],$row['bssi_file']);
					$result['message']=sprintf("unlink %s",$sFile);
					if (file_exists($sFile)) {
						/* Delete Images is exists.*/
						$result['message'].=sprintf("<br>Found %s",$sFile);
						unlink($sFile);
					} else {
						$result['message'].=sprintf("<br>No Found %s",$sFile);
					}
					$this->db->reset_query();
					$this->db->where('bssi_id', $id);
					$sSQL=$this->db->get_compiled_delete('business_shop_images');
					$this->db->delete('business_shop_images');
					$result['message'].=sprintf("<br> %s",$sSQL);
					if ($this->db->affected_rows()==1) { 
						$result['result']=true;
					}
				}
			}
			return $result;
    }

		private function update_desc($id,$desc) {
			$result=array('result'=>false,'message'=>null,'data'=>null);
      if (empty($id)) {
					$result['message']=sprintf("No %d",$id);
      } else {
				/* Find Record */
				$this->db->from('business_shop_images');
				$this->db->where('bssi_id', $id);

				$query = $this->db->get();
				$row = $query->row_array();

				if (!isset($row)) {
						$result['message']=sprintf("No record %d found",$id);
				} else {
					$data=array('bssi_title'=>$desc);
					$this->db->reset_query();
//					$this->db->set('bssi_title', $desc);
					$this->db->where('bssi_id', $id,false);
				
//					$sSQL=$this->db->get_compiled_update('business_shop_images',$data);
					$this->db->update('business_shop_images',$data);
//					$result['message'].=sprintf("<br> %s",$sSQL);
					if ($this->db->affected_rows()==1) { 
						$result['result']=true;
					}
				}
			}
			return $result;
    }
		
		public function add_data($data,$file) {
			$result=array('result'=>false,'message'=>null,'data'=>null);
			$input=array();
			$bFileHeader=false;
			$bFileLogo=false;
      $sDate=str_replace('.','',sprintf("%f",microtime(true)));
			if (isset($file["file_bssh_imgfront"])) {
				if ($file["file_bssh_imgfront"]['error']!=0) {
				} else {
					$sExt = pathinfo(strtolower($file["file_bssh_imgfront"]["name"]),PATHINFO_EXTENSION);
					$sLogoFile=sprintf('%s.%s',$sDate,$sExt);
					$sThumbFile=sprintf('%s_thumb.%s',$sDate,$sExt);
					$sFullFile=sprintf('%s_full.%s',$sDate,$sExt);
					$sLogoPath=sprintf("%s/uploads/front/%s",ROOT_PATH,$sLogoFile);
					$sThumbPath=sprintf("%s/uploads/front/%s",ROOT_PATH,$sThumbFile);
					$sFullPath=sprintf("%s/uploads/front/%s",ROOT_PATH,$sFullFile);
//					$chkImage=getimagesize($file["file_bssh_imgfront"]["tmp_name"]);
					if (move_uploaded_file($file["file_bssh_imgfront"]["tmp_name"],$sLogoPath)) {
						$bFileHeader=true;
						$this->photo_resize($sLogoPath);
						if (file_exists($sLogoPath)) rename($sLogoPath,$sFullPath);
						if (file_exists($sThumbPath)) rename($sThumbPath,$sLogoPath);
						//						unlink($sLogoPath);
					} else {
						unlink($file["file_bssh_imgfront"]["tmp_name"]);
					}
				}
			}

			if (!empty($data['input_bssh_title'])) $input['bssh_title']=$data['input_bssh_title'];
			if (!empty($data['input_bssh_desc'])) $input['bssh_desc']=$data['input_bssh_desc'];
			if (!empty($data['input_bssh_detail'])) $input['bssh_detail']=$data['input_bssh_detail'];
			if (!empty($data['input_bssh_loc1'])) $input['bssh_loc1']=$data['input_bssh_loc1'];
			if (!empty($data['input_bssh_loc2'])) $input['bssh_loc2']=$data['input_bssh_loc2'];
			if (!empty($data['input_bssh_address'])) $input['bssh_address']=$data['input_bssh_address'];
			if (!empty($data['input_bssh_zipcode'])) $input['bssh_zipcode']=$data['input_bssh_zipcode'];
			if (!empty($data['input_bssh_website'])) $input['bssh_website']=$data['input_bssh_website'];
			if (!empty($data['input_bssh_email'])) $input['bssh_email']=$data['input_bssh_email'];
			if (!empty($data['input_bssh_maps'])) $input['bssh_maps']=$data['input_bssh_maps'];
			if (!empty($data['input_bssh_phone'])) $input['bssh_phone']=$data['input_bssh_phone'];
			if (!empty($data['input_bssh_mobile'])) $input['bssh_mobile']=$data['input_bssh_mobile'];
			if (!empty($data['input_bssh_time_zone'])) $input['bssh_time_zone']=$data['input_bssh_time_zone'];
//			if (!empty($data['input_bssh_'])) $input['bssh_']=$data['input_bssh_'];
			if (!empty($data['input_bssh_delivery_area'])) $input['bssh_delivery_area']='||'.implode('||',$data['input_bssh_delivery_area']);
			if ($bFileHeader) $input['bssh_imghead']=$sHeaderFile;
			if ($bFileLogo) $input['bssh_imgfront']=$sLogoFile;
			$sDate=date('Y-m-d h:i:s');
			$sIP=$_SERVER['REMOTE_ADDR'];
			$sUser=$this->session->userdata($this->apps_name . '_uid');
			$input['bssh_cdate']=$sDate;
			$input['bssh_cip']=$sIP;
			$input['bssh_cuser']=$sUser;
			$input['bssh_mdate']=$sDate;
			$input['bssh_mip']=$sIP;
			$input['bssh_muser']=$sUser;
			

			$sSQL=$this->db->set($input)->get_compiled_insert('business_shop');
			$this->db->insert('business_shop',$input);
			
			$result['message']=$sSQL;
			if ($this->db->affected_rows()==1) { 
				$result['result']=true;
				$result['data']=$this->db->insert_id();
			}
			return $result;
		}

		public function edit_data1($data,$file) {
			$result=array('result'=>false,'message'=>null,'data'=>null);
			$input=array();
			$bFileHeader=false;
			$bFileLogo=false;
      $sDate=str_replace('.','',sprintf("%f",microtime(true)));
			if (isset($file["file_bssh_imgfront"])) {
				if ($file["file_bssh_imgfront"]['error']!=0) {
				} else {
					$sExt = pathinfo(strtolower($file["file_bssh_imgfront"]["name"]),PATHINFO_EXTENSION);
					$sLogoFile=sprintf('%s.%s',$sDate,$sExt);
					$sThumbFile=sprintf('%s_thumb.%s',$sDate,$sExt);
					$sFullFile=sprintf('%s_full.%s',$sDate,$sExt);
					$sLogoPath=sprintf("%s/uploads/front/%s",ROOT_PATH,$sLogoFile);
					$sThumbPath=sprintf("%s/uploads/front/%s",ROOT_PATH,$sThumbFile);
					$sFullPath=sprintf("%s/uploads/front/%s",ROOT_PATH,$sFullFile);
//					$chkImage=getimagesize($file["file_bssh_imgfront"]["tmp_name"]);
					if (move_uploaded_file($file["file_bssh_imgfront"]["tmp_name"],$sLogoPath)) {
						$bFileHeader=true;
						if (! empty($data['input_bssh_oldfront'])) {
							$sOldPath=sprintf("%s/%s",ROOT_PATH,$data['input_bssh_oldfront']);
							unlink($sOldPath);
						}
//					unlink($sLogoPath);
						$this->photo_resize($sLogoPath);
						if (file_exists($sLogoPath)) rename($sLogoPath,$sFullPath);
						if (file_exists($sThumbPath)) rename($sThumbPath,$sLogoPath);
						$input['bssh_imgfront']=$sLogoFile;
					} else {
						unlink($file["file_bssh_imgfront"]["tmp_name"]);
					}
				}
			}

			if (!empty($data['input_bssh_title'])) $input['bssh_title']=$data['input_bssh_title'];
			if (!empty($data['input_bssh_desc'])) $input['bssh_desc']=$data['input_bssh_desc'];
			if (!empty($data['input_bssh_detail'])) $input['bssh_detail']=$data['input_bssh_detail'];
			if (!empty($data['input_bssh_loc1'])) $input['bssh_loc1']=$data['input_bssh_loc1'];
			if (!empty($data['input_bssh_loc2'])) $input['bssh_loc2']=$data['input_bssh_loc2'];
			if (!empty($data['input_bssh_address'])) $input['bssh_address']=$data['input_bssh_address'];
			if (!empty($data['input_bssh_zipcode'])) $input['bssh_zipcode']=$data['input_bssh_zipcode'];
			if (!empty($data['input_bssh_website'])) $input['bssh_website']=$data['input_bssh_website'];
			if (!empty($data['input_bssh_email'])) $input['bssh_email']=$data['input_bssh_email'];
			if (!empty($data['input_bssh_maps'])) $input['bssh_maps']=$data['input_bssh_maps'];
			if (!empty($data['input_bssh_phone'])) $input['bssh_phone']=$data['input_bssh_phone'];
			if (!empty($data['input_bssh_mobile'])) $input['bssh_mobile']=$data['input_bssh_mobile'];
			if (!empty($data['input_bssh_time_zone'])) $input['bssh_time_zone']=$data['input_bssh_time_zone'];
//			if (!empty($data['input_bssh_'])) $input['bssh_']=$data['input_bssh_'];
			if (!empty($data['input_bssh_delivery_area'])) $input['bssh_delivery_area']='||'.implode('||',$data['input_bssh_delivery_area']);

			$this->db->reset_query();
//			$this->db->set('bssi_title', $desc);
			$this->db->where('bssh_id', $data['input_bssh_id'],false);
			$this->db->update('business_shop',$input);
			
			//$result['message']=$sSQL;
			if ($this->db->affected_rows()==1) { 
				$result['result']=true;
			}
			return $result;
		}
		
		public function list_data($curr=1,$ppage=10,$id=101) {
			$result=array('result'=>false,'message'=>null,'data'=>null);
			$result['index']=array("max"=>0,"curr"=>1,"ppage"=>10,"start"=>0,"stop"=>0,"next"=>0,"prev"=>0);
			$this->db->from('business_type_category');
			$this->db->where('bsct_bsth_id', $id);
			$query = $this->db->get();
			$iMaxRec=$query->num_rows();
			if ($iMaxRec < 1) {
					$result['message']=sprintf("No record found.");
			} else {
				$result['index']['max']=$iMaxRec;
				$records=$query->result_array();

				if ($curr<=1) {
					$iStart=0;
					$iStop=($ppage < $iMaxRec)?$ppage:$iMaxRec;
				} else {
					$iStart=($ppage*($curr-1));
					$iStop=($iStart+$ppage < $iMaxRec)?$iStart+$ppage:$iMaxRec;
				}
				$result['index']['curr']=$curr;
				$result['index']['start']=$iStart;
				$result['index']['stop']=$iStop;
				$result['index']['ppage']=$ppage;
				for ($iCount=$iStart; ($iCount<$iStop); $iCount++) {
					$result['data'][]=$records[$iCount];
				}
				$result['result']=true;
			}
			return $result;
		}
	
}
