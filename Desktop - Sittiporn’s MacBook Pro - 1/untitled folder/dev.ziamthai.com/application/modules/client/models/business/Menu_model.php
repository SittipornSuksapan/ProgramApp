<?php

defined('BASEPATH') OR exit('No direct script access allowed');
if (! defined('MAX_BIZ_UPLOAD')) define('MAX_BIZ_UPLOAD', 3);

class Menu_model extends CI_Model {

    private $apps_name = 'client';

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

		public function list_menu($shopID,$MenuID=0) {
      if (empty($shopID)) {
          return null;
      }

      $this->db->from('business_shop_item_category');
      $this->db->where('bsic_bssh_id', $shopID,false);
      $this->db->where('pid', $MenuID,false);
      $this->db->order_by('bsic_order, bsic_name');

//			$query = $this->db->get_compiled_select();
//			return $query;
			$query = $this->db->get();
      $row = $query->row_array();

      if (!$row) {
          return null;
      }

      return $query->result_array();
    }

		public function get_menu($MenuID) {
      if (empty($MenuID)) {
          return null;
      }

      $this->db->from('business_shop_item_category');
      $this->db->where('bsic_id', $MenuID,false);
      $this->db->order_by('bsic_order, bsic_name');

//			$query = $this->db->get_compiled_select();
//			return $query;
			$query = $this->db->get();
      $row = $query->row_array();

      if (!$row) {
          return null;
      }

      return $row;
    }

		public function add_menu($input) {
      if (empty($input['shopID'])) {
          return null;
      }
			
			$result=array('result'=>false,'mesg'=>null,'data'=>0);
			$txtDate=date('Y-m-d h:i:s');
			$data=array('bsic_bssh_id'=>$input['shopID'],
									'bsic_name'=>$input['txtName'],
									'bsic_cuser'=>$input['txtUser'],
									'bsic_muser'=>$input['txtUser'],
									'bsic_cdate'=>$txtDate,
									'bsic_mdate'=>$txtDate,
									'bsic_cip'=>$_SERVER['REMOTE_ADDR'],
									'bsic_mip'=>$_SERVER['REMOTE_ADDR'],
				);
			if (!empty($input['txtDesc'])) $data['bsic_desc']=$input['txtDesc'];
			if (!empty($input['txtOrder'])) $data['bsic_order']=$input['txtOrder'];
			if (!empty($input['txtStart'])) $data['tstart']=$input['txtStart'];
			if (!empty($input['txtStop'])) $data['tstop']=$input['txtStop'];
			if ($this->db->insert('business_shop_item_category',$data)) {
				$result['data']=$this->db->insert_id();
				$result['result']=true;
			} else {
				$result['mesg'][]=$this->db->_error_message();
			}
			return json_encode($result);
    }
		
		public function edit_menu($input) {
      if (empty($input['menuID'])) {
          return null;
      }
			$result=array('result'=>false,'mesg'=>null,'data'=>0);
			$txtDate=date('Y-m-d h:i:s');
			$data=array('bsic_muser'=>$input['txtUser'],
									'bsic_mdate'=>$txtDate,
									'bsic_mip'=>$_SERVER['REMOTE_ADDR'],
				);
			if (isset($input['sectionID'])) $data['pid']=$input['SectionID'];
			if (isset($input['txtName'])) $data['bsic_name']=$input['txtName'];
			if (isset($input['txtDesc'])) $data['bsic_desc']=$input['txtDesc'];
			if (isset($input['txtOrder'])) $data['bsic_order']=$input['txtOrder'];
			if (isset($input['txtStart'])) $data['tstart']=$input['txtStart'];
			if (isset($input['txtStop'])) $data['tstop']=$input['txtStop'];
			if (isset($input['active'])) $data['bsic_active']=$input['active'];
			if ($this->db->update('business_shop_item_category',$data,array('bsic_id'=>$input['menuID']))) {
				$result['result']=true;
			} else {
				$result['mesg'][]=$this->db->_error_message();
			}
			return json_encode($result);
    }
/*
 * Code for Section
 */		
		public function list_section($SectionID) {
      if (empty($SectionID)) {
          return null;
      }

      $this->db->from('business_shop_item_category');
      $this->db->where('pid', $SectionID,false);
      $this->db->order_by('bsic_active DESC,bsic_order, bsic_name');

//			$query = $this->db->get_compiled_select();
//			return $query;
			$query = $this->db->get();
      $row = $query->row_array();

      if (!$row) {
          return null;
      }

      return $query->result_array();
    }

