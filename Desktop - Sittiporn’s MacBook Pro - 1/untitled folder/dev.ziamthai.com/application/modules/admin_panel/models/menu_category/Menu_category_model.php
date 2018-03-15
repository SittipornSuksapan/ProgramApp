<?php

defined('BASEPATH') OR exit('No direct script access allowed');
if (! defined('MAX_BIZ_UPLOAD')) define('MAX_BIZ_UPLOAD', 3);

class Menu_category_model extends CI_Model {

    private $apps_name = 'admin_panel';

    function __construct() {
        parent:: __construct();
				$this->load->model($this->apps_name . '/business_header/Bssh_data_model');
 
    }

		private function photo_resize($photo_path,$size=320) {
      $this->load->library('image_lib');

      $config['image_library'] = 'gd2';
      $config['source_image'] = $photo_path;
      $config['create_thumb'] = TRUE;
      $config['maintain_ratio'] = TRUE;
      $config['width'] = $size;
      $config['height'] = $size;
      $config['quality'] = 100;

      $this->image_lib->clear();
      $this->image_lib->initialize($config);
      $this->image_lib->resize();
    }

		private function icon_resize($icon_path) {
      $this->load->library('image_lib');

      $config['image_library'] = 'gd2';
      $config['source_image'] = $icon_path;
      $config['create_thumb'] = TRUE;
      $config['maintain_ratio'] = TRUE;
      $config['width'] = 100;
      $config['height'] = 100;
      $config['quality'] = 100;

      $this->image_lib->clear();
      $this->image_lib->initialize($config);
      $this->image_lib->resize();
    }

		public function list_category($shopID=0,$curr=1,$ppage=10) {
			$result=array('result'=>false,'message'=>null,'data'=>null);
			$result['index']=array("max"=>0,"curr"=>1,"ppage"=>10,"start"=>0,"stop"=>0,"next"=>0,"prev"=>0);
			$shop=NULL;
			if ($shopID==0) {
				$result['message'].='No shop id';
			} else {
				$shop=$this->Bssh_data_model->get_data($shopID);
				if (is_null($shop)) {
					$result['message'].='No shop information';
				} else {
					$this->db->from('business_shop_item_category');
					$this->db->where('bsic_bssh_id', $shopID,false);
					$this->db->order_by('bsic_active DESC,bsic_order ASC');
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
				}
			}
			return $result;
		}

		public function list_menu($shopID=0,$subcateID=0,$curr=1,$ppage=10) {
			$result=array('result'=>false,'message'=>null,'data'=>null);
			$result['index']=array("max"=>0,"curr"=>1,"ppage"=>10,"start"=>0,"stop"=>0,"next"=>0,"prev"=>0);
			if (($shopID==0) || ($subcateID==0)) {
				if ($shopID==0) $result['message'].='No shop id';
				if ($subcateID==0) $result['message'].='No menu category id';
			} else {
				$this->db->from('business_shop_item_header');
				$this->db->where('bsih_bssh_id',$shopID,false);
				$this->db->where('bsih_bsic_id',$subcateID,false);
				$this->db->where('bsih_pid',0,false);
				$this->db->order_by('bsih_active DESC,bsih_order ASC');
				$query = $this->db->get();
				$iMaxRec=$query->num_rows();
				if ($iMaxRec < 1) {
						$result['message']=sprintf("No record found.");
				} else {
					$result['index']['max']=$iMaxRec;
					$records=$query->result_array();

					if ($curr<=1) {
						$iStart=1;
						$iStop=($ppage < $iMaxRec)?$ppage:$iMaxRec;
					} else {
						$iStart=($ppage*($curr))-1;
						$iStop=($iStart+$ppage < $iMaxRec)?$iStart+$ppage:$iMaxRec;
					}
					$result['index']['curr']=$curr;
					$result['index']['start']=$iStart;
					$result['index']['stop']=$iStop;
					$result['index']['ppage']=$ppage;
					for ($iCount=$iStart-1; ($iCount<$iStop); $iCount++) {
						$sPath=sprintf("%s/%s%s",ROOT_PATH,PATH_ITEM_PHOTO,$records[$iCount]['bsih_photo']);
						$sImg=sprintf('%s%s',base_url(PATH_ITEM_PHOTO),$records[$iCount]['bsih_photo']);
						$records[$iCount]['img_url']=null;
						if (file_exists($sPath) && !is_dir($sPath)) {
							$records[$iCount]['img_url']=$sImg;
						}
						$result['data'][]=$records[$iCount];
					}
					$result['result']=true;
				}
			}
			return $result;
		}

