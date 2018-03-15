<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Business_menu extends CI_Controller {

  private $access_module = 'client';
  private $access_client, $access_workspace, $access_lang;

  public function __construct() {
    parent:: __construct();

        $this->access_lang = get_language();
        $this->access_module = $this->router->fetch_module();

        //-- get client user & workspace
        $this->load->model($this->access_module . '/customer/Login_model');
        $this->access_client = $this->Login_model->valid_client();
        $this->access_workspace = $this->Login_model->valid_workspace();
        $this->access_menu = $this->Login_model->valid_role();

        //-- template setup
        $this->template->language($this->access_lang);

        $this->template->set('access_client', $this->access_client);
        $this->template->set('access_workspace', $this->access_workspace);
        $this->template->set('access_module', $this->access_module);
        $this->template->set('access_lang', $this->access_lang);
        $this->template->set('access_menu', $this->access_menu);

        $this->template->load($this->access_module . '/templates/default');
  }

  public function index() {
    if (empty($this->access_client['id']) || empty($this->access_workspace['id'])) {
        redirect($this->access_module . '/login');
        exit();
    }
		$shopID=$this->access_workspace['id'];
    $this->load->model($this->access_module . '/business/Menu_model');
		$ClientFolder=sprintf('%s/uploads/client/%d',ROOT_PATH,$shopID);
		if (! is_dir($ClientFolder)) {
			$this->load->model($this->access_module . '/business/Shop_model');
			$this->Shop_model->gen_client_folder($shopID);
		}
		
    $this->template->set('title', $this->lang->line('page_title'));
    $this->template->set('sidebar_mnu_active', 'business_menu');
//		$data=null;

		$arrMesg=null;
		$result=null;
		if (isset($_POST['btnSave'])) {
			$result=true;
		}
		$arrCategory=$this->Menu_model->list_menu($shopID,0);
		$arrData=NULL;
		for($iRun=0; $iRun<count($arrCategory); $iRun++) {
			$CatID=$arrCategory[$iRun]['bsic_id'];
			$arrSection=$this->Menu_model->list_section($CatID);
			$arrData[$iRun]['Main']=$arrCategory[$iRun];
			for ($iSection=0; $iSection<count($arrSection); $iSection++) {
				$SubID=$arrSection[$iSection]['bsic_id'];
				$arrData[$iRun]['Section'][$iSection]['data']=$arrSection[$iSection];
				$arrData[$iRun]['Section'][$iSection]['menu']=$this->Menu_model->list_item($SubID);
			}
		}
//		$RunID=(isset($_REQUEST['RunID']))?$_REQUEST['RunID']:0;
		$RunID=0;
		if (isset($_REQUEST['RunID'])) {
			for($iCount=0; $iCount<count($arrData); $iCount++) {
				if ($arrData[$iCount]['Main']['bsic_id']==$_REQUEST['RunID']) $RunID=$iCount;
			}
		}
		$this->template->view($this->access_module . '/business/menu_index', array(
				'access_client' => $this->access_client,
				'access_workspace' => $this->access_workspace,
				'access_module' => $this->access_module,
				'access_lang' => $this->access_lang,
				'info' => $arrData,
				'result'=>$result,
				'RunID' => $RunID,
		));
  }
/*
 * API FOR MENU
 */
  public function api_menu_get() {
		$result=array('result'=>false,'mesg'=>null,'data'=>null);
		if ( is_null($_REQUEST['menuID'])) {
			$result['mesg'][]="Require 'menuID' Parameter";
		} else {
			$this->load->model($this->access_module . '/business/Menu_model');
			$MenuID=$_REQUEST['menuID'];
			$return=$this->Menu_model->get_menu($MenuID);
			if (! is_null($return)) { 
				$result['result']=true;
				$result['data']=$return;
			} else {
				$result['mesg'][]="No Menu ID Found";
			}
		}
		echo json_encode($result);
	}

  public function api_menu_add() {
		$result=array('result'=>false,'mesg'=>null);
		if ( is_null($_REQUEST['shopID'])) {
			$result['mesg'][]="Require 'shopID' Parameter";
		} else {
			$input['shopID']=$_REQUEST['shopID'];
			if (is_null($_REQUEST['txtName'])) {
				$result['mesg'][]="Require 'txtName' Parameter";
			} else {
				$txtOwner=(! empty($_REQUEST['txtOwner']))?$_REQUEST['txtOwner']:1;
				$this->load->model($this->access_module . '/business/Menu_model');
				
				$input['txtName']=$_REQUEST['txtName'];
				if (isset($_REQUEST['txtDesc'])) $input['txtDesc']=$_REQUEST['txtDesc'];
				if (isset($_REQUEST['txtOrder'])) $input['txtOrder']=$_REQUEST['txtOrder'];
				if (isset($_REQUEST['txtStart'])) $input['txtStart']=$_REQUEST['txtStart'];
				if (isset($_REQUEST['txtStop'])) $input['txtStop']=$_REQUEST['txtStop'];
				$txtUser=(! empty($this->access_client['id']))?$this->access_client['id']:$txtOwner;
				$input['txtUser']=$txtUser;

				$value=$this->Menu_model->add_menu($input);
				if (is_null($value)) {
					$result['mesg'][]='Paramter Failed';
				} else {
					$return=json_decode($value,true);
					if ($return['mesg'] != null) {
						foreach ($return['mesg'] as $mesg) $result['mesg'][]=$mesg;
					}
					$result['data']=$return['data'];
					$result['result']=true;
				}
			}
		}

		echo json_encode($result);
	}

  public function api_menu_edit() {
		$result=array('result'=>false,'mesg'=>null);
		if ( is_null($_REQUEST['menuID'])) {
			$result['mesg'][]="Require 'menuID' Parameter";
		} else {
			$input['menuID']=$_REQUEST['menuID'];
			$txtOwner=(! empty($_REQUEST['txtOwner']))?$_REQUEST['txtOwner']:1;
			$this->load->model($this->access_module . '/business/Menu_model');
			$data=$this->Menu_model->get_menu($input['menuID']);
			
			if (isset($_REQUEST['txtName'])) {
				if ($data['bsic_name']<>$_REQUEST['txtName']) $input['txtName']=$_REQUEST['txtName'];
			}
			if (isset($_REQUEST['txtDesc'])) {
				if ($data['bsic_desc']<>$_REQUEST['txtDesc']) $input['txtDesc']=$_REQUEST['txtDesc'];
			}
			if (isset($_REQUEST['txtOrder'])) { 
				if ($data['bsic_order']<>$_REQUEST['txtOrder']) $input['txtOrder']=$_REQUEST['txtOrder'];
			}
			if (isset($_REQUEST['txtStart'])) {
				if ($data['tstart']<>$_REQUEST['txtStart']) $input['txtStart']=$_REQUEST['txtStart'];
			}
			if (isset($_REQUEST['txtStop'])) {
				if ($data['tstop']<>$_REQUEST['txtStop']) $input['txtStop']=$_REQUEST['txtStop'];
			}
			$txtUser=(! empty($this->access_client['id']))?$this->access_client['id']:$txtOwner;
			$input['txtUser']=$txtUser;

			$value=$this->Menu_model->edit_menu($input);
			if (is_null($value)) {
				$result['mesg'][]='Paramter Failed';
			} else {
				$return=json_decode($value,true);
				if ($return['mesg'] != null) {
					foreach ($return['mesg'] as $mesg) $result['mesg'][]=$mesg;
				}
				$result['data']=$return['data'];
				$result['result']=true;
			}
		}
		echo json_encode($result);
	}
	
  public function api_menu_delete() {
		$result=array('result'=>false,'mesg'=>null);
		if ( is_null($_REQUEST['menuID'])) {
			$result['mesg'][]="Require 'menuID' Parameter";
		} else {
			$MenuID=$_REQUEST['menuID'];
			$txtOwner=(! empty($_REQUEST['txtOwner']))?$_REQUEST['txtOwner']:1;
			$txtUser=(! empty($this->access_client['id']))?$this->access_client['id']:$txtOwner;
			$this->load->model($this->access_module . '/business/Menu_model');
			$input=array('menuID'=>$MenuID,
								'txtUser'=>$txtUser,
								'active'=> 0,
			 );
			$value=$this->Menu_model->edit_menu($input);
			if (is_null($value)) {
				$result['mesg'][]='Paramter Failed';
			} else {
				$return=json_decode($value,true);
				if ($return['mesg'] != null) {
					foreach ($return['mesg'] as $mesg) $result['mesg'][]=$mesg;
				}
				$result['data']=$return['data'];
				$result['result']=true;
			}
		}
		echo json_encode($result);
	}
	
  public function api_menu_restore() {
		$result=array('result'=>false,'mesg'=>null);
		if ( is_null($_REQUEST['menuID'])) {
			$result['mesg'][]="Require 'menuID' Parameter";
		} else {
			$MenuID=$_REQUEST['menuID'];
			$txtOwner=(! empty($_REQUEST['txtOwner']))?$_REQUEST['txtOwner']:1;
			$txtUser=(! empty($this->access_client['id']))?$this->access_client['id']:$txtOwner;
			$this->load->model($this->access_module . '/business/Menu_model');
			$input=array('menuID'=>$MenuID,
								'txtUser'=>$txtUser,
								'active'=> 1,
			 );
			$value=$this->Menu_model->edit_menu($input);
			if (is_null($value)) {
				$result['mesg'][]='Paramter Failed';
			} else {
				$return=json_decode($value,true);
				if ($return['mesg'] != null) {
					foreach ($return['mesg'] as $mesg) $result['mesg'][]=$mesg;
				}
				$result['data']=$return['data'];
				$result['result']=true;
			}
		}
		echo json_encode($result);
	}
	
/*
 * API FOR SECTION
 */
	public function api_section_get() {
		$result=array('result'=>false,'mesg'=>null,'data'=>null);
		if ( is_null($_REQUEST['sectionID'])) {
			$result['mesg'][]="Require 'SectionID' Parameter";
		} else {
			$this->load->model($this->access_module . '/business/Menu_model');
			$return=$this->Menu_model->get_menu($_REQUEST['sectionID']);
			if (! is_null($return)) { 
				$result['result']=true;
				$result['data']=$return;
			} else {
				$result['mesg'][]="No Menu ID Found";
			}
		}
		echo json_encode($result);
	}

  public function api_section_add() {
		$result=array('result'=>false,'mesg'=>null);
		if ( is_null($_REQUEST['shopID'])) {
			$result['mesg'][]="Require 'shopID' Parameter";
		} else {
			$input['shopID']=$_REQUEST['shopID'];
			if (is_null($_REQUEST['sectionID'])) {
				$result['mesg'][]="Require 'sectionID' Parameter";
			} else {
				$input['sectionID']=$_REQUEST['sectionID'];
				if (is_null($_REQUEST['txtName'])) {
					$result['mesg'][]="Require 'txtName' Parameter";
				} else {
					$input['txtName']=$_REQUEST['txtName'];
					$txtOwner=(! empty($_REQUEST['txtOwner']))?$_REQUEST['txtOwner']:1;
					$this->load->model($this->access_module . '/business/Menu_model');

					if (isset($_REQUEST['txtDesc'])) $input['txtDesc']=$_REQUEST['txtDesc'];
					if (isset($_REQUEST['txtOrder'])) $input['txtOrder']=$_REQUEST['txtOrder'];
					$txtUser=(! empty($this->access_client['id']))?$this->access_client['id']:$txtOwner;
					$input['txtUser']=$txtUser;

					$value=$this->Menu_model->add_section($input);
					if (is_null($value)) {
						$result['mesg'][]='Paramter Failed';
					} else {
						$return=json_decode($value,true);
						if ($return['mesg'] != null) {
							foreach ($return['mesg'] as $mesg) $result['mesg'][]=$mesg;
						}
						$result['data']=$return['data'];
						$result['result']=true;
					}
				}
			}
		}

		echo json_encode($result);
	}
	
  public function api_section_edit() {
		$result=array('result'=>false,'mesg'=>null);
		if ( is_null($_REQUEST['menuID'])) {
			$result['mesg'][]="Require 'menuID' Parameter";
		} else {
			$input['menuID']=$_REQUEST['menuID'];
			$txtOwner=(! empty($_REQUEST['txtOwner']))?$_REQUEST['txtOwner']:1;
			$this->load->model($this->access_module . '/business/Menu_model');
			$data=$this->Menu_model->get_menu($input['menuID']);
			
			if (isset($_REQUEST['txtName'])) {
				if ($data['bsic_name']<>$_REQUEST['txtName']) $input['txtName']=$_REQUEST['txtName'];
			}
			if (isset($_REQUEST['txtDesc'])) {
				if ($data['bsic_desc']<>$_REQUEST['txtDesc']) $input['txtDesc']=$_REQUEST['txtDesc'];
			}
			if (isset($_REQUEST['txtOrder'])) { 
				if ($data['bsic_order']<>$_REQUEST['txtOrder']) $input['txtOrder']=$_REQUEST['txtOrder'];
			}
			$txtUser=(! empty($this->access_client['id']))?$this->access_client['id']:$txtOwner;
			$input['txtUser']=$txtUser;

			$value=$this->Menu_model->edit_menu($input);
			if (is_null($value)) {
				$result['mesg'][]='Paramter Failed';
			} else {
				$return=json_decode($value,true);
				if ($return['mesg'] != null) {
					foreach ($return['mesg'] as $mesg) $result['mesg'][]=$mesg;
				}
				$result['data']=$return['data'];
				$result['result']=true;
			}
		}
		echo json_encode($result);
	}
	
  public function api_section_delete() {
		$result=array('result'=>false,'mesg'=>null);
		if ( is_null($_REQUEST['menuID'])) {
			$result['mesg'][]="Require 'menuID' Parameter";
		} else {
			$MenuID=$_REQUEST['menuID'];
			$txtOwner=(! empty($_REQUEST['txtOwner']))?$_REQUEST['txtOwner']:1;
			$txtUser=(! empty($this->access_client['id']))?$this->access_client['id']:$txtOwner;
			$this->load->model($this->access_module . '/business/Menu_model');
			$input=array('menuID'=>$MenuID,
								'txtUser'=>$txtUser,
								'active'=> 0,
			 );
			$value=$this->Menu_model->edit_menu($input);
			if (is_null($value)) {
				$result['mesg'][]='Paramter Failed';
			} else {
				$return=json_decode($value,true);
				if ($return['mesg'] != null) {
					foreach ($return['mesg'] as $mesg) $result['mesg'][]=$mesg;
				}
				$result['data']=$return['data'];
				$result['result']=true;
			}
		}
		echo json_encode($result);
	}
	
  public function api_section_restore() {
		$result=array('result'=>false,'mesg'=>null);
		if ( is_null($_REQUEST['menuID'])) {
			$result['mesg'][]="Require 'menuID' Parameter";
		} else {
			$MenuID=$_REQUEST['menuID'];
			$txtOwner=(! empty($_REQUEST['txtOwner']))?$_REQUEST['txtOwner']:1;
			$txtUser=(! empty($this->access_client['id']))?$this->access_client['id']:$txtOwner;
			$this->load->model($this->access_module . '/business/Menu_model');
			$input=array('menuID'=>$MenuID,
								'txtUser'=>$txtUser,
								'active'=> 1,
			 );
			$value=$this->Menu_model->edit_menu($input);
			if (is_null($value)) {
				$result['mesg'][]='Paramter Failed';
			} else {
				$return=json_decode($value,true);
				if ($return['mesg'] != null) {
					foreach ($return['mesg'] as $mesg) $result['mesg'][]=$mesg;
				}
				$result['data']=$return['data'];
				$result['result']=true;
			}
		}
		echo json_encode($result);
	}
/*
 * API FOR ITEM
 */
	public function api_item_get() {
		$result=array('result'=>false,'mesg'=>null,'data'=>null);
		if ( is_null($_REQUEST['itemID'])) {
			$result['mesg'][]="Require 'itemID' Parameter";
		} else {
			$this->load->model($this->access_module . '/business/Menu_model');
			$return=$this->Menu_model->get_item($_REQUEST['itemID']);
			if (! is_null($return)) { 
				$result['result']=true;
				$result['data']=$return;
			} else {
				$result['mesg'][]="No Item ID Found";
			}
		}
		echo json_encode($result);
	}
	
	public function api_item_add() {
		$result=array('result'=>false,'mesg'=>null,'data'=>null);
		if ( empty($_REQUEST['shopID'])) {
			$result['mesg'][]="Require 'shopID' Parameter";
		}elseif ( empty($_REQUEST['sectionID'])) {
			$result['mesg'][]="Require 'sectionID' Parameter";
		}elseif ( empty($_REQUEST['txtName'])) {
			$result['mesg'][]="Require 'txtName' Parameter";
		} else {
			$txtOwner=(! empty($_REQUEST['txtOwner']))?$_REQUEST['txtOwner']:1;
			$txtUser=(! empty($this->access_client['id']))?$this->access_client['id']:$txtOwner;
			$this->load->model($this->access_module . '/business/Menu_model');
			$File=NULL;
			if (! empty($_FILES['fileItem']))$File=$_FILES['fileItem'];
			$data['bsih_bssh_id']=$_REQUEST['shopID'];
			$data['bsih_bsic_id']=$_REQUEST['sectionID'];
			$data['bsih_cuser']=$txtUser;
			$data['bsih_muser']=$txtUser;
			$data['bsih_name']=$_REQUEST['txtName'];
			if (! empty($_REQUEST['txtDesc'])) $data['bsih_desc']=$_REQUEST['txtDesc'];
			if (! empty($_REQUEST['txtPrice'])) $data['bsih_price']=$_REQUEST['txtPrice'];
			if (! empty($_REQUEST['txtOrder'])) $data['bsih_order']=$_REQUEST['txtOrder'];
			if (! empty($_REQUEST['chkRecommend'])) $data['bsih_recommend']=$_REQUEST['chkRecommend'];
			if (! empty($_REQUEST['chkOnline'])) $data['bsih_online']=$_REQUEST['chkOnline'];
			if (! empty($_REQUEST['chkActive'])) $data['bsih_active']=$_REQUEST['chkActive'];
			$return=$this->Menu_model->add_item($data,$File);
			if (! is_null($return)) { 
				$result=$return;
			} else {
				$result['mesg'][]="No Menu ID Found";
			}
		}
		echo json_encode($result);
	}

	public function api_item_edit() {
		$result=array('result'=>false,'mesg'=>null,'data'=>null);
		if ( empty($_REQUEST['itemID'])) {
			$result['mesg'][]="Require 'itemID' Parameter";
		} else {
			$txtOwner=(! empty($_REQUEST['txtOwner']))?$_REQUEST['txtOwner']:1;
			$txtUser=(! empty($this->access_client['id']))?$this->access_client['id']:$txtOwner;
			$this->load->model($this->access_module . '/business/Menu_model');
			$info=$this->Menu_model->get_item($_REQUEST['itemID']);
			if (is_null($info)) {
				$result['mesg'][]="No 'itemID' Infomation Found.";
			} else {
				$File=NULL;
				if (! empty($_FILES['file_item']))$File=$_FILES['file_item'];
				$data['bsih_muser']=$txtUser;
				$iChange=0;
				if (isset($_REQUEST['txtName'])) {
					if ($info['bsih_name'] != $_REQUEST['txtName']) { 
						$data['bsih_name']=$_REQUEST['txtName']; $iChange++; 
					}
				}
				if (isset($_REQUEST['txtDesc'])) {
					if ($info['bsih_desc'] != $_REQUEST['txtDesc']) { 
						$data['bsih_desc']=$_REQUEST['txtDesc']; $iChange++; 
					}
				}
				if (isset($_REQUEST['txtPrice'])) {
					if ($info['bsih_price'] != $_REQUEST['txtPrice']) { 
						$data['bsih_price']=$_REQUEST['txtPrice']; $iChange++; 
					}
				}
				if (isset($_REQUEST['txtOrder'])) {
					if ($info['bsih_order'] != $_REQUEST['txtOrder']) {
						$data['bsih_order']=$_REQUEST['txtOrder']; $iChange++; 
					}
				}

				if (isset($_REQUEST['chkActive'])) {
					if ($_REQUEST['chkActive']!= $info['bsih_active']) {
						$data['bsih_active']=$_REQUEST['chkActive']; $iChange++;
					}
				}

				if (isset($_REQUEST['chkRecommend'])) {
					if ($_REQUEST['chkRecommend']!= $info['bsih_recommend']) {
						$data['bsih_recommend']=$_REQUEST['chkRecommend']; $iChange++;
					}
				}

				if (isset($_REQUEST['chkOnline'])) {
					if ($_REQUEST['chkOnline']!= $info['bsih_online']) {
						$data['bsih_online']=$_REQUEST['chkOnline']; $iChange++;
					}
				}
				$data['bsih_id']=$_REQUEST['itemID'];
				$return=$result;
				if ($iChange == 0) {
					$result['mesg'][]='No Update Information';
				} else {
					$return=$this->Menu_model->edit_item($data,$File);
					if (! is_null($return)) { 
						$result=$return;
					} else {
						$result['mesg'][]=$this->db->error_message();
					}
				}
			}
		}
		echo json_encode($result);
	}
	
	public function api_item_delete() {
		$result=array('result'=>false,'mesg'=>null,'data'=>null);
		if ( empty($_REQUEST['itemID'])) {
			$result['mesg'][]="Require 'itemID' Parameter";
		} else {
			$txtOwner=(! empty($_REQUEST['txtOwner']))?$_REQUEST['txtOwner']:1;
			$txtUser=(! empty($this->access_client['id']))?$this->access_client['id']:$txtOwner;
			$this->load->model($this->access_module . '/business/Menu_model');
			$info=$this->Menu_model->get_item($_REQUEST['itemID']);
			if (is_null($info)) {
				$result['mesg'][]="No 'itemID' Infomation Found.";
			} else {
				$File=NULL;
				$data['bsih_muser']=$txtUser;
				$data['bsih_active']=0;
				$data['bsih_id']=$_REQUEST['itemID'];
				$return=$this->Menu_model->edit_item($data,$File);
				if (! is_null($return)) { 
					$result=$return;
				} else {
					$result['mesg'][]=$this->db->error_message();
				}
			}
		}
		echo json_encode($result);
	}
	
	public function api_item_restore() {
		$result=array('result'=>false,'mesg'=>null,'data'=>null);
		if ( empty($_REQUEST['itemID'])) {
			$result['mesg'][]="Require 'itemID' Parameter";
		} else {
			$txtOwner=(! empty($_REQUEST['txtOwner']))?$_REQUEST['txtOwner']:1;
			$txtUser=(! empty($this->access_client['id']))?$this->access_client['id']:$txtOwner;
			$this->load->model($this->access_module . '/business/Menu_model');
			$info=$this->Menu_model->get_item($_REQUEST['itemID']);
			if (is_null($info)) {
				$result['mesg'][]="No 'itemID' Infomation Found.";
			} else {
				$File=NULL;
				$data['bsih_muser']=$txtUser;
				$data['bsih_active']=1;
				$data['bsih_id']=$_REQUEST['itemID'];
				$return=$this->Menu_model->edit_item($data,$File);
				if (! is_null($return)) { 
					$result=$return;
				} else {
					$result['mesg'][]=$this->db->error_message();
				}
			}
		}
		echo json_encode($result);
	}

	public function api_item_recommend() {
		$result=array('result'=>false,'mesg'=>null,'data'=>null);
		if ( empty($_REQUEST['itemID'])) {
			$result['mesg'][]="Require 'itemID' Parameter";
		} else {
			$txtOwner=(! empty($_REQUEST['txtOwner']))?$_REQUEST['txtOwner']:1;
			$txtUser=(! empty($this->access_client['id']))?$this->access_client['id']:$txtOwner;
			$this->load->model($this->access_module . '/business/Menu_model');
			$info=$this->Menu_model->get_item($_REQUEST['itemID']);
			if (is_null($info)) {
				$result['mesg'][]="No 'itemID' Infomation Found.";
			} else {
				$File=NULL;
				$data['bsih_muser']=$txtUser;
				$data['bsih_recommend']=(isset($_REQUEST['status']))?$_REQUEST['status']:1;
				$data['bsih_id']=$_REQUEST['itemID'];
				$return=$this->Menu_model->edit_item($data,$File);
				if (! is_null($return)) { 
					$result=$return;
				} else {
					$result['mesg'][]=$this->db->error_message();
				}
			}
		}
		echo json_encode($result);
	}
	
	public function api_item_online() {
		$result=array('result'=>false,'mesg'=>null,'data'=>null);
		if ( empty($_REQUEST['itemID'])) {
			$result['mesg'][]="Require 'itemID' Parameter";
		} else {
			$txtOwner=(! empty($_REQUEST['txtOwner']))?$_REQUEST['txtOwner']:1;
			$txtUser=(! empty($this->access_client['id']))?$this->access_client['id']:$txtOwner;
			$this->load->model($this->access_module . '/business/Menu_model');
			$info=$this->Menu_model->get_item($_REQUEST['itemID']);
			if (is_null($info)) {
				$result['mesg'][]="No 'itemID' Infomation Found.";
			} else {
				$File=NULL;
				$data['bsih_muser']=$txtUser;
				$data['bsih_online']=(isset($_REQUEST['status']))?$_REQUEST['status']:1;
				$data['bsih_id']=$_REQUEST['itemID'];
				$return=$this->Menu_model->edit_item($data,$File);
				if (! is_null($return)) { 
					$result=$return;
				} else {
					$result['mesg'][]=$this->db->error_message();
				}
			}
		}
		echo json_encode($result);
	}
}