		public function get_section($SectionID) {
      if (empty($SectionID)) {
          return null;
      }

      $this->db->from('business_shop_item_category');
      $this->db->where('bsic_id', $sectionID,false);
      $this->db->order_by('bsic_order, bsic_name');

//			$query = $this->db->get_compiled_select();
//			return $query;
			$query = $this->db->get();
      $row = $query->row_array();

      if (!$row) {
          return null;
      }

      return $query->result_array();
    }

		public function add_section($input) {
      if (empty($input['shopID']) || empty($input['sectionID'])) {
        return null;
      }
			
			$result=array('result'=>false,'mesg'=>null,'data'=>0);
			$txtDate=date('Y-m-d h:i:s');
			$data=array('bsic_bssh_id'=>$input['shopID'],
									'pid'=>$input['sectionID'],
									'bsic_name'=>$input['txtName'],
									'bsic_cuser'=>$input['txtUser'],
									'bsic_muser'=>$input['txtUser'],
									'bsic_cdate'=>$txtDate,
									'bsic_mdate'=>$txtDate,
									'bsic_cip'=>$_SERVER['REMOTE_ADDR'],
									'bsic_mip'=>$_SERVER['REMOTE_ADDR'],
				);
			if (!empty($input['txtDesc'])) $data['bsic_desc']=$input['txtDesc'];
			if (!empty($input['txtOrder'])) $data['bsic_order']=$input['txtOrder'];
			if ($this->db->insert('business_shop_item_category',$data)) {
				$result['data']=$this->db->insert_id();
				$result['result']=true;
			} else {
				$result['mesg'][]=$this->db->_error_message();
			}
			return json_encode($result);
    }
		
/*
 * Code for Item
 */		
		public function list_item($catID) {
      if (empty($catID)) {
          return null;
      }

      $this->db->from('business_shop_item_header');
      $this->db->where('bsih_bsic_id', $catID,false);
      $this->db->order_by('bsih_active DESC,bsih_order, bsih_name');

//			$query = $this->db->get_compiled_select();
//			return $query;
			$query = $this->db->get();
      $row = $query->row_array();

      if (!$row) {
          return null;
      }

      return $query->result_array();
    }

		public function get_item($id) {
      if (empty($id)) {
          return null;
      }

      $this->db->from('business_shop_item_header');
//			$this->db->join('image_type','imgt_id=bssh_imgt_id');
      $this->db->where('bsih_id', $id,true);

      $query = $this->db->get();
      $row = $query->row_array();

      if (!$row) {
          return null;
      }

      return $row;
    }