		public function get_data($id) {
			if (empty($id)) {
				return null;
			} else {
				$this->db->from('business_shop_item_category');
				$this->db->where('bsic_bssh_id', $id,false);
				$query = $this->db->get();
				$row = $query->row_array();
				if (!isset($row)) { 
					return null;
				} else {
					return $row;
				}
			}			
		}
		
		public function get_all_category($shopID){
			if (empty($shopID) || ($shopID <=0)) {
				return null;
			}
			$this->db->from('business_shop_item_category');
			$this->db->where('bsic_bssh_id',$shopID,false);
			$this->db->order_by('bsic_order ASC');
			$this->db->order_by('bsic_name ASC');
			$query = $this->db->get();
			$row = $query->row_array();
			if (is_null($row)) {
				return null;
			}
			return $query->result_array();
		}
		
		public function get_all_menu($shopID,$cateID) {
			if (empty($shopID) || empty($cateID)) {
				return null;
			}
			$this->db->from('business_shop_item_header');
			$this->db->where('bsih_bssh_id',$shopID,false);
			$this->db->where('bsih_bsic_id',$cateID,false);
			$this->db->where('bsih_pid',0,false);
			$query = $this->db->get();
			$row = $query->row_array();
			if (is_null($row)) {
				return null;
			}
			return $query->result_array();
		}
		
		public function get_category($cateID){
			$result=array('result'=>false,'message'=>null,'data'=>null);
      $sDate=str_replace('.','',sprintf("%f",microtime(true)));
			if (empty($cateID) || ($cateID <=0)) {
				$result['message']='No menu category id.';
			} else {
				$this->db->from('business_shop_item_category');
				$this->db->where('bsic_id',$cateID,false);
				$query = $this->db->get();
				$row = $query->row_array();
				if (is_null($row)) {
					$result['message']='!!! Cannot find menu category';
				} else {
					$result['result']=true;
					$result['data']=$row;
					$result['data']['img_url']='';
					$sPath=sprintf("%s/%s%s",ROOT_PATH,PATH_BIZ_CATEGORY,$row['bsic_image']);
					if ((file_exists($sPath)) && (! is_dir($sPath))) {
						$result['data']['img_url']=sprintf('%s%s',base_url(PATH_BIZ_CATEGORY),$row['bsic_image']);
					}
				}
			}
			return $result;
		}

		public function add_category($input=null,$file=null) {
			$result=array('result'=>false,'message'=>null,'data'=>null);
      $sDate=str_replace('.','',sprintf("%f",microtime(true)));
			if (empty($input['bsic_bssh_id'])) {
				$result['message']='No Shop ID';
			} elseif(is_null($input))	{
				$result['message']='No Data Input';
			} else {
				$this->db->from('business_shop');
				$this->db->where('bssh_id', $input['bsic_bssh_id'],false);
				$query = $this->db->get();
				$iMaxRec=$query->num_rows();
				if ($iMaxRec < 1) {
					$result['message']=sprintf("No shop record found.");
				} else {
					if (isset($file)) {
						if ($file['error']!=0) {
						} else {
							$sExt = pathinfo(strtolower($file["name"]),PATHINFO_EXTENSION);
							$sIconFile=sprintf('%s.%s',$sDate,$sExt);
							$sThumbFile=sprintf('%s_thumb.%s',$sDate,$sExt);
							$sFullFile=sprintf('%s_full.%s',$sDate,$sExt);
							$sIconPath=sprintf("%s/%s%s",ROOT_PATH,PATH_BIZ_CATEGORY,$sIconFile);
							$sThumbPath=sprintf("%s/%s%s",ROOT_PATH,PATH_BIZ_CATEGORY,$sThumbFile);
							$sFullPath=sprintf("%s/%s%s",ROOT_PATH,PATH_BIZ_CATEGORY,$sFullFile);
		//					$chkImage=getimagesize($file["file_bssh_imgfront"]["tmp_name"]);
							if (move_uploaded_file($file["tmp_name"],$sIconPath)) {
								$this->icon_resize($sIconPath);
								if (file_exists($sIconPath)) {
		//							$result['message'].=sprintf('\nrename(%s,%s)',$sIconPath,$sFullPath);
									rename($sIconPath,$sFullPath);
								}
								if (file_exists($sThumbPath)) {
		//							$result['message'].=sprintf('\nrename(%s,%s)',$sThumbPath,$sIconPath);
									rename($sThumbPath,$sIconPath);
								}
 								$input['bsic_image']=$sIconFile;
								//						unlink($sLogoPath);
							} else {
								unlink($file["tmp_name"]);
							}
						}
					}
					$this->db->reset_query();
					$sDate=date('Y-m-d h:i:s');
					$sIP=$_SERVER['REMOTE_ADDR'];
					$sUser=$this->session->userdata($this->apps_name . '_uid');
					$input['bsic_cdate']=$sDate;
					$input['bsic_cip']=$sIP;
					$input['bsic_cuser']=$sUser;
					$input['bsic_mdate']=$sDate;
					$input['bsic_mip']=$sIP;
					$input['bsic_muser']=$sUser;
//					$sSQL=$this->db->set($input)->get_compiled_insert('business_shop_item_category');
					$this->db->insert('business_shop_item_category',$input);
					if ($this->db->affected_rows()==1) { 
						$result['result']=true;
						$result['data']=$this->db->insert_id();
					} else {
						$result['message']=$this->db->error();
						$result['data']='!!! Cannot insert information !!!';
					}
				}
			}
			return $result;
		}
		
