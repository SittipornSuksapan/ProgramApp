<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Review_model extends CI_Model {

    private $access_module, $access_client, $access_workspace;

    public function __construct() {
        parent::__construct();

        $this->access_module = $this->router->fetch_module();

        $this->load->model($this->access_module . '/Api_model');

        $this->access_client = $this->Api_model->valid_user();
        $this->access_workspace = $this->Api_model->valid_workspace();
    }

    public function set_review_public($id, $public) {
        if (empty($id)) {
            return false;
        }

        $this->db->reset_query();
        $this->db->trans_start();
        $this->db->where('bsrh_id', $id);
        $this->db->where('bsrh_bssh_id', $this->access_workspace['id']);
        $this->db->update('business_shop_review_header', array(
            'bsrh_public' => intval($public)
        ));
        $this->db->trans_complete();

        if ($this->db->trans_status() === FALSE) {
            return false;
        }

        $this->set_review_published($id);

        return true;
    }

    private function set_review_published($id) {
        if (empty($id)) {
            return null;
        }

        $this->db->reset_query();
        $this->db->select();
        $this->db->from('business_shop_review_header');
        $this->db->join('member_header', 'memh_id = bsrh_cuser', 'left');
        $this->db->where('bsrh_id', $id);
        $this->db->group_by('bsrh_id');
        $query = $this->db->get();

        if ($query->num_rows() < 1) {
            return null;
        }

        /* -- Save data to timeline_posts table -- */
        $this->save_posts_3rd($query->row_array());
    }

    private function save_posts_3rd($data) {
        $ref_id = isset($data['bsrh_id']) ? intval($data['bsrh_id']) : 0;

        if (empty($ref_id)) {
            return null;
        }

        $highlight = isset($data['bsrh_desc']) ? strip_tags($data['bsrh_desc']) : null;

        if (getStrLenTH($highlight) > 200) {
            $highlight = getSubStrTH($highlight, 0, 200) . '...';
        }

        $this->load->model($this->access_module . '/timeline/Posts_3rd_model');

        $this->Posts_3rd_model->save(array(
            'ref_type' => 'review',
            'ref_id' => $ref_id,
            'title' => isset($data['bsrh_title']) ? $data['bsrh_title'] : '',
            'highlight' => strip_tags($highlight),
            'review_score' => isset($data['bsrh_score']) ? intval($data['bsrh_score']) : 0,
            'review_price_rate' => isset($data['bsrh_price_rate']) ? intval($data['bsrh_price_rate']) : 0,
            'review_menu' => $this->get_review_menu($data),
            'media' => $this->get_review_img($ref_id),
            'public' => isset($data['bsrh_public']) ? intval($data['bsrh_public']) : 0,
            'c_ip' => isset($data['bsrh_cip']) ? $data['bsrh_cip'] : null,
            'c_date' => isset($data['bsrh_cdate']) ? $data['bsrh_cdate'] : null,
            'c_uid' => isset($data['bsrh_cuser']) ? intval($data['bsrh_cuser']) : null,
            'c_uname' => isset($data['memh_display']) ? $data['memh_display'] : null,
            'm_ip' => isset($data['bsrh_mip']) ? $data['bsrh_mip'] : null,
            'm_date' => isset($data['bsrh_mdate']) ? $data['bsrh_mdate'] : null,
            'm_uid' => isset($data['bsrh_muser']) ? intval($data['bsrh_muser']) : null,
            'm_uname' => isset($data['memh_display']) ? $data['memh_display'] : null
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
