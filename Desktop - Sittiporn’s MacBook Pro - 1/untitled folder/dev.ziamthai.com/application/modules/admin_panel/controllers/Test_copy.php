<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Test_copy extends CI_Controller {
    
    public function __construct() {
        parent::__construct();
    }

    public function index() {
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
    }

}
