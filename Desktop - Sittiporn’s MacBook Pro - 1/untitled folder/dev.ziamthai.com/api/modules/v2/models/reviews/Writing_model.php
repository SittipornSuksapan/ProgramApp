<?php

defined('BASEPATH') OR exit('No direct script access allowed');

Class Writing_model extends CI_Model {

    private $access_module, $access_user;

    function __construct() {
        parent:: __construct();

        $this->access_module = $this->router->fetch_module();
    }

    private function data_form() {
        $menu = $this->input->post('recommend_menu');

        if (sizeof($menu) > 0) {
            $menu_recommend = implode('||', $menu);
        } else {
            $menu_recommend = '';
        }

        $photo = $this->input->post('photo');
        $cover_img = isset($photo[0]) ? $photo[0] : 0;

        $title = $this->input->post('title', '');

        if (!empty($title)) {
            $title = strip_tags($title);
        }

        $desc = $this->input->post('desc', '');

        if (!empty($desc)) {
            $desc = strip_tags($desc);
        }

        return array(
            'bsrh_bssh_id' => $this->input->post('shop', 0),
            'bsrh_title' => $title,
            'bsrh_desc' => $desc,
            'bsrh_public' => 1,
            'bsrh_score' => intval($this->input->post('score', 5)),
            'bsrh_price_rate' => intval($this->input->post('price_rate', 1)),
            'bsrh_cover_image' => $cover_img,
            'bsrh_menu_recommend' => $menu_recommend,
            'bsrh_cdate' => date('Y-m-d H:i:s'),
            'bsrh_cuser' => isset($this->access_user['id']) ? $this->access_user['id'] : 0,
            'bsrh_cip' => get_client_ip(),
            'bsrh_mdate' => date('Y-m-d H:i:s'),
            'bsrh_muser' => isset($this->access_user['id']) ? $this->access_user['id'] : 0,
            'bsrh_mip' => get_client_ip()
        );
    }

    private function data_valid() {
        if (empty($this->access_user['id'])) {
            return array('error' => true, 'message' => $this->lang->line('please_login'));
        }

        $data = $this->data_form();

        if (empty($data['bsrh_bssh_id'])) {
            return array('error' => true, 'message' => $this->lang->line('undefined_shop_id'));
        }

        if (empty($data['bsrh_title'])) {
            return array('error' => true, 'message' => $this->lang->line('insert_your_title'), 'focus' => 'title');
        }

        if (empty($data['bsrh_desc'])) {
            return array('error' => true, 'message' => $this->lang->line('insert_your_desc'), 'focus' => 'desc');
        }

        if (empty($data['bsrh_score']) || empty($data['bsrh_price_rate'])) {
            return array('error' => true, 'message' => $this->lang->line('select_your_rating'));
        }

        return $data;
    }

    public function data_insert($access_user) {
        $this->access_user = $access_user;

        $valid_data = $this->data_valid();

        if (isset($valid_data['error'])) {
            return $valid_data;
        }

        $this->db->reset_query();
        $this->db->insert('business_shop_review_header', $valid_data);

        $result = ($this->db->affected_rows() != 1) ? false : true;

        if (!$result) {
            return array('error' => true, 'message' => $this->lang->line('insert_fail'));
        }

        $valid_data['bsrh_id'] = intval($this->db->insert_id());

        $this->photo_pair($valid_data['bsrh_id']);

        $this->save_timeline_posts($valid_data);

        return array('success' => true, 'message' => $this->lang->line('insert_complete'), 'data' => $this->return_data($valid_data));
    }

    private function return_data($data) {
        return array(
            'id' => isset($data['bsrh_id']) ? $data['bsrh_id'] : null,
            'shop' => isset($data['bsrh_bssh_id']) ? $data['bsrh_bssh_id'] : null,
            'title' => isset($data['bsrh_title']) ? $data['bsrh_title'] : null
        );
    }

    private function photo_pair($bsrh_id) {
        if (empty($bsrh_id)) {
            return null;
        }

        $photo = $this->input->post('photo');

        if (sizeof($photo) < 1) {
            return null;
        }

        foreach ($photo as $photo_id) {
            $this->db->reset_query();
            $this->db->where('bsri_id', $photo_id);
            $this->db->update('business_shop_review_image', array(
                'bsri_bsrh_id' => $bsrh_id
            ));
        }
    }

    private function save_timeline_posts($data) {
        if (empty($data['bsrh_public'])) {
            return null;
        }

        $this->load->model($this->access_module . '/timeline/Posts_3rd_model');
        
        $highlight = isset($data['bsrh_desc']) ? strip_tags($data['bsrh_desc']) : null;

        if (getStrLenTH($highlight) > 200) {
            $highlight = getSubStrTH($highlight, 0, 200) . '...';
        }

        $this->Posts_3rd_model->save(array(
            'ref_type' => 'review',
            'ref_id' => $data['bsrh_id'],
            'shop_id' => $data['bsrh_bssh_id'],
            'title' => isset($data['bsrh_title']) ? $data['bsrh_title'] : '',
            'highlight' => strip_tags($highlight),
            'review_score' => isset($data['bsrh_score']) ? intval($data['bsrh_score']) : 0,
            'review_price_rate' => isset($data['bsrh_price_rate']) ? intval($data['bsrh_price_rate']) : 0,
            'review_menu' => $this->get_review_menu($data),
            'media' => $this->get_review_img($data['bsrh_id']),
            'public' => isset($data['bsrh_public']) ? intval($data['bsrh_public']) : 0,
            'c_ip' => isset($data['bsrh_cip']) ? $data['bsrh_cip'] : null,
            'c_date' => isset($data['bsrh_cdate']) ? $data['bsrh_cdate'] : null,
            'c_uid' => isset($data['bsrh_cuser']) ? intval($data['bsrh_cuser']) : null,
            'c_uname' => isset($this->access_user['name']) ? $this->access_user['name'] : null,
            'm_ip' => isset($data['bsrh_mip']) ? $data['bsrh_mip'] : null,
            'm_date' => isset($data['bsrh_mdate']) ? $data['bsrh_mdate'] : null,
            'm_uid' => isset($data['bsrh_muser']) ? intval($data['bsrh_muser']) : null,
            'm_uname' => isset($this->access_user['name']) ? $this->access_user['name'] : null
        ));
    }
    
    private function get_review_img($id) {
        if (empty($id)) {
            return null;
        }

        $this->db->reset_query();
        $this->db->select('bsri_id AS id,bsri_imgt_id AS img_type,bsri_file AS file,type,size,width,height');
        $this->db->from('business_shop_review_image');
        $this->db->where('bsri_bsrh_id', $id);
        $query = $this->db->get();

        if ($query->num_rows() < 1) {
            return null;
        }

        $data = $query->result_array();
        $data_return = array();

        foreach ($data as $value) {
            //--File Pattern: {{id}}--{{file_name}}--{{file_type}}--{{media_type}}--{{media_width}}--{{media_height}}--{{media_duration}}
            $data_return[] = sprintf('%d--%s--%s--photo--%d--%d--0', $value['id'], $value['file'], $value['type'], $value['width'], $value['height']);
        }

        return implode('||', $data_return);
    }

    private function get_review_menu($data) {
        if (empty($data['bsrh_menu_recommend'])) {
            return null;
        }

        $menu_arr = explode('||', $data['bsrh_menu_recommend']);
        $data_return = array();

        foreach ($menu_arr as $value) {
            $item_info = $this->get_menu_info($value);

            if (!empty($item_info['name'])) {
                $data_return[] = $item_info['name'];
            }
        }

        if (sizeof($data_return) < 1) {
            return null;
        }

        return implode('||', $data_return);
    }

    private function get_menu_info($item_id) {
        if (empty($item_id)) {
            return null;
        }

        $this->db->reset_query();
        $this->db->select('bsih_name AS name');
        $this->db->from('business_shop_item_header');
        $this->db->where('bsih_id', $item_id);
        $query = $this->db->get();

        if ($query->num_rows() < 1) {
            return null;
        }

        return $query->row_array();
    }

}
