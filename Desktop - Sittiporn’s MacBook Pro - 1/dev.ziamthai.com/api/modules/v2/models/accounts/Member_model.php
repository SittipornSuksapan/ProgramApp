<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Member_model extends CI_Model {

    function __construct() {
        parent:: __construct();
    }

    public function set_member_display($user_data) {
        $memh_name = isset($user_data['memh_display']) ? $user_data['memh_display'] : null;

        if (empty($memh_name)) {
            $memh_name = isset($user_data['memh_firstname']) ? $user_data['memh_firstname'] : null;

            if (!empty($user_data['memh_lastname'])) {
                $memh_name .= ' ' . $user_data['memh_lastname'];
            }
        }

        return ltrim(rtrim($memh_name, ' '), ' ');
    }

    public function member_data($memh_id, $cols = null) {
        if (empty($memh_id)) {
            return null;
        }

        $this->db->reset_query();

        if (empty($cols)) {
            $cols = 'memh_id,memh_email,memh_display,memh_firstname,memh_lastname,memh_level';
        }

        $this->db->select($cols);
        $this->db->from('member_header');
        $this->db->where('memh_id', $memh_id);

        $query = $this->db->get();

        if ($query->num_rows() < 1) {
            return null;
        }

        $data = $query->row_array();

        if (isset($data['memh_password'])) {
            unset($data['memh_password']);
        }

        $data['memh_display'] = $this->set_member_display($data);

        return $data;
    }

}
