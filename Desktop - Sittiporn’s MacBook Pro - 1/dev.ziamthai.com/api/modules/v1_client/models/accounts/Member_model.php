<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Member_model extends CI_Model {

    private $access_module;

    public function __construct() {
        parent::__construct();

        $this->access_module = $this->router->fetch_module();
    }

    public function barcode_finder($q = null) {
        $keyword = isset($_REQUEST['q']) ? $_REQUEST['q'] : $q;

        $this->db->select('memh_id AS id,memh_display AS name,memh_idn AS idn,memh_email AS email');
        $this->db->from('member_header');
        $this->db->where('memh_idn', $keyword);

        $query = $this->db->get();

        if ($query->num_rows() < 1) {
            return null;
        }

        $data = $query->row_array();

        $this->load->model($this->access_module . '/reward/Reward_model');

        $data['photo'] = site_url('uploads/user_photo/thumb/' . $data['id']);

        $data['reward_points'] = $this->Reward_model->get_member_point($data['id']);

        return $data;
    }

    public function combobox_finder($q = null) {
        $keyword = isset($_REQUEST['q']) ? $_REQUEST['q'] : $q;

        $this->db->select('memh_id AS id,memh_display AS name,memh_idn AS idn,memh_email AS email');
        $this->db->from('member_header');

        $this->db->where('memh_idn', $keyword);
        $this->db->or_like('memh_display', $keyword, 'after');
        $this->db->or_like('memh_email', $keyword, 'after');

        $query = $this->db->get();
        $data = $query->result_array();

        if (!$data) {
            return null;
        }

        $this->load->model($this->access_module . '/reward/Reward_model');

        foreach ($data as $key => $item) {
            $data[$key]['photo'] = site_url('uploads/user_photo/thumb/' . $item['id']);
            $data[$key]['reward_points'] = $this->Reward_model->get_member_point($item['id']);
        }

        return $data;
    }

}