		public function edit_category($input=null,$file=null) {
			$result=array('result'=>false,'message'=>null,'data'=>null);
      $sDate=str_replace('.','',sprintf("%f",microtime(true)));
			$data=null;
			$id=$input['bsic_id'];
			$shopID=$input['bsic_bssh_id'];
			if (empty($shopID)) {
				$result['message']='No Shop ID';
			} elseif(is_null($input))	{
				$result['message']='No Data Input';
			} else {
				$this->db->from('business_shop');
				$this->db->where('bssh_id', $shopID,false);
				$query = $this->db->get();
				$row = $query->row_array();
				if (is_null($row)) {
					$result['message']=sprintf("No shop record found.");
				} else {
					$this->db->reset_query();
					$this->db->from('business_shop_item_category');
					$this->db->where('bsic_id', $id,false);
					$query = $this->db->get();
					$row = $query->row_array();
					if (is_null($row)){
						$result['message']=sprintf("No menu category found.");
					}else {
						if (isset($file)) {
							if ($file['error']!=0) {
							} else {
								$sExt = pathinfo(strtolower($file["name"]),PATHINFO_EXTENSION);
								$sIconFile=sprintf('%s.%s',$sDate,$sExt);
								$sThumbFile=sprintf('%s_thumb.%s',$sDate,$sExt);
								$sFullFile=sprintf('%s_full.%s',$sDate,$sExt);
								$sIconPath=sprintf("%s/%s%s",ROOT_PATH,PATH_BIZ_CATEGORY,$sIconFile);
								$sThumbPath=sprintf("%s/%s%s",ROOT_PATH,PATH_BIZ_CATEGORY,$sThumbFile);
								$sFullPath=sprintf("%s/%s%s",ROOT_PATH,PATH_BIZ_CATEGORY,$sFullFile);
								$sOldPath=sprintf("%s/%s%s",ROOT_PATH,PATH_BIZ_CATEGORY,$row['bsic_image']);
			//					$chkImage=getimagesize($file["file_bssh_imgfront"]["tmp_name"]);
								if (move_uploaded_file($file["tmp_name"],$sIconPath)) {
									$this->icon_resize($sIconPath);
									if (file_exists($sIconPath)) {
			//							$result['message'].=sprintf('\nrename(%s,%s)',$sIconPath,$sFullPath);
										rename($sIconPath,$sFullPath);
									}
									if (file_exists($sThumbPath)) {
			//							$result['message'].=sprintf('\nrename(%s,%s)',$sThumbPath,$sIconPath);
										rename($sThumbPath,$sIconPath);
									}
									$data['bsic_image']=$sIconFile;
									//						unlink($sLogoPath);
									if (file_exists($sOldPath) && !is_dir($sOldPath)) {
										$sExt = pathinfo(strtolower($sOldPath),PATHINFO_EXTENSION);
										$sFileName = pathinfo(strtolower($sOldPath),PATHINFO_FILENAME);
										$sFullPath=sprintf("%s/%s%s_full.%s",ROOT_PATH,PATH_BIZ_CATEGORY,$sFileName,$sExt);
										unlink($sOldPath);
										if (file_exists($sFullPath) && !is_dir($sFullPath)) {
											unlink($sFullPath);
										}
									}
								} else {
									unlink($file["tmp_name"]);
								}
							}
						}
						if (isset($input['bsic_name'])) {
							if ($row['bsic_name'] != $input['bsic_name']) $data['bsic_name']=$input['bsic_name'];
						}
						if (isset($input['bsic_desc'])) {
							if ($row['bsic_desc'] != $input['bsic_desc']) $data['bsic_desc']=$input['bsic_desc'];
						}
						if (isset($input['bsic_order'])) {
							if ($row['bsic_order'] != $input['bsic_order']) $data['bsic_order']=$input['bsic_order'];
						}
						$this->db->reset_query();
						$sDate=date('Y-m-d h:i:s');
						$sIP=$_SERVER['REMOTE_ADDR'];
						$sUser=$this->session->userdata($this->apps_name . '_uid');
						$data['bsic_mdate']=$sDate;
						$data['bsic_mip']=$sIP;
						$data['bsic_muser']=$sUser;
//						echo "row"; print_r($row);
//						echo "input"; print_r($input);
//						echo "data"; print_r($data);
						$this->db->where('bsic_id', $id,false);
	//					$result['data']=$this->db->where('bsic_id',$id,false)->set($data)->get_compiled_update('business_shop_item_category');
						$this->db->update('business_shop_item_category',$data);
						if ($this->db->affected_rows()==1) { 
							$result['result']=true;
						} else {
							$result['message']=$this->db->error();
							$result['data']='!!! Cannot update information !!!';
						}
					}
				}
			}
			return $result;
		}
		
