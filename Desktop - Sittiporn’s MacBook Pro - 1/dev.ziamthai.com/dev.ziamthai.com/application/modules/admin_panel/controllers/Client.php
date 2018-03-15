<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Client extends CI_Controller {
    private $apps_name = 'admin_panel';

    public function __construct() {
        parent:: __construct();

				if (!$this->session->has_userdata($this->apps_name . '_uid')) {
            redirect($this->apps_name . '/login');
            exit();
        }

 				$this->template->load('templates/admin_panel');
 
        $this->template->set('apps_name', $this->apps_name);
				if ($this->session->userdata($this->apps_name . '_utype')=='admin') {
					$this->template->set('sidebar', array('view' => 'admin_panel/cpanel_sidebar_admin', 'lang' => ''));
				} else {
					$this->template->set('sidebar', array('view' => 'admin_panel/cpanel_sidebar', 'lang' => ''));
				}
//        $this->load->language($this->apps_name . '/client',get_language());


        $this->load->language($this->apps_name . '/business_header');
        $this->load->model($this->apps_name . '/business_header/Bssh_data_model');
        $this->load->model($this->apps_name . '/Client_model');
    }
		
		public function index() {

			$this->template->set('title', $this->lang->line('form_title'));
			$data = $this->Bssh_data_model->list_bizshop();
			$owner=$this->Bssh_data_model->list_owner();
			for ($iCount=0; $iCount<count($data); $iCount++) {
				$data[$iCount]['bssh_owner_name']='Admin';
				for ($iUser=0; $iUser<count($owner); $iUser++) {
					if ($owner[$iUser]['user_id']==$data[$iCount]['bssh_owner'])
						$data[$iCount]['bssh_owner_name']=$owner[$iUser]['user_name'];
				}
			}
			$this->template->view($this->apps_name . '/client/list', array(
            'bssh_data' => $data,
						'user_level'=> $this->session->userdata($this->apps_name . '_utype')
      ));
			
/*
			$sDate=str_replace('.','',sprintf("%f",microtime(true)));
			$sSrc='/var/www/html/ziamthai/uploads/food/115_20170119234835.jpg';
			$sDest='/var/www/html/ziamthai/uploads/client/115/photo/104_'.$sDate.'.jpg';
			$result=$this->Test_copy_model->do_copy($sSrc,$sDest);
			echo "<pre>";
			print_r($result);
			print_r(scandir('/var/www/html/ziamthai/uploads/client/115/photo/'));
			echo "</pre>";
 */
		}
		public function folder() {
			$this->template->set('title', $this->lang->line('form_title'));
			$id=$_REQUEST['id'];
			$arrInfo=$this->Bssh_data_model->get_data($id);
			$arrImage=$this->Bssh_data_model->get_images($id);
			if (isset($_POST['btnSave'])) {
//        $result = $this->Bssh_data_model->edit_data1($_POST,$_FILES);
			}
			if ($id>0) {
				$this->template->view($this->apps_name . '/client/folder', array(
						'id'=>$id,
            'info' => $arrInfo,
            'images' => $arrImage,
						'user_level'=> $this->session->userdata($this->apps_name . '_utype')
				));
			}
		}

/*		
		public function genFolder() {
			$id=$_REQUEST['id'];
			print_r($this->Client_model->genFolder($id));
		}
*/
		public function premove() {
			$id=$_REQUEST['id'];
			$sDate=str_replace('.','',sprintf("%f",microtime(true)));
			echo "<pre>";
      $this->load->model($this->apps_name . '/Client_model');
			echo "<br>".date('Y-m-d H:i:s');
			$result=$this->Client_model->moveFolder($id);
//			$sSrc='/var/www/html/ziamthai/uploads/food/115_20170119234835.jpg';
//			$sDest='/var/www/html/ziamthai/uploads/client/115/photo/104_'.$sDate.'.jpg';
//			$result=$this->Test_copy_model->do_copy($sSrc,$sDest);
			var_dump($result);
			print_r(scandir('/var/www/html/ziamthai/uploads/client/'.$id.'/photo/'));
			echo "</pre>";
//			echo $sDate."<br>";
		}
}
