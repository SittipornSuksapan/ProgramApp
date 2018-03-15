<?php

defined('BASEPATH') OR exit('No direct script access allowed');

Class Test_copy_model extends CI_Model {
    
    public function do_copy($source,$dest) {
        return $this->copy_file($source, $dest);
    }

    private function copy_file($source,$dest) {
        return copy($source, $dest);
    }

}