		public function delete_category($id) {
			$result=array('result'=>false,'message'=>null,'data'=>null);
			$input=NULL;
			if ( empty($id) || ($id < 1) ) {
				$result['message']='No Shop ID';
			} else {
				$this->db->from('business_shop_item_category');
				$this->db->where('bsic_id', $id,false);
				$this->db->where('bsic_active', 1,false);
				$query = $this->db->get();
				$row = $query->row_array();
				if (is_null($row)) {
					$result['message']=sprintf("No menu category found.");
				} else {
					$this->db->reset_query();
					$sDate=date('Y-m-d h:i:s');
					$sIP=$_SERVER['REMOTE_ADDR'];
					$sUser=$this->session->userdata($this->apps_name . '_uid');
					$input['bsic_mdate']=$sDate;
					$input['bsic_mip']=$sIP;
					$input['bsic_muser']=$sUser;
					$input['bsic_active']=0;
//					$sSQL=$this->db->set($input)->get_compiled_insert('business_shop_item_category');
					$this->db->where('bsic_id', $id,false);
					$this->db->update('business_shop_item_category',$input);
					if ($this->db->affected_rows()==1) { 
						$result['result']=true;
						$result['data']='';
					} else {
						$result['message']=$this->db->error();
						$result['data']='!!! Cannot Delete information !!!';
					}
				}
			}
			return $result;
		}
		
		public function restore_category($id) {
			$result=array('result'=>false,'message'=>null,'data'=>null);
			$input=NULL;
			if ( empty($id) || ($id < 1) ) {
				$result['message']='No menu category ID';
			} else {
				$this->db->from('business_shop_item_category');
				$this->db->where('bsic_id', $id,false);
				$this->db->where('bsic_active', 0,false);
//				$result['data'] = $this->db->get_compiled_select('business_shop_item_category');
				$query = $this->db->get();
				$row = $query->row_array();
				if (is_null($row)) {
					$result['message']=sprintf("No menu category found.");
				} else {
					$this->db->reset_query();
					$sDate=date('Y-m-d h:i:s');
					$sIP=$_SERVER['REMOTE_ADDR'];
					$sUser=$this->session->userdata($this->apps_name . '_uid');
					$input['bsic_mdate']=$sDate;
					$input['bsic_mip']=$sIP;
					$input['bsic_muser']=$sUser;
					$input['bsic_active']=1;
//					$sSQL=$this->db->set($input)->get_compiled_insert('business_shop_item_category');
					$this->db->where('bsic_id', $id,false);
					$this->db->update('business_shop_item_category',$input);
					if ($this->db->affected_rows()==1) { 
						$result['result']=true;
						$result['data']='';
					} else {
						$result['message']=$this->db->error();
						$result['data']='!!! Cannot Restore information !!!';
					}
				}
			}
			return $result;
		}
		
