<?php

Class Photo_model extends CI_Model {

    private $access_user, $picture, $photo_name_save;
    private $photo_path = ROOT_PATH . '/' . PATH_USER_PHOTO;

    public function __construct() {
        parent::__construct();
    }

    private function valid_file_upload($access_user) {
        $this->access_user = $access_user;

        $this->picture = $_FILES['m_picture']['tmp_name'];

        $photo_name = basename($_FILES['m_picture']['name']);

        $photo_ext = pathinfo(strtolower($photo_name), PATHINFO_EXTENSION);

        if (!$this->picture) {
            return array('error' => true, 'message' => $this->lang->line('empty_picture'));
        }

        $this->photo_name_save = sprintf('%s_%s_member.%s', $access_user['id'], TIME_NOW, $photo_ext);

        move_uploaded_file($this->picture, $this->photo_path . $this->photo_name_save);

        if (!file_exists($this->photo_path . $this->photo_name_save)) {
            return array('error' => true, 'message' => $this->lang->line('upload_fail'));
        }
    }

    public function save_photo($access_user) {
        $valid_data = $this->valid_file_upload($access_user);

        if (isset($valid_data['error'])) {
            return $valid_data;
        }

        $this->remove_old_photo();

        $this->db->reset_query();
        $this->db->where('memh_id', $access_user['id']);

        $upd_status = $this->db->update('member_header', array(
            'memh_photo' => $this->photo_name_save
        ));

        if (!$upd_status) {
            @unlink($this->photo_path . $this->photo_name_save);

            return array('error' => true, 'message' => $this->lang->line('cannot_update_picture'));
        }

        $this->photo_resize($this->photo_path . $this->photo_name_save);

        return array('success' => true, 'message' => $this->lang->line('complete_update_picture'));
    }

    private function remove_old_photo() {
        $this->db->reset_query();
        $this->db->select('memh_photo');
        $this->db->from('member_header');
        $this->db->where('memh_id', $this->access_user['id']);

        $query = $this->db->get();

        if ($query->num_rows() < 1) {
            return null;
        }

        $data = $query->row_array();

        if (empty($data['memh_photo'])) {
            return null;
        }
        
        $photo_name_small = str_replace('_member', '_member_thumb', $data['memh_photo']);

        @unlink($this->photo_path . $data['memh_photo']);

        @unlink($this->photo_path . $photo_name_small);
    }
    
    private function photo_resize($photo_path) {
        $this->load->library('image_lib');

        $config['image_library'] = 'gd2';
        $config['source_image'] = $photo_path;
        $config['create_thumb'] = TRUE;
        $config['maintain_ratio'] = TRUE;
        $config['width'] = 320;
        $config['height'] = 240;
        $config['quality'] = 100;

        $this->image_lib->clear();
        $this->image_lib->initialize($config);
        $this->image_lib->resize();
    }

}