		public function add_item($input=null,$file=null) {
			$result=array('result'=>false,'message'=>null,'data'=>null);
      $sDate=str_replace('.','',sprintf("%f",microtime(true)));
			if(is_null($input))	{
				$result['message']='No Data Input';
			} elseif (empty($input['bsih_bssh_id'])) {
				$result['message']='No Parameter Shop ID';
			} elseif (empty($input['bsih_bsic_id'])) {
				$result['message']='No Parameter Section ID';
			} else {
				$this->db->from('business_shop');
				$this->db->where('bssh_id', $input['bsih_bssh_id'],false);
				$query = $this->db->get();
				$iMaxRec=$query->num_rows();
				if ($iMaxRec < 1) {
					$result['message']=sprintf("No Business Shop found.");
				} else {
					if (empty($input['bsih_bsic_id'])) {
						$result['message']=sprintf("No Parameter 'SectionID'");
					} else {
						$this->db->from('business_shop_item_category');
						$this->db->where('bsic_id', $input['bsih_bsic_id'],false);
						$query = $this->db->get();
						$iMaxRec=$query->num_rows();
						if ($iMaxRec < 1) {
							$result['message']=sprintf("No Section found.");
						} else {
							if (isset($file)) {
								if ($file['error']!=0) {
								} else {
									$sExt = pathinfo(strtolower($file["name"]),PATHINFO_EXTENSION);
									$sOrgFile=sprintf('%s.%s',$sDate,$sExt);
									$sItemPath=sprintf("%s/%s%s",ROOT_PATH,PATH_ITEM_PHOTO,$sOrgFile);
									$sFullFile=sprintf('%s_full.%s',$sDate,$sExt);
									$sThumbFile=sprintf('%s_thumb.%s',$sDate,$sExt);
									$sOrgPath=sprintf("%s/%sorg/%s",ROOT_PATH,PATH_ITEM_PHOTO,$sOrgFile);
									$iWidth=320;
									$iHeight=320;
									$sResizePath=sprintf("%s/%s%d/%s",ROOT_PATH,PATH_ITEM_PHOTO,$iWidth,$sOrgFile);
									$sThumbPath=sprintf("%s/%s%s",ROOT_PATH,PATH_ITEM_PHOTO,$sThumbFile);
									$sDefaultFile=sprintf("%s/%s%s",ROOT_PATH,PATH_ITEM_PHOTO,$sOrgFile);
									$sDefaultFullFile=sprintf("%s/%s%s",ROOT_PATH,PATH_ITEM_PHOTO,$sFullFile);
		/*
									list($iWidth,$iHeight)=getimagesize($file["file_bssh_imgfront"]["tmp_name"]);
									if ($iWidth>80) $iMaxConvert=1;
									if ($iWidth>160) $iMaxConvert=2;
									if ($iWidth>320) $iMaxConvert=3;
									if ($iWidth>640) $iMaxConvert=4;
		*/
									if (move_uploaded_file($file["tmp_name"],$sItemPath)) {
										copy($sItemPath,$sOrgPath);
										$this->photo_resize($sItemPath);
										unlink($sItemPath);
										if (file_exists($sResizePath)) {
											$result['message'].=sprintf('\nrename(%s,%s)',$sResizePath,$sFullPath);
											copy($sResizePath,$sDefaultFile);
											copy($sResizePath,$sDefaultFullFile);
											rename($sResizePath,$sFullPath);
										}
										if (file_exists($sThumbPath)) {
											$result['action']=sprintf('copy');
											$result['source']=sprintf('%s',$sThumbPath);
											$result['dest']=sprintf('%s',$sDefaultFile);
											copy($sThumbPath,$sDefaultFile);
											copy($sThumbPath,$sDefaultFullFile);
											$result['message'].=sprintf('\nrename(%s,%s)',$sThumbPath,$sResizePath);
											rename($sThumbPath,$sResizePath);
										}
										$input['bsih_photo']=$sOrgFile;
										//						unlink($sLogoPath);
									} else {
										unlink($file["tmp_name"]);
									}
								}
							}
							$this->db->reset_query();
							$sDate=date('Y-m-d h:i:s');
							$sIP=$_SERVER['REMOTE_ADDR'];
							$input['bsih_cdate']=$sDate;
							$input['bsih_cip']=$sIP;
							$input['bsih_mdate']=$sDate;
							$input['bsih_mip']=$sIP;
		//					$sSQL=$this->db->set($input)->get_compiled_insert('business_shop_item_category');
							$this->db->insert('business_shop_item_header',$input);
							if ($this->db->affected_rows()==1) { 
								$result['result']=true;
								$result['data']=$this->db->insert_id();
							} else {
								$result['message'].=$this->db->error();
								$result['data']='!!! Cannot insert information !!!';
							}
						}
					}
				}
			}
			return $result;
		}

		public function edit_item($input=null,$file=null) {
			$result=array('result'=>false,'message'=>null,'data'=>null);
      $sDate=str_replace('.','',sprintf("%f",microtime(true)));
			$bOrg=FALSE;
			if (empty($input['bsih_id'])) {
				$result['message']='No Item Found';
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
							$sFullFile=sprintf('%s_full.%s',$sDate,$sExt);
							$sThumbFile=sprintf('%s_thumb.%s',$sDate,$sExt);
							$sOrgPath=sprintf("%s/%sorg/%s",ROOT_PATH,PATH_ITEM_PHOTO,$sOrgFile);
							$iWidth=320;
							$iHeight=320;
							$sResizePath=sprintf("%s/%s%d/%s",ROOT_PATH,PATH_ITEM_PHOTO,$iWidth,$sOrgFile);
							$sThumbPath=sprintf("%s/%s%s",ROOT_PATH,PATH_ITEM_PHOTO,$sThumbFile);
							$sDefaultPath=sprintf("%s/%s%s",ROOT_PATH,PATH_ITEM_PHOTO,$sOrgFile);
							$sDefaultFullPath=sprintf("%s/%s%s",ROOT_PATH,PATH_ITEM_PHOTO,$sFullFile);
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
								unlink($sMenuPath);
								if (file_exists($sResizePath)) {
		//							$result['message'].=sprintf('\nrename(%s,%s)',$sIconPath,$sFullPath);
									copy($sResizePath,$sDefaultPath);
									copy($sResizePath,$sDefaultFullPath);
									rename($sResizePath,$sFullPath);
								}
								if (file_exists($sThumbPath)) {
		//							$result['message'].=sprintf('\nrename(%s,%s)',$sThumbPath,$sIconPath);
									rename($sThumbPath,$sResizePath);
								}
 								$input['bsih_photo']=$sOrgFile;
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
					$sDate=date('Y-m-d h:i:s');
					$sIP=$_SERVER['REMOTE_ADDR'];
					$input['bsih_mdate']=$sDate;
					$input['bsih_mip']=$sIP;
					$this->db->reset_query();
					$this->db->where('bsih_id', $input['bsih_id'],false);
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
