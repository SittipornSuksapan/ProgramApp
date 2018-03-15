<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Test_copy1 extends CI_Controller {
    private $apps_name = 'admin_panel';
    
    public function __construct() {
			parent::__construct();
/*			
			if (!$this->session->has_userdata($this->apps_name . '_uid')) {
					redirect($this->apps_name . '/login');
					exit();
			}
 *
 */
      $this->load->model($this->apps_name . '/Test_copy_model');
    }

    public function index() {
/*
        $ori_file = '/var/www/html/ziamthai/uploads/food/115_20170119234835.jpg';
        $new_file = '/var/www/html/ziamthai/uploads/client/115/photo/team_' . microtime(true) . '.jpg';

        $this->load->model('admin_panel/Test_copy_model');

        if (!$this->Test_copy_model->do_copy($ori_file, $new_file)) {
            echo 'Copy File failed!';
        } else {
            echo 'Copy file complete.';
        }

        $scandir = scandir('/var/www/html/ziamthai/uploads/client/115/photo/');

        echo '<pre>';
        print_r($scandir);
        echo '</pre>';
 * 
 */
			$sDate=str_replace('.','',sprintf("%f",microtime(true)));
			$sSrc='/var/www/html/ziamthai/uploads/food/115_20170119234835.jpg';
			$sDest='/var/www/html/ziamthai/uploads/client/115/photo/104_'.$sDate.'.jpg';
			$result=$this->Test_copy_model->do_copy($sSrc,$sDest);
			echo "<pre>";
			print_r($result);
			print_r(scandir('/var/www/html/ziamthai/uploads/client/115/photo/'));
			echo "</pre>";
    }

}
