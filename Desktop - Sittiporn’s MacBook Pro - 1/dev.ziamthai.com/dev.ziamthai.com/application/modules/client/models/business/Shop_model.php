<?php

defined('BASEPATH') OR exit('No direct script access allowed');
if (! defined('MAX_BIZ_UPLOAD')) define('MAX_BIZ_UPLOAD', 3);

class Shop_model extends CI_Model {

    function __construct() {
        parent:: __construct();
    }

		private function photo_resize($photo_path,$width=320,$height=240) {
      $this->load->library('image_lib');

      $config['image_library'] = 'gd2';
      $config['source_image'] = $photo_path;
      $config['create_thumb'] = TRUE;
      $config['maintain_ratio'] = TRUE;
      $config['width'] = $width;
      $config['height'] = $height;
      $config['quality'] = 100;

      $this->image_lib->clear();
      $this->image_lib->initialize($config);
      $this->image_lib->resize();
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

		public function edit_shop($data,$file) {
			$result=array('result'=>false,'message'=>null,'data'=>null);
			$input=array();
			$bFileHeader=false;
			$bFileLogo=false;
			$shopID=$data['input_bssh_id'];
      $sDate=str_replace('.','',sprintf("%f",microtime(true)));
			if (isset($file["file_bssh_imgfront"])) {
				if ($file["file_bssh_imgfront"]['error']!=0) {
				} else {
					$sExt = pathinfo(strtolower($file["file_bssh_imgfront"]["name"]),PATHINFO_EXTENSION);
					$sLogoFile=sprintf('%s.%s',$sDate,$sExt);
					$sThumbFile=sprintf('%s_thumb.%s',$sDate,$sExt);
					$sFullFile=sprintf('%s_full.%s',$sDate,$sExt);
					$sLogoPath=sprintf("%s/uploads/client/%d/shop/%s",ROOT_PATH,$shopID,$sLogoFile);
					$sThumbPath=sprintf("%s/uploads/client/%d/shop/%s",ROOT_PATH,$shopID,$sThumbFile);
					$sFullPath=sprintf("%s/uploads/client/%d/shop/%s",ROOT_PATH,$shopID,$sFullFile);
					$sDefaultPath=sprintf("%s/uploads/front/%s",ROOT_PATH,$sLogoFile);
//					$chkImage=getimagesize($file["file_bssh_imgfront"]["tmp_name"]);
					if (move_uploaded_file($file["file_bssh_imgfront"]["tmp_name"],$sLogoPath)) {
						$bFileHeader=true;
						if (! empty($data['file_bssh_oldfront'])) {
							$sOldFile=sprintf("%s/uploads/client/%d/shop/%s",ROOT_PATH,$shopID,$data['file_bssh_oldfront']);
							if (file_exists($sOldFile)) {
								unlink($sOldFile);
							}
						}
//					unlink($sLogoPath);
						$this->photo_resize($sLogoPath);
						if (file_exists($sLogoPath)) rename($sLogoPath,$sFullPath);
						if (file_exists($sThumbPath)) { 
							copy($sThumbPath,$sDefaultPath);
							rename($sThumbPath,$sLogoPath);
						}
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
					$sHeaderPath=sprintf("%s/uploads/client/%d/shop/%s",ROOT_PATH,$shopID,$sHeaderFile);
					$sThumbPath=sprintf("%s/uploads/client/%d/shop/%s",ROOT_PATH,$shopID,$sThumbFile);
					$sFullPath=sprintf("%s/uploads/client/%d/shop/%s",ROOT_PATH,$shopID,$sFullFile);
					$sDefaultPath=sprintf("%s/uploads/header/%s",ROOT_PATH,$sFullFile);
//					$chkImage=getimagesize($file["file_bssh_imgheader"]["tmp_name"]);
					if (move_uploaded_file($file["file_bssh_imghead"]["tmp_name"],$sHeaderPath)) {
						$bFileHeader=true;
						if (! empty($data['file_bssh_oldhead'])) {
							$sOldFile=sprintf("%s/uploads/client/%d/shop/%s",ROOT_PATH,$shopID,$data['file_bssh_oldhead']);
							if (file_exists($sOldFile)) {
								unlink($sOldFile);
							}
						}
//					unlink($sHeaderPath);
						$this->photo_resize($sHeaderPath);
						if (file_exists($sHeaderPath)) rename($sHeaderPath,$sFullPath);
						if (file_exists($sThumbPath)) {
							copy($sThumbPath,$sDefaultPath);
							rename($sThumbPath,$sHeaderPath);
						}
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
//			if (!empty($data['input_bssh_loc1'])) $input['bssh_loc1']=$data['input_bssh_loc1'];
//			if (!empty($data['input_bssh_loc2'])) $input['bssh_loc2']=$data['input_bssh_loc2'];
//			if (!empty($data['input_bssh_address'])) $input['bssh_address']=$data['input_bssh_address'];

			if (!empty($data['input_addr1'])) $input['addr1']=trim($data['input_addr1']);
			if (!empty($data['input_addr2'])) $input['addr2']=trim($data['input_addr2']);
			if (!empty($data['input_city'])) $input['city']=trim($data['input_city']);
			if (!empty($data['input_state'])) $input['state']=trim($data['input_state']);
			if (!empty($data['input_city'])) $input['city']=trim($data['input_city']);
			if (!empty($data['input_zipcode'])) $input['zipcode']=trim($data['input_zipcode']);
			if (!empty($data['input_tax_rate'])) $input['tax_rate']=$data['input_tax_rate'];
			if (!empty($data['input_tax_delivery'])) $input['city']=($data['input_tax_delivery']==1)?1:0;

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
		
		public function gen_client_folder($id) {
			$return=array('result'=>false,'message'=>null,'data'=>null);
			$bHead=false;
			$bSub=false;
			$iSuccess=0;
			$arrFolder=array('blog','photo','shop','video');
      if (empty($id)) {
				$result['message']['error'][]=sprintf("No %d",$id);
			} else {
				foreach($arrFolder as $aFolder) {
					$sFolder=sprintf('%s/uploads/client/%d',ROOT_PATH,$id);
					if ( is_dir($sFolder) || $bHead) {
						$return['message']['success'][]='Found Dir "'.$sFolder.'"';
						$bHead=true;
					}	else {
						// create ClientID Folder
						$return['message']['info'][]='No Found Dir "'.$sFolder.'"';
						if (mkdir($sFolder,0777)) {
							$bHead=true;
							$return['message']['success'][]='Create Dir "'.$sFolder.'" successful.';
						} else {
							$return['message']['error'][]='Cannot Create Dir "'.$sFolder.'"';
						}
					}
					if ($bHead) {
						$bSub=false;
						$sFolder=sprintf('%s/uploads/client/%d/%s',ROOT_PATH,$id,$aFolder);
						if ( is_dir($sFolder)) {
							$return['message']['info'][]='Found Dir "'.$sFolder.'"';
							$bSub=true;
						}	else {
							// create Sub Folder
							$return['message']['info'][]='No Found Dir "'.$sFolder.'"';
							if ( mkdir($sFolder,0777)) {
								$bSub=true;
								$return['message']['success'][]='Create Dir "'.$sFolder.'" successful';
							} else {
								$return['message']['error'][]='Cannot Create Dir "'.$sFolder.'"';
							}
						}
						if ($bSub) $iSuccess++;
					}
				} // end foreach
			}
			if ($iSuccess==count($arrFolder)) $return['result']=true;
			return $return;
		}

}
