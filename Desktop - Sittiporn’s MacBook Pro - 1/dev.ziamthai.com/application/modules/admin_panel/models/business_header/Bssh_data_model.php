<?php

defined('BASEPATH') OR exit('No direct script access allowed');
if (! defined('MAX_BIZ_UPLOAD')) define('MAX_BIZ_UPLOAD', 3);

class Bssh_data_model extends CI_Model {

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
//					$result['message'].=sprintf("<br> %s",$sSQL);
					$this->db->delete('business_shop_images');
//					$sSQL=$this->db->get_compiled_delete('business_shop_images');
//					echo sprintf("<br> %s",$sSQL);
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

		public function get_data($id) {
      if (empty($id)) {
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

      return $row;
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
				
					$sSQL=$this->db->get_compiled_delete('business_shop_workhour');
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
		
		public function list_owner() {
			$this->db->select('user_id,user_name,user_type');
			$this->db->from('admin_client_user');

			$query = $this->db->get();
			$row = $query->row_array();

			if (!$row) {
					return null;
			}

			return $query->result_array();
			
		}

		public function get_images($id) {
      if (empty($id)) {
          return null;
      }
      $this->db->select('*');
      $this->db->from('business_shop_images');
      $this->db->join('image_type','image_type.imgt_id = business_shop_images.bssi_imgt_id');
      $this->db->where('bssi_bssh_id', $id);
      $this->db->order_by('bssi_imgt_id');

      $query = $this->db->get();
      $row = $query->result_array();

      if (!$row) {
          return null;
      }

      return $row;
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

			if (isset($file["file_bssh_imghead"])) {
				if ($file["file_bssh_imghead"]['error']!=0) {
				} else {
					$sExt = pathinfo(strtolower($file["file_bssh_imghead"]["name"]),PATHINFO_EXTENSION);
					$sHeaderFile=sprintf('%s.%s',$sDate,$sExt);
					$sThumbFile=sprintf('%s_thumb.%s',$sDate,$sExt);
					$sFullFile=sprintf('%s_full.%s',$sDate,$sExt);
					$sHeaderPath=sprintf("%s/uploads/header/%s",ROOT_PATH,$sHeaderFile);
					$sThumbPath=sprintf("%s/uploads/header/%s",ROOT_PATH,$sThumbFile);
					$sFullPath=sprintf("%s/uploads/header/%s",ROOT_PATH,$sFullFile);
//					$chkImage=getimagesize($file["file_bssh_imgheader"]["tmp_name"]);
					if (move_uploaded_file($file["file_bssh_imghead"]["tmp_name"],$sHeaderPath)) {
						$bFileLogo=true;
						$this->photo_resize($sHeaderPath);
						if (file_exists($sHeaderPath)) rename($sHeaderPath,$sFullPath);
						if (file_exists($sThumbPath)) rename($sThumbPath,$sHeaderPath);
//						unlink($sHeaderPath);
					} else {
						unlink($file["file_bssh_imghead"]["tmp_name"]);
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
			$input['bssh_subcate']=null;
			if (!empty($data['input_bssh_subcate'])) {
				$input['bssh_subcate']='||'.implode('||',$data['input_bssh_subcate']);
			}
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

			if (isset($file["file_bssh_imghead"])) {
				if ($file["file_bssh_imghead"]['error']!=0) {
				} else {
					$sExt = pathinfo(strtolower($file["file_bssh_imghead"]["name"]),PATHINFO_EXTENSION);
					$sHeaderFile=sprintf('%s.%s',$sDate,$sExt);
					$sThumbFile=sprintf('%s_thumb.%s',$sDate,$sExt);
					$sFullFile=sprintf('%s_full.%s',$sDate,$sExt);
					$sHeaderPath=sprintf("%s/uploads/header/%s",ROOT_PATH,$sHeaderFile);
					$sThumbPath=sprintf("%s/uploads/header/%s",ROOT_PATH,$sThumbFile);
					$sFullPath=sprintf("%s/uploads/header/%s",ROOT_PATH,$sFullFile);
//					$chkImage=getimagesize($file["file_bssh_imgheader"]["tmp_name"]);
					if (move_uploaded_file($file["file_bssh_imghead"]["tmp_name"],$sHeaderPath)) {
						$bFileHeader=true;
						if (! empty($data['input_bssh_oldhead'])) {
							$sOldPath=sprintf("%s/%s",ROOT_PATH,$data['input_bssh_oldhead']);
							unlink($sOldPath);
						}
//					unlink($sHeaderPath);
						$this->photo_resize($sHeaderPath);
						if (file_exists($sHeaderPath)) rename($sHeaderPath,$sFullPath);
						if (file_exists($sThumbPath)) rename($sThumbPath,$sHeaderPath);
						$input['bssh_imghead']=$sHeaderFile;
					} else {
						unlink($file["file_bssh_imgheader"]["tmp_name"]);
					}
				}
			}
			if (!empty($data['input_bssh_title'])) $input['bssh_title']=$data['input_bssh_title'];
			if (!empty($data['input_bssh_desc'])) $input['bssh_desc']=$data['input_bssh_desc'];
			if (!empty($data['input_bssh_owner'])) $input['bssh_owner']=$data['input_bssh_owner'];
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
			$input['bssh_subcate']=null;
			if (!empty($data['input_bssh_subcate'])) {
				$input['bssh_subcate']='||'.implode('||',$data['input_bssh_subcate']);
			}

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

		/* function for list state form database, id=country */
		public function list_state($id) {
			if (empty($id)) {
				return null;
			}
			$this->db->from('location_head');
			$this->db->where('loch_pid', $id);

			$query = $this->db->get();
			$row = $query->row_array();

			if (!$row) {
					return null;
			}

			return $query->result_array();
			
		}

		public function list_biztype($id=0) {
			$this->db->where('bsth_pid',$id,false);
			$this->db->where('bsth_active',1,false);
			$this->db->from('business_type');
			$this->db->order_by('bsth_pid ASC,bsth_title ASC');

			$query = $this->db->get();
			$row = $query->row_array();

			if (!$row) {
					return null;
			}

			return $query->result_array();
			
		}
		
		public function list_imgtype($id) {
			if (empty($id)) {
				return null;
			}
			$this->db->from('image_type');
			$this->db->where('imgt_bsth_id', $id);
			$this->db->order_by('imgt_name');

			$query = $this->db->get();
			$row = $query->row_array();

			if (!$row) {
					return null;
			}

			return $query->result_array();
			
		}
		
		public function upload_images($id,$data,$arrTypes,$file) {
			$result=array('result'=>false,'message'=>null,'data'=>null);
			$input=array();
      $bFile=NULL;
			for ($iNum=1; $iNum<=MAX_BIZ_UPLOAD; $iNum++) {
        $bFile[$iNum-1]=false;
				$sFileName=sprintf('fileBizImg_%02d',$iNum);
				$sSelName=sprintf('selImgType_%02d',$iNum);
				$sTextName=sprintf('txtBizImg_%02d',$iNum);
				$sSelID=$data[$sSelName];
        $sTextTitle=(! empty($data[$sTextName]))?$data[$sTextName]:null;
				$sFolder='';
        $myFile=$file[$sFileName];

        // Loop for get folder
				foreach ($arrTypes as $aType) {
					if ($aType['imgt_id']==$sSelID) $sFolder=$aType['imgt_path'];
				}

				if (isset($myFile)) {
					if ($myFile['error']!=0) {
					} else {
						$sDate=str_replace('.','',sprintf("%f",microtime(true)));
						$sExt = pathinfo(strtolower($myFile["name"]),PATHINFO_EXTENSION);
						$sImageFile=sprintf('%d_%s.%s',$id,$sDate,$sExt);
						$sFullFile=sprintf('%d_%s_full.%s',$id,$sDate,$sExt);
						$sThumbFile=sprintf('%d_%s_thumb.%s',$id,$sDate,$sExt);
						$sImagePath=sprintf("%s/uploads/%s/%s",ROOT_PATH,$sFolder,$sImageFile);
						$sThumbPath=sprintf("%s/uploads/%s/%s",ROOT_PATH,$sFolder,$sThumbFile);
						$sFullPath=sprintf("%s/uploads/%s/%s",ROOT_PATH,$sFolder,$sFullFile);
//            $sInsertFile=sprintf("uploads/%s/%s",$sFolder,$sImageFile);
	//					$chkImage=getimagesize($file["file_bssh_imgfront"]["tmp_name"]);
						if (move_uploaded_file($myFile["tmp_name"],$sImagePath)) {
							$bFile[$iNum-1]=true;
							$this->photo_resize($sImagePath); // resise upload image to thumb
              rename($sImagePath,$sFullPath); // remove upload image
              rename($sThumbPath,$sImagePath);  // rename thumb to default;
              /* Prepare data to insert */
              $input['bssi_bssh_id']=$id;
              $input['bssi_imgt_id']=$sSelID;
              $input['bssi_file']=$sImageFile;
              $sDate=date('Y-m-d h:i:s');
              $sIP=$_SERVER['REMOTE_ADDR'];
              $sUser=$this->session->userdata($this->apps_name . '_uid');

              $input['bssi_cdate']=$sDate;
              $input['bssi_cip']=$sIP;
              $input['bssi_cuser']=$sUser;
              $input['bssi_mdate']=$sDate;
              $input['bssi_mip']=$sIP;
              $input['bssi_muser']=$sUser;

              if (! empty($sTextTitle) ) $input['bssi_title']=$sTextTitle;
              $sSQL=$this->db->set($input)->get_compiled_insert('business_shop_images');
              $this->db->insert('business_shop_images',$input);
              $result['message'].=sprintf("<br>%s",$sSQL);
              if ($this->db->affected_rows()==1) { 
                $result['result']=true;
                $result['message'].=sprintf("--> %d",$this->db->insert_id());
              }
              
						} else {
							unlink($myFile["tmp_name"]);
						}
					}
				}
			}
			return $result;
		}
		
		public function update_images($data) {
			$result=array('result'=>false,'message'=>null,'data'=>null);
			$iMaxRecord=(! empty($data['input_max_item']))?$data['input_max_item']:0;
			for($iRow=1;$iRow<=$iMaxRecord; $iRow++) {
				$sChkName=sprintf("chkDelImg_%d",$iRow);
				$chkValue=(! empty($data[$sChkName]))?$data[$sChkName]:'';
				$sRecName=sprintf("input_%d",$iRow);
				$recID=$data[$sRecName];
				if ( (! empty($chkValue)) && (! empty($recID)) ){
					/*delete checkbox is set*/
					$return=$this->delete_images($recID);
					$result['message'][]=$return['message'];
				} else {
					$sOld=sprintf("txtOldTitle_%d",$iRow);
					$sNew=sprintf("txtNewTitle_%d",$iRow);
					if ($data[$sOld]!=$data[$sNew]) {
						$return=$this->update_desc($recID,$data[$sNew]);
						$result['message'][]=$return['message'];
					}
				}
			}
			return $result;
		}

		public function list_bizshop($bizType='101') {
			$this->db->from('business_shop');
			$UserID=$this->session->userdata($this->apps_name . '_uid');
			$UserLevel=$this->session->userdata($this->apps_name . '_utype');
			if ($UserLevel != 'admin') {
				$this->db->where('bssh_owner',$UserID,false);
			}
			$this->db->where('bssh_bsth_id',$bizType);

			$this->db->order_by('bssh_id','ASC');

			$query = $this->db->get();
			$row = $query->row_array();

			if (!$row) {
					return null;
			}

			return $query->result_array();
			
		}
		public function delete_shop($id) {
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
					$input['bssh_active']=0;
					$this->db->reset_query();
		//			$this->db->set('bssi_title', $desc);
					$this->db->where('bssh_id', $id,false);
					$this->db->update('business_shop',$input);
					if ($this->db->affected_rows()==1) { 
						$result['result']=true;
					}
				}
			}
			return $result;
    }

		public function restore_shop($id) {
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
					$input['bssh_active']=1;
					$this->db->reset_query();
		//			$this->db->set('bssi_title', $desc);
					$this->db->where('bssh_id', $id,false);
					$this->db->update('business_shop',$input);
					if ($this->db->affected_rows()==1) { 
						$result['result']=true;
					}
				}
			}
			return $result;
    }

		public function get_menu($id) {
      if (empty($id)) {
          return null;
      }

      $this->db->from('business_shop_item_header');
//			$this->db->join('image_type','imgt_id=bssh_imgt_id');
      $this->db->where('bsih_bssh_id', $id);

      $query = $this->db->get();
      $row = $query->row_array();

      if (!$row) {
          return null;
      }

      return $query->result_array();
    }

		public function delete_menu_images($id) {
			$result=array('result'=>false,'message'=>null,'data'=>null);
      if (empty($id)) {
					$result['message']=sprintf("No %d",$id);
      } else {
				/* Find Record */
				$this->db->from('business_shop_item_media');
				$this->db->where('bsim_id', $id);

				$query = $this->db->get();
				$row = $query->row_array();

				if (!isset($row)) {
						$result['message']=sprintf("No record %d found",$id);
				} else {
					$sFile=sprintf("%s/uploads/biz_item_photo/",ROOT_PATH,$row['bsim_file']);
					$result['message'][]=sprintf("unlink %s",$sFile);
					if (file_exists($sFile)) {
						/* Delete Images is exists.*/
						$result['message'][]=sprintf("<br>Found %s",$sFile);
//						unlink($sFile);
					} else {
						$result['message'][]=sprintf("<br>No Found %s",$sFile);
					}
					$this->db->reset_query();
					$this->db->where('bsim_id', $id);
					$sSQL=$this->db->get_compiled_delete('business_shop_item_media ');
					$this->db->delete('business_shop_item_media');
//					$result['message'][]=sprintf("<br> %s",$sSQL);
					if ($this->db->affected_rows()==1) { 
						$result['result']=true;
					}
				}
			}
			return $result;
    }
	
		public function delete_menu_item($id) {
			$result=array('result'=>false,'message'=>null,'data'=>null);
      if (empty($id)) {
					$result['message']=sprintf("No %d",$id);
      } else {
				// Find Record
				$this->db->from('business_shop_item_header');
				$this->db->where('bsih_id', $id);

				$query = $this->db->get();
				$header = $query->row_array();

				if (!isset($header)) {
						$result['message']=sprintf("No record %d found",$id);
				} else {
					$this->db->reset_query();
					$this->db->from('business_shop_item_media');
					$this->db->where('bsim_bsih_id', $id);
					$arrImage = $query->result_array();
					$iMaxImage=count($arrImage);
					// Loop for Delete Image Media
					for ($iCount=0; $iCount<$iMaxImage; $iCount++) {
						$imgID=$arrImage[$iCount]['bsim_id'];
						$return=$this->delete_menu_images($imgID);
						$result['data'][]=$return;
					}
					// Delete header menu
 					$sFile=sprintf("%s/uploads/biz_item_photo/",ROOT_PATH,$header['bsih_photo']);
 
					$result['message'][]=sprintf("unlink %s",$sFile);
					if (file_exists($sFile)) {
					// Delete Images is exists.
						$result['message'][]=sprintf("<br>Found %s",$sFile);
						unlink($sFile);
					} else {
						$result['message'][]=sprintf("<br>No Found %s",$sFile);
					}
					$this->db->reset_query();
					$this->db->where('bsih_id', $id);
					$sSQL=$this->db->get_compiled_delete('business_shop_item_header');
					$this->db->delete('business_shop_item_header');
//					$result['message'][]=sprintf("<br> %s",$sSQL);
					if ($this->db->affected_rows()==1) { 
						$result['result']=true;
					}

				}
			}
			return $result;
    }
	
		public function purge_shop($id) {
			$result=array('result'=>false,'message'=>null,'data'=>null);
      if (empty($id)) {
					$result['message']=sprintf("No %d",$id);
      } else {
/*
				$shopInfo=$this->get_data($id);
				$arrImage=$this->get_images($id);
				$iMaxPicture=count($arrImage);
				$arrMenu=$this->get_menu($id);
				$iMaxMenu=count($arrMenu);
				// for to delete shop image
				$result['data']['shop_images']=null;
				$result['data']['shop_menus']=null;
				echo "<pre>"; 
				echo "\narrImages";
				print_r($arrImage); 
				echo "\narrMenu";
				print_r($arrMenu); 
				echo "</pre>";
				// for to delete shop menu image
				for ($iMenu=0; $iMenu<$iMaxMenu; $iMenu++) {
					$iMenuID=$arrMenu[$iCount]['bsih_id'];
					// delete image menu and record
					$return=$this->delete_menu_item($iMenuID);
					$result['data']['shop_menus'][]=array("id"=>$iMenuID,"result"=>$return);
				}

				// for to delete shop image
				for ($iCount=0; $iCount<$iMaxPicture; $iCount++) {
					$imgID=$arrImage[$iCount]['bssi_id'];
					$imgName=$arrImage[$iCount]['bssi_title'];
					// delete image and record
					$delResult=$this->delete_images($imgID);

					if ($delResult['result']==true) {
						$result['message'][]=sprintf("Delete '%s' successful.",$imgName);
						$result['data']['shop_images'][]=array("id"=>$imgID,"result"=>true);
					} else {
						$result['message'][]=sprintf("Delete '%s' failed.",$imgName);
						$result['data']['shop_images'][]=array("id"=>$imgID,"result"=>false);
					}
				}

				// delete head & front image on server
				//
				//
				// delete Shop Record
				//
				//
				$this->db->reset_query();
				$this->db->where('bssh_id', $id);
				$sSQL=$this->db->get_compiled_delete('business_shop');
// remark for test purge shop
//				$this->db->delete('business_shop');
				$result['message'][]=sprintf("<br> %s",$sSQL);
//				if ($this->db->affected_rows()==1) { 
//					$result['result']=true;
//				}

 */
 			}

 			return $result;
    }

		public function getShopByOwner($id) {
			$result=array('result'=>false,'message'=>null,'data'=>null);
      if (empty($id)) {
					$result['message']=sprintf("No %d",$id);
      } else {
				// Find Record
				$this->db->from('business_shop');
				$this->db->where('bssh_owner', $id);
				$query = $this->db->get();
				$header = $query->row_array();

				if (!isset($header)) {
					$result['message']=sprintf("No record %d found",$id);
				} else {
					$result['result']=true;
					$result['data']=array('shopID'=>$header['bssh_id'],'shopName'=>$header['bssh_title']);
				}	
			}
 			return $result;
		}
		
}
