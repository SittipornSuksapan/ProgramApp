<?php

defined('BASEPATH') OR exit('No direct script access allowed');

if (empty($_SERVER['HTTPS']) || $_SERVER['HTTPS'] == "off") {
    $redirect = 'https://' . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];
    header('HTTP/1.1 301 Moved Permanently');
    header('Location: ' . $redirect);
    exit();
}

class Business_category extends CI_Controller {

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
//        $this->load->language($this->apps_name . '/business_header',get_language());
//        $this->load->language($this->apps_name . '/business_header');

        $this->load->model($this->apps_name . '/business_category/Business_category_model');
    }

		public function index() {
			$this->template->set('title', $this->lang->line('form_title'));
			$curr=(! empty($_REQUEST['curr']))?$_REQUEST['curr']:1;
			$ppage=(! empty($_REQUEST['ppage']))?$_REQUEST['ppage']:10;
			
 			$data = $this->Business_category_model->list_data($curr,$ppage,0);
			$this->template->view($this->apps_name . '/business_category/list_parent', array(
            'data' => $data,
						'user_level'=> $this->session->userdata($this->apps_name . '_utype')
      ));
		}
		public function list_parent() {
			$this->template->set('title', $this->lang->line('form_title'));
			$curr=(! empty($_REQUEST['curr']))?$_REQUEST['curr']:1;
			$ppage=(! empty($_REQUEST['ppage']))?$_REQUEST['ppage']:10;
			
 			$data = $this->Business_category_model->list_data($curr,$ppage,0);
			$this->template->view($this->apps_name . '/business_category/list_parent', array(
            'data' => $data,
						'user_level'=> $this->session->userdata($this->apps_name . '_utype')
      ));
		}
		
		public function list_item() {
			$this->template->set('title', $this->lang->line('form_title'));
			$curr=(! empty($_REQUEST['curr']))?$_REQUEST['curr']:1;
			$ppage=(! empty($_REQUEST['ppage']))?$_REQUEST['ppage']:10;
			$id=(! empty($_REQUEST['id']))?$_REQUEST['id']:101;
			
 			$parent = $this->Business_category_model->get_data($id);
 			$data = $this->Business_category_model->list_data($curr,$ppage,$id);
			$this->template->view($this->apps_name . '/business_category/list_item', array(
            'data' => $data,
						'parent'=>$parent,
						'user_level'=> $this->session->userdata($this->apps_name . '_utype')
      ));
		}

		public function add_parent() {
			$this->template->set('title', $this->lang->line('form_title'));
			$data=null;
			$input=null;
			$file=null;
			if (isset($_REQUEST['btnSave'])) {
				if (!empty($_REQUEST['input_title'])) $input['input_title']=$_REQUEST['input_title'];
				if (!empty($_REQUEST['input_detail'])) $input['input_detail']=$_REQUEST['input_detail'];
				if (!empty($_FILES['file_icon'])) $file=$_FILES['file_icon'];
				$data = $this->Business_category_model->add_parent($input,$file);
			}
			$this->template->view($this->apps_name . '/business_category/add_parent', array(
						'data' => $data,
						'user_level'=> $this->session->userdata($this->apps_name . '_utype')
			));
		}

		public function add_item() {
			$id=(! empty($_REQUEST['id']))?$_REQUEST['id']:101;
			$this->template->set('title', $this->lang->line('form_title'));
			$data=null;
			$input=null;
			$file=null;
 			$parent = $this->Business_category_model->get_data($id);
			if (isset($_REQUEST['btnSave'])) {
				if (!empty($_REQUEST['input_pid'])) $input['input_pid']=$_REQUEST['input_pid'];
				if (!empty($_REQUEST['input_title'])) $input['input_title']=$_REQUEST['input_title'];
				if (!empty($_REQUEST['input_detail'])) $input['input_detail']=$_REQUEST['input_detail'];
				if (!empty($_FILES['file_icon'])) $file=$_FILES['file_icon'];
				$data = $this->Business_category_model->add_item($input,$file);
			}
			$this->template->view($this->apps_name . '/business_category/add_item', array(
						'data' => $data,
						'parent' => $parent,
						'user_level'=> $this->session->userdata($this->apps_name . '_utype')
			));
		}
		
		public function edit_parent() {
			if (! empty($_REQUEST['id'])) { 
				$this->template->set('title', $this->lang->line('form_title'));
				$data=null;
				$input=null;
				$file=null;
				$data = $this->Business_category_model->get_data($_REQUEST['id']);
				$data['result']=false;
				if (isset($_REQUEST['btnSave'])) {
					if (!empty($_REQUEST['input_id'])) $input['input_id']=$_REQUEST['id'];
					if (!empty($_REQUEST['input_title'])) $input['input_title']=$_REQUEST['input_title'];
					if (!empty($_REQUEST['input_detail'])) $input['input_detail']=$_REQUEST['input_detail'];
					if (!empty($_FILES['file_icon'])) $file=$_FILES['file_icon'];
					$result = $this->Business_category_model->edit_parent($input,$file);
					if ($result['result']==true) {
						$data = $this->Business_category_model->get_data($_REQUEST['id']);
						$data['message']=$result['message'];
						$data['result']=true;
					}
				}
				$this->template->view($this->apps_name . '/business_category/edit_parent', array(
							'data' => $data,
							'user_level'=> $this->session->userdata($this->apps_name . '_utype')
				));
			} else {
				$this->list_parent();
			}
		}

		public function edit_item() {
			if (! empty($_REQUEST['id'])) { 
				$this->template->set('title', $this->lang->line('form_title'));
				$data=null;
				$input=null;
				$file=null;
				$data = $this->Business_category_model->get_data($_REQUEST['id']);
				$data['result']=false;
				if ($data==null) {
					$this->list_parent();
				} else {
					$parent=$this->Business_category_model->get_data($data['bsth_pid']);
					if (isset($_REQUEST['btnSave'])) {
						if (!empty($_REQUEST['input_id'])) $input['input_id']=$_REQUEST['id'];
						if (!empty($_REQUEST['input_title'])) $input['input_title']=$_REQUEST['input_title'];
						if (!empty($_REQUEST['input_detail'])) $input['input_detail']=$_REQUEST['input_detail'];
						if (!empty($_FILES['file_icon'])) $file=$_FILES['file_icon'];
						$result = $this->Business_category_model->edit_item($input,$file);
						if ($result['result']) {
							$data = $this->Business_category_model->get_data($_REQUEST['id']);
							$data['message']=$result['message'];
						}
					}
					$this->template->view($this->apps_name . '/business_category/edit_item', array(
								'data' => $data,
								'parent' => $parent,
								'user_level'=> $this->session->userdata($this->apps_name . '_utype')
					));
				}
			} else {
				$this->list_parent();
			}
		}
		
		public function delete_parent() {
			if (! empty($_REQUEST['id'])) { 
				$this->template->set('title', $this->lang->line('form_title'));
				$data=null;
				$input=null;
				$file=null;
				$data = $this->Business_category_model->get_data($_REQUEST['id']);
				$data['result']=false;
				if ($data==null) {
					$this->list_parent();
				} else {
					if (isset($_REQUEST['btnDelete'])) {
						$result = $this->Business_category_model->delete_btype($_REQUEST['id']);
						if ($result['result']==true) {
							$data = $this->Business_category_model->get_data($_REQUEST['id']);
							$data['message']=$result['message'];
							$data['result']=true;
						}
					}
					$this->template->view($this->apps_name . '/business_category/delete_parent', array(
								'data' => $data,
								'user_level'=> $this->session->userdata($this->apps_name . '_utype')
					));
				}
			} else {
				$this->list_parent();
			}
		}
		
		public function delete_item() {
			if (! empty($_REQUEST['id'])) { 
				$this->template->set('title', $this->lang->line('form_title'));
				$data=null;
				$input=null;
				$file=null;
				$data = $this->Business_category_model->get_data($_REQUEST['id']);
				$data['result']=false;
				if ($data==null) {
					$this->list_item();
				} else {
					$parent=$this->Business_category_model->get_data($data['bsth_id']);
					if (isset($_REQUEST['btnDelete'])) {
						$result = $this->Business_category_model->delete_btype($_REQUEST['id']);
						if ($result['result']==true) {
							$data = $this->Business_category_model->get_data($_REQUEST['id']);
							$data['message']=$result['message'];
							$data['result']=true;
						}
					}
					$this->template->view($this->apps_name . '/business_category/delete_item', array(
								'data' => $data,
								'parent' => $parent,
								'user_level'=> $this->session->userdata($this->apps_name . '_utype')
					));
				}
			} else {
				$this->list_item();
			}
		}
		
		public function restore_parent() {
			if (! empty($_REQUEST['id'])) { 
				$this->template->set('title', $this->lang->line('form_title'));
				$data=null;
				$input=null;
				$file=null;
				$data = $this->Business_category_model->get_data($_REQUEST['id']);
				$data['result']=false;
				if ($data==null) {
					$this->list_item();
				} else {
					if (isset($_REQUEST['btnRestore'])) {
						$result = $this->Business_category_model->restore_btype($_REQUEST['id']);
						if ($result['result']==true) {
							$data = $this->Business_category_model->get_data($_REQUEST['id']);
							$data['message']=$result['message'];
							$data['result']=true;
						}
					}
					$this->template->view($this->apps_name . '/business_category/restore_parent', array(
								'data' => $data,
								'user_level'=> $this->session->userdata($this->apps_name . '_utype')
					));
				}
			} else {
				$this->list_parent();
			}
		}
		
		public function restore_item() {
			if (! empty($_REQUEST['id'])) { 
				$this->template->set('title', $this->lang->line('form_title'));
				$data=null;
				$input=null;
				$file=null;
				$data = $this->Business_category_model->get_data($_REQUEST['id']);
				$data['result']=false;
				if ($data==null) {
					$this->list_item();
				} else {
					$parent=$this->Business_category_model->get_data($data['bsth_pid']);
					if (isset($_REQUEST['btnRestore'])) {
						$result = $this->Business_category_model->restore_btype($_REQUEST['id']);
						if ($result['result']==true) {
							$data = $this->Business_category_model->get_data($_REQUEST['id']);
							$data['message']=$result['message'];
							$data['result']=true;
						}
					}
					$this->template->view($this->apps_name . '/business_category/restore_item', array(
								'data' => $data,
							  'parent'=>$parent,
								'user_level'=> $this->session->userdata($this->apps_name . '_utype')
					));
				}
			} else {
				$this->list_item();
			}
		}
}
