<?php

defined('BASEPATH') OR exit('No direct script access allowed');

Class Business_item extends CI_Controller {

    private $mod_name, $access_user;

    public function __construct() {
        parent::__construct();

        $this->mod_name = $this->router->fetch_module();

        $this->load->model($this->mod_name . '/Api_model');

        $this->Api_model->valid_access();

        $this->access_user = $this->Api_model->valid_user();
    }

    public function finder_combobox() {
        $keyword = isset($_REQUEST['q']) ? $_REQUEST['q'] : null;

        $this->load->model($this->mod_name . '/business/Item_model');

        $result = $this->Item_model->combobox_finder($keyword);

        $data = array();

        if (sizeof($result) > 0) {
            foreach ($result as $item) {
                $data[] = array(
                    'id' => $item['bsih_id'],
                    'name' => $item['bsih_name'],
                    'price' => $item['bsih_price'],
                    'photo' => base_url('uploads/biz_item_photo/' . $item['bsih_photo'])
                );
            }
        }

        echo json_encode($data);
    }

    public function finder_category() {
        $get_id = isset($_REQUEST['shop']) ? intval($_REQUEST['shop']) : 0;
        $show_item = isset($_REQUEST['show_item']) ? intval($_REQUEST['show_item']) : 0;
        $per_item = isset($_REQUEST['item_per_cate']) ? intval($_REQUEST['item_per_cate']) : 0;

//		print_r($_REQUEST);
        if (empty($get_id)) {
            echo json_encode(array('error' => true, 'message' => 'Undefined shop reference.'));
            exit();
        }

        $this->load->model($this->mod_name . '/business/Item_cate_model');

        $result = $this->Item_cate_model->get_category($get_id, $show_item,$per_item);

        if (!$result) {
            echo json_encode(array('error' => true, 'message' => 'Not found data.'));
            exit();
        }

        echo json_encode(array('success' => true, 'data' => $result));
    }

}
