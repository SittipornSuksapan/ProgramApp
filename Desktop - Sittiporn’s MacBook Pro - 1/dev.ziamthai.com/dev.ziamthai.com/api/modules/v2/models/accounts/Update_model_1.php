<?php

Class Update_model extends CI_Model {

    public function __construct() {
        parent::__construct();
    }

    private function valid_info_data() {
        if (!$this->input->post('m_display')) {
            return array('error' => true, 'message' => $this->lang->line('put_your_name'), 'focus' => 'm_display');
        }

        return array(
            'memh_display' => $this->input->post('m_display'),
            'memh_firstname' => $this->input->post('m_firstname'),
            'memh_lastname' => $this->input->post('m_lastname'),
            'memh_gender' => $this->input->post('m_gender')
        );
    }

    public function update_info($id) {
        if (empty($id)) {
            return null;
        }

        $data = $this->valid_info_data($id);

        if (isset($data['error'])) {
            return $data;
        }

        $this->db->where('memh_id', $id);

        $upd_status = $this->db->update('member_header', $data);

        if (!$upd_status) {
            return array('error' => true, 'message' => $this->lang->line('cannot_update_accounts_info'));
        }

        $access_user = $this->session->userdata('access_user');
        $access_user['name'] = $data['memh_display'];
        $access_user['firstname'] = $data['memh_firstname'];
        $access_user['lastname'] = $data['memh_lastname'];
        $access_user['gender'] = $data['memh_gender'];
        $this->session->set_userdata('access_user', $access_user);

        return array('success' => true, 'message' => $this->lang->line('complete_update_accounts_info'));
    }

    private function valid_pass_data() {
        if (!$this->input->post('old_pass')) {
            return array('error' => true, 'message' => $this->lang->line('put_your_old_pass'), 'focus' => 'old_pass');
        }

        $this->db->like('memh_password', sha1($this->input->post('old_pass')));
        $this->db->from('member_header');
        $chk_old_pwd = intval($this->db->count_all_results());

        if (!$chk_old_pwd) {
            return array('error' => true, 'message' => $this->lang->line('invalid_old_pass'), 'focus' => 'old_pass');
        }

        if (strlen($this->input->post('new_pass')) < 6) {
            return array('error' => true, 'message' => $this->lang->line('put_your_new_pass'), 'focus' => 'new_pass');
        }

        if ($this->input->post('new_pass') != $this->input->post('confirm_pass')) {
            return array('error' => true, 'message' => $this->lang->line('new_pass_no_match'), 'focus' => 'confirm_pass');
        }

        return array(
            'memh_password' => sha1($this->input->post('confirm_pass'))
        );
    }

    public function update_pass($id) {
        if (empty($id)) {
            return null;
        }

        $data = $this->valid_pass_data($id);

        if (isset($data['error'])) {
            return $data;
        }

        $this->db->where('memh_id', $id);

        $upd_status = $this->db->update('member_header', $data);

        if (!$upd_status) {
            return array('error' => true, 'message' => $this->lang->line('cannot_update_password'));
        }

        return array('success' => true, 'message' => $this->lang->line('complete_update_password'));
    }

}
