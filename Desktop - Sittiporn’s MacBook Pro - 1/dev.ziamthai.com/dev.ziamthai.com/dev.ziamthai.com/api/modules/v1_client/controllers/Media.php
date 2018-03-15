<?php

defined('BASEPATH') OR exit('No direct script access allowed');

Class Media extends CI_Controller {

    private $access_module, $access_user, $access_workspace;

    public function __construct() {
        parent::__construct();

        $this->access_module = $this->router->fetch_module();

        $this->load->model($this->access_module . '/Api_model');

        $this->Api_model->valid_access();
    }

    public function remover() {
        $this->load->model($this->access_module . '/media/Media_remove_model');

        $result = $this->Media_remove_model->remove_file();

        echo json_encode($result);
    }

    public function uploads() {
        $this->load->model($this->access_module . '/media/Media_uploads_model');

        $result = $this->Media_uploads_model->save_file();

        echo json_encode($result);
    }

    public function uploads_photo() {
        $this->load->model($this->access_module . '/media/Photo_upload_model');

        $result = $this->Photo_upload_model->save_file();

        echo json_encode($result);
    }

    public function uploads_video() {
        $this->load->model($this->access_module . '/media/Video_upload_model');

        $result = $this->Video_upload_model->save_file();

        echo json_encode($result);
    }

}