		public function get_menu($menuID){
			$result=array('result'=>false,'message'=>null,'data'=>null);
      $sDate=str_replace('.','',sprintf("%f",microtime(true)));
			if (empty($menuID) || ($menuID <=0)) {
				$result['message']='No menu id.';
			} else {
				$this->db->from('business_shop_item_header');
				$this->db->where('bsih_id',$menuID,false);
				$query = $this->db->get();
				$row = $query->row_array();
				if (is_null($row)) {
					$result['message']='!!! Cannot find menu';
				} else {
					$result['result']=true;
					$result['data']=$row;
					$result['data']['img_url']='';
					$iWidth=320;
					$sPath=sprintf("%s/%s%d/%s",ROOT_PATH,PATH_ITEM_PHOTO,$iWidth,$row['bsih_photo']);
					if ((file_exists($sPath)) && (! is_dir($sPath))) {
						$result['data']['img_url']=sprintf('%s%d/%s',base_url(PATH_ITEM_PHOTO),$iWidth,$row['bsih_photo']);
					}
				}
			}
			return $result;
		}

		public function add_menu($input=null,$file=null) {
			$result=array('result'=>false,'message'=>null,'data'=>null);
      $sDate=str_replace('.','',sprintf("%f",microtime(true)));
			if (empty($input['bsih_bssh_id'])) {
				$result['message']='No Shop ID';
			} elseif(is_null($input))	{
				$result['message']='No Data Input';
			} else {
				$this->db->from('business_shop');
				$this->db->where('bssh_id', $input['bsih_bssh_id'],false);
				$query = $this->db->get();
				$iMaxRec=$query->num_rows();
				if ($iMaxRec < 1) {
					$result['message']=sprintf("No shop record found.");
				} else {
					if (isset($file)) {
						if ($file['error']!=0) {
						} else {
							$sExt = pathinfo(strtolower($file["name"]),PATHINFO_EXTENSION);
							$sOrgFile=sprintf('%s.%s',$sDate,$sExt);
							$sMenuPath=sprintf("%s/%s%s",ROOT_PATH,PATH_ITEM_PHOTO,$sOrgFile);
							$sThumbFile=sprintf('%s_thumb.%s',$sDate,$sExt);
							$sOrgPath=sprintf("%s/%sorg/%s",ROOT_PATH,PATH_ITEM_PHOTO,$sOrgFile);
							$iWidth=320;
							$iHeight=320;
							$sResizePath=sprintf("%s/%s%d/%s",ROOT_PATH,PATH_ITEM_PHOTO,$iWidth,$sOrgFile);
							$sThumbPath=sprintf("%s/%s%s",ROOT_PATH,PATH_ITEM_PHOTO,$sThumbFile);
/*
							list($iWidth,$iHeight)=getimagesize($file["file_bssh_imgfront"]["tmp_name"]);
							if ($iWidth>80) $iMaxConvert=1;
							if ($iWidth>160) $iMaxConvert=2;
							if ($iWidth>320) $iMaxConvert=3;
							if ($iWidth>640) $iMaxConvert=4;
*/
 							if (move_uploaded_file($file["tmp_name"],$sMenuPath)) {
								copy($sMenuPath,$sOrgPath);
								$this->photo_resize($sMenuPath);
								if (file_exists($sResizePath)) {
		//							$result['message'].=sprintf('\nrename(%s,%s)',$sIconPath,$sFullPath);
									rename($sReziePath,$sFullPath);
								}
								if (file_exists($sThumbPath)) {
		//							$result['message'].=sprintf('\nrename(%s,%s)',$sThumbPath,$sIconPath);
									rename($sThumbPath,$sResizePath);
								}
 								$input['bsih_photo']=$sOrgFile;
								unlink($sMenuPath);
								//						unlink($sLogoPath);
							} else {
								unlink($file["tmp_name"]);
							}
						}
					}
					$this->db->reset_query();
					$sDate=date('Y-m-d h:i:s');
					$sIP=$_SERVER['REMOTE_ADDR'];
					$sUser=$this->session->userdata($this->apps_name . '_uid');
					$input['bsih_cdate']=$sDate;
					$input['bsih_cip']=$sIP;
					$input['bsih_cuser']=$sUser;
					$input['bsih_mdate']=$sDate;
					$input['bsih_mip']=$sIP;
					$input['bsih_muser']=$sUser;
//					$sSQL=$this->db->set($input)->get_compiled_insert('business_shop_item_category');
					$this->db->insert('business_shop_item_header',$input);
					if ($this->db->affected_rows()==1) { 
						$result['result']=true;
						$result['data']=$this->db->insert_id();
					} else {
						$result['message']=$this->db->error();
						$result['data']='!!! Cannot insert information !!!';
					}
				}
			}
			return $result;
		}
		
