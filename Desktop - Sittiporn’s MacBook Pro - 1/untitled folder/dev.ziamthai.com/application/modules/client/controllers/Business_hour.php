<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Business_hour extends CI_Controller {

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

        $this->template->set('title', $this->lang->line('page_title'));
        $this->template->set('sidebar_mnu_active', 'business_hour');

        $this->template->view($this->access_module . '/business/hour_index', array(
            'access_client' => $this->access_client,
            'access_workspace' => $this->access_workspace,
            'access_module' => $this->access_module,
            'access_lang' => $this->access_lang
        ));
    }

    public function api_add_workhour() {
        $return['result'] = false;
        $id = $_REQUEST['shopID'];
        $dow = $_REQUEST['selDOW'];
        $type = $_REQUEST['iType'];
        $open = $_REQUEST['timeOpen'];
        $close = $_REQUEST['timeClose'];
        $this->load->model($this->access_module . '/business/Hour_model');
        if (empty($id)) {
            return null;
        } else {
            // add workhour
            $return = $this->Hour_model->add_workhour($id, $type, $dow, $open, $close);
        }
        echo json_encode($return);
    }

    public function api_get_workhour() {
        $return['result'] = false;
        $id = $_REQUEST['shopID'];
        $type = $_REQUEST['iType'];
        $this->load->model($this->access_module . '/business/Hour_model');
        if (empty($id)) {
            return null;
        } else {
            // add workhour
            $result = $this->Hour_model->get_workhour($id, $type);
            $return['result'] = true;
//				$return['data']=$result;
//				for ($iCount=0; $iCount<count($$result); $iCount++) {
//					$return['data'][$iCount]['day_of_week']=day_of_week($return['data'][$iCount]['bssw_day_week']);
//				}
            if (count($result) > 0) {
                $iCount = -1;
                foreach ($result as $data) {
                    $iCount++;
                    $return['data'][$iCount] = array(
                        'id' => $data['bssw_id'],
                        'open' => $data['bssw_open_time'],
                        'close' => $data['bssw_close_time'],
                        'idow' => $data['bssw_day_week'],
                        'sdow' => day_of_week($data['bssw_day_week']),
                    );
                }
            }
        }
        echo json_encode($return);
    }

    public function api_edit_workhour() {
        $return['result'] = false;
        $id = $_REQUEST['recID'];
        $dow = $_REQUEST['selDOW'];
        $open = $_REQUEST['timeOpen'];
        $close = $_REQUEST['timeClose'];
        $this->load->model($this->access_module . '/business/Hour_model');
        if (empty($id)) {
            return null;
        } else {
            // add workhour
            $return = $this->Hour_model->edit_workhour($id, $dow, $open, $close);
        }
        echo json_encode($return);
    }

    public function api_del_workhour() {
        $return['result'] = false;
        $id = $_REQUEST['recID'];
        $this->load->model($this->access_module . '/business/Hour_model');
        if (empty($id)) {
            return null;
        } else {
            // add workhour
            $return = $this->Hour_model->del_workhour($id);
        }
        echo json_encode($return);
    }

    public function api_active_online() {
        $return['result'] = false;
        $id = $_REQUEST['shopID'];
        $iForce = $_REQUEST['chkActive'];
        $this->load->model($this->access_module . '/business/Hour_model');
        if (empty($id)) {
            return null;
        } else {
            // add workhour
            $return = $this->Hour_model->force_online($id, $iForce);
        }
        echo json_encode($return);
    }

}
