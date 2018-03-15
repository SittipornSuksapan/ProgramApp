<?php

Class Theme_model extends CI_Model {

	private $access_user, $mod_name;
	private $iMaxWidth,$iMaxHeight;

	public function __construct() {
		parent::__construct();

		$this->mod_name = $this->router->fetch_module();
		$this->iMaxHeight=1920;
		$this->iMaxWidth=1080;
	}

	private function photo_resize($photo_path,$width=1080,$height=1920) {
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

		public function get_theme($shop_id) {

		$this->db->reset_query();
		$this->db->where('shop_id', $shop_id);

		$query = $this->db->get('business_shop_theme');
//		echo sprintf("<br>SQL=> %s ",$this->db->last_query());
		
		if ($query->num_rows() < 1) {
			$this->db->reset_query();
			$this->db->where('shop_id', 0);

			$query = $this->db->get('business_shop_theme');
//			echo sprintf("<br>SQL=> %s ",$this->db->last_query());
		}

//		print_r($query->result_array());
		return $query->result_array();
	}
	
	public function update_theme($shopID,$sBG='#000000',$sFont='#FFFFFF',$myFiles) {
		$aReturn=array('result'=>false,'mesg'=>null);
		$aResult=null;
		$bFileSplash=false; $bFileLogo=false; $bFileLogin=false;
		$bUploadSplash=false; $bUploadLogo=false; $bUploadLogin=false;
		
		$aOld=$this->get_theme($shopID);
		$aReturn['old']=$aOld[0];
		$aInput=null;
		if ($sBG != $aOld[0]['back_color']) {
			$aInput['back_color']=$sBG;
		}
		if ($sFont != $aOld[0]['font_color']) {
			$aInput['font_color']=$sFont;
		}
		$aInput['version']=date('Ymdhis');
		
		if ($myFiles['FileSplash']['error']==0) {
			$bFileSplash=TRUE;
			$aResult=$this->upload_image($shopID,"splash",$myFiles["FileSplash"]);
			if ($aResult['result']==TRUE) {
				$bUploadSplash=TRUE;
				$aInput['splash_url']=$aResult['url'];
			}
		}
		
		if ($myFiles['FileLogo']['error']==0) {
			$bFileLogo=TRUE;
			$aResult=$this->upload_image($shopID,"logo",$myFiles["FileLogo"]);
			if ($aResult['result']==TRUE) {
				$bUploadLogo=TRUE;
				$aInput['logo_url']=$aResult['url'];
			}
		}

		if ($myFiles['FileLogin']['error']==0) {
			$bFileLogin=TRUE;
			$aResult=$this->upload_image($shopID,"login",$myFiles["FileLogin"]);
			if ($aResult['result']==TRUE) {
				$bUploadLogin=TRUE;
				$aInput['login_url']=$aResult['url'];
			}
		}
		
		$this->db->reset_query();
		$this->db->set($aInput);
		$this->db->where('shop_id', $shopID);
		if ($this->db->update('business_shop_theme')) {
			$aReturn['result']=TRUE;
		} else {
			$aReturn['mesg'][]=$this->db->error();
		}

		$aReturn['Input']=$aInput;
		return $aReturn;
		
	}
	
	public function upload_image($shopID,$sType='splash', $myFILE) {
		$aReturn=array('result'=>false,'mesg'=>null,'url'=>null);
		 
		$sExt = pathinfo(strtolower($myFILE["name"]),PATHINFO_EXTENSION);
		$sName=sprintf('%s_%s',$sType,date('Ymdhis'));

		$sMoveFile=sprintf('%s.%s',$sName,$sExt);
		$sThumbFile=sprintf('%s_thumb.%s',$sName,$sExt);
		$sOrgFile=sprintf('%s_org.%s',$sName,$sExt);

		$sThumbPath=sprintf("%s/uploads/themes/%d/%s",ROOT_PATH,$shopID,$sThumbFile);
		$sMovePath=sprintf("%s/uploads/themes/%d/%s",ROOT_PATH,$shopID,$sMoveFile);
		$sOrgPath=sprintf("%s/uploads/themes/%d/%s",ROOT_PATH,$shopID,$sOrgFile);
		$sMoveURL=sprintf("%suploads/themes/%d/%s", base_url(),$shopID,$sMoveFile);

		if (move_uploaded_file($myFILE["tmp_name"],$sMovePath)) {

			list($imgWidth,$imgHeight,$imgType,$imgAttr)=getimagesize($sMovePath);
			$iWidth=$imgWidth;
			$iHeight=$imgHeight;
			if ( ($iWidth > $this->iMaxWidth) || ($iHeight > $this->iMaxHeight) ) {
				// Image Size is Big than Define Size
				if ($iWidth > $this->iMaxWidth) {
					// if iHeight > iMaxHeight calculate maxwidth
					$iWidth=$this->iMaxWidth;
					$iHeight=floor($iWidth*$this->iMaxHeight/$this->iMaxWidth);
				}
				if ($iHeight > $this->iMaxHeight) {
					// if iHeight > iMaxHeight calculate maxheight
					$iHeight=$this->iMaxHeight;
					$iWidth=floor($iHeight*$this->iMaxWidth/$this->iMaxHeight);
				}
				// resize photo
				$this->photo_resize($sMovePath,$iWidth,$iHeight);

				// Rename Upload File to Orginal File
				rename($sMovePath,$sOrgPath);
				// Rename Thumb File to Move File
				rename($sThumbPath,$sMovePath);

			}
			$aReturn['result']=TRUE;
			$aReturn['url']=$sMoveURL;
		} else {
			$aReturn['mesg'][]=sprintf("Cannot move upload file from '%s' to '%s",$myFILE["tmp_name"],$sMovePath);
		}
		return $aReturn;
	}
}