		public function edit_menu($input=null,$file=null) {
			$result=array('result'=>false,'message'=>null,'data'=>null);
      $sDate=str_replace('.','',sprintf("%f",microtime(true)));
			$bOrg=FALSE;
			if (empty($input['bsih_id'])) {
				$result['message']='No Menu Found';
			} else {
				$this->db->from('business_shop_item_header');
				$this->db->where('bsih_id', $input['bsih_id'],false);
				$query = $this->db->get();
				$aOldMenu=$query->row_array();
				$iMaxRec=$query->num_rows();
				if ($iMaxRec < 1) {
					$result['message']=sprintf("No menu record found.");
				} else {
					$sMenuOrgPath=sprintf("%s/%sorg/%s",ROOT_PATH,PATH_ITEM_PHOTO,$aOldMenu['bsih_photo']);
					$sMenu080Path=sprintf("%s/%s80/%s",ROOT_PATH,PATH_ITEM_PHOTO,$aOldMenu['bsih_photo']);
					$sMenu160Path=sprintf("%s/%s160/%s",ROOT_PATH,PATH_ITEM_PHOTO,$aOldMenu['bsih_photo']);
					$sMenu320Path=sprintf("%s/%s320/%s",ROOT_PATH,PATH_ITEM_PHOTO,$aOldMenu['bsih_photo']);
					$sMenu640Path=sprintf("%s/%s640/%s",ROOT_PATH,PATH_ITEM_PHOTO,$aOldMenu['bsih_photo']);
					if (isset($file)) {
						if ($file['error']!=0) {
						} else {
							$sExt = pathinfo(strtolower($file["name"]),PATHINFO_EXTENSION);
							$sOrgFile=sprintf('%s.%s',$sDate,$sExt);
							$sMenuPath=sprintf("%s/%s%s",ROOT_PATH,PATH_ITEM_PHOTO,$sOrgFile);
							$sThumbFile=sprintf('%s_thumb.%s',$sDate,$sExt);
							$sOrgPath=sprintf("%s/%sorg/%s",ROOT_PATH,PATH_ITEM_PHOTO,$sOrgFile);
							$iWidth=320;
							$iHeight=320;
							$sResizePath=sprintf("%s/%s%d/%s",ROOT_PATH,PATH_ITEM_PHOTO,$iWidth,$sOrgFile);
							$sThumbPath=sprintf("%s/%s%s",ROOT_PATH,PATH_ITEM_PHOTO,$sThumbFile);
/*
							list($iWidth,$iHeight)=getimagesize($file["file_bssh_imgfront"]["tmp_name"]);
							if ($iWidth>80) $iMaxConvert=1;
							if ($iWidth>160) $iMaxConvert=2;
							if ($iWidth>320) $iMaxConvert=3;
							if ($iWidth>640) $iMaxConvert=4;
*/
 							if (move_uploaded_file($file["tmp_name"],$sMenuPath)) {
								copy($sMenuPath,$sOrgPath);
								$this->photo_resize($sMenuPath);
								if (file_exists($sResizePath)) {
		//							$result['message'].=sprintf('\nrename(%s,%s)',$sIconPath,$sFullPath);
									rename($sReziePath,$sFullPath);
								}
								if (file_exists($sThumbPath)) {
		//							$result['message'].=sprintf('\nrename(%s,%s)',$sThumbPath,$sIconPath);
									rename($sThumbPath,$sResizePath);
								}
 								$input['bsih_photo']=$sOrgFile;
								unlink($sMenuPath);
								//						unlink($sLogoPath);
								if ( (file_exists($sMenuOrgPath)) && (! is_dir($sMenuOrgPath))) {
									unlink($sMenuOrgPath);
								}
								if ( (file_exists($sMenu080Path)) && (! is_dir($sMenu080Path))) {
									unlink($sMenu080Path);
								}
								if ( (file_exists($sMenu160Path)) && (! is_dir($sMenu160Path))) {
									unlink($sMenu160Path);
								}
								if ( (file_exists($sMenu320Path)) && (! is_dir($sMenu320Path))) {
									unlink($sMenu320Path);
								}
								if ( (file_exists($sMenu640Path)) && (! is_dir($sMenu640Path))) {
									unlink($sMenu640Path);
								}
								
							} else {
								unlink($file["tmp_name"]);
							}
						}
					}
					$this->db->reset_query();
					$this->db->where('bsih_id', $input['bsih_id'],false);
					$sDate=date('Y-m-d h:i:s');
					$sIP=$_SERVER['REMOTE_ADDR'];
					$sUser=$this->session->userdata($this->apps_name . '_uid');
					$input['bsih_mdate']=$sDate;
					$input['bsih_mip']=$sIP;
					$input['bsih_muser']=$sUser;
//					$sSQL=$this->db->set($input)->get_compiled_insert('business_shop_item_category');
					$this->db->update('business_shop_item_header',$input);
					if ($this->db->affected_rows()==1) { 
						$result['result']=true;
					} else {
						$result['message']=$this->db->error();
						$result['data']='!!! Cannot update information !!!';
					}
				}
			}
			return $result;
		}
		
		public function delete_menu($iMenuID) {
			$result=array('result'=>false,'message'=>null,'data'=>null);
      $sDate=str_replace('.','',sprintf("%f",microtime(true)));
			$input['bsih_id']=$iMenuID;
			$bOrg=FALSE;
			if (empty($iMenuID)) {
				$result['message']='No Menu Found';
			} else {
				$this->db->from('business_shop_item_header');
				$this->db->where('bsih_id', $iMenuID,false);
				$query = $this->db->get();
				$aOldMenu=$query->row_array();
				$iMaxRec=$query->num_rows();
				if ($iMaxRec < 1) {
					$result['message']=sprintf("No menu record found.");
				} else {
					$input['bsih_active']=0;
					$this->db->reset_query();
					$this->db->where('bsih_id', $input['bsih_id'],false);
					$sDate=date('Y-m-d h:i:s');
					$sIP=$_SERVER['REMOTE_ADDR'];
					$sUser=$this->session->userdata($this->apps_name . '_uid');
					$input['bsih_mdate']=$sDate;
					$input['bsih_mip']=$sIP;
					$input['bsih_muser']=$sUser;
//					$sSQL=$this->db->set($input)->get_compiled_insert('business_shop_item_category');
					$this->db->update('business_shop_item_header',$input);
					if ($this->db->affected_rows()==1) { 
						$result['result']=true;
					} else {
						$result['message']=$this->db->error();
						$result['data']='!!! Cannot update information !!!';
					}
				}
			}
			return $result;
		}
		
		public function restore_menu($iMenuID) {
			$result=array('result'=>false,'message'=>null,'data'=>null);
      $sDate=str_replace('.','',sprintf("%f",microtime(true)));
			$input['bsih_id']=$iMenuID;
			$bOrg=FALSE;
			if (empty($iMenuID)) {
				$result['message']='No Menu Found';
			} else {
				$this->db->from('business_shop_item_header');
				$this->db->where('bsih_id', $iMenuID,false);
				$query = $this->db->get();
				$iMaxRec=$query->num_rows();
				$aOldMenu=$query->row_array();
				if ($iMaxRec < 1) {
					$result['message']=sprintf("No menu record found.");
				} else {
					$input['bsih_active']=1;
					$this->db->reset_query();
					$this->db->where('bsih_id', $input['bsih_id'],false);
					$sDate=date('Y-m-d h:i:s');
					$sIP=$_SERVER['REMOTE_ADDR'];
					$sUser=$this->session->userdata($this->apps_name . '_uid');
					$input['bsih_mdate']=$sDate;
					$input['bsih_mip']=$sIP;
					$input['bsih_muser']=$sUser;
//					$sSQL=$this->db->set($input)->get_compiled_insert('business_shop_item_category');
					$this->db->update('business_shop_item_header',$input);
					if ($this->db->affected_rows()==1) { 
						$result['result']=true;
					} else {
						$result['message']=$this->db->error();
						$result['data']='!!! Cannot update information !!!';
					}
				}
			}
			return $result;
		}
		
	}
