<?php

defined('BASEPATH') OR exit('No direct script access allowed');

Class Photo_upload_model extends CI_Model {

    private $access_user;
    private $photo_type = 105;
    private $photo_path = ROOT_PATH . '/' . PATH_REVIEW_IMG;
    private $photo_name_review = null;
    private $file_type, $file_size, $img_w, $img_h;

    function __construct() {
        parent:: __construct();
    }

    private function file_delete($photo_name) {
        if (empty($photo_name)) {
            return null;
        }

        $photo_name_small = str_replace('_review', '_review_thumb', $photo_name);

        @unlink($this->photo_path . $photo_name);

        @unlink($this->photo_path . $photo_name_small);
    }

    public function file_save($access_user, $shop_id, $photo_id = 0) {
        $this->access_user = $access_user;

        $photo_ori = $_FILES['photo']['tmp_name'];
        $photo_name = basename($_FILES['photo']['name']);
        $photo_ext = pathinfo(strtolower($photo_name), PATHINFO_EXTENSION);
        $photo_type = $this->input->post('type', 105);

        $this->photo_type = empty($photo_type) ? 105 : $photo_type;

        if ($photo_ori) {
            $this->photo_name_review = sprintf('%s_%s_%s_review.%s', $shop_id, $this->photo_type, TIME_NOW, $photo_ext);

            if (move_uploaded_file($photo_ori, $this->photo_path . $this->photo_name_review)) {
                $this->photo_resize($this->photo_path . $this->photo_name_review);
            }
        }

        if (!file_exists($this->photo_path . $this->photo_name_review)) {
            if (empty($photo_id)) {
                return array('error' => true, 'message' => $this->lang->line('cannot_save_file'));
            }
        }

        $this->file_type = $_FILES['photo']['type'];
        $this->file_size = $_FILES['photo']['size'];

        $img_ori = getimagesize($this->photo_path . $this->photo_name_review);
        $this->img_w = isset($img_ori[0]) ? $img_ori[0] : 0;
        $this->img_h = isset($img_ori[1]) ? $img_ori[1] : 0;

        return $this->save_data($shop_id, $photo_id);
    }

    private function set_data($shop_id) {
        return array(
            'bsri_bssh_id' => $shop_id,
            'bsri_imgt_id' => $this->photo_type,
            'bsri_caption' => $this->input->post('caption', ''),
            'bsri_cdate' => date('Y-h-d H:i:s'),
            'bsri_cuser' => isset($this->access_user['id']) ? $this->access_user['id'] : 0,
            'bsri_cip' => get_client_ip(),
            'bsri_mdate' => date('Y-h-d H:i:s'),
            'bsri_muser' => isset($this->access_user['id']) ? $this->access_user['id'] : 0,
            'bsri_mip' => get_client_ip(),
            'type' => $this->file_type,
            'size' => $this->file_size,
            'width' => $this->img_w,
            'height' => $this->img_h
        );
    }

    private function save_data($shop_id, $photo_id) {
        if (empty($photo_id)) {
            return $this->data_insert($shop_id);
        }

        return $this->data_update($shop_id, $photo_id);
    }

    private function data_return($data) {
        return array(
            'id' => $data['bsri_id'],
            'caption' => $data['bsri_caption'],
            'type' => $data['bsri_imgt_id'],
            'img' => site_url('uploads/reviews_img/large/' . $data['bsri_id']),
            'img_thumb' => site_url('uploads/reviews_img/thumb/' . $data['bsri_id']),
            'shop_id' => $data['bsri_bssh_id']
        );
    }

    private function data_insert($shop_id) {
        $data = $this->set_data($shop_id);
        $data['bsri_file'] = $this->photo_name_review;

        $this->db->reset_query();
        $this->db->insert('business_shop_review_image', $data);

        $result = ($this->db->affected_rows() != 1) ? false : true;

        if (!$result) {
            $this->file_delete($this->photo_name_review);

            return array('error' => true, 'message' => $this->lang->line('save_photo_fail'));
        }

        $data['bsri_id'] = intval($this->db->insert_id());

        return array('success' => true, 'message' => $this->lang->line('save_photo_complete'), 'data' => $this->data_return($data));
    }

    private function data_update($shop_id, $photo_id) {
        if (empty($photo_id)) {
            return array('error' => true, 'message' => $this->lang->line('undefined_photo_d'));
        }

        $photo_name_old = $this->photo_old($photo_id);

        $data = $this->set_data($shop_id);

        if (!empty($this->photo_name_review)) {
            $data['bsri_file'] = $this->photo_name_review;
        }

        unset($data['bsri_bssh_id'], $data['bsri_cdate'], $data['bsri_cuser'], $data['bsri_cip']);

        $this->db->reset_query();
        $this->db->where('bsri_id', $photo_id);
        $this->db->where('bsri_bssh_id', $shop_id);
        $this->db->update('business_shop_review_image', $data);

        $result = ($this->db->affected_rows() != 1) ? false : true;

        if (!$result) {
            $this->file_delete($this->photo_name_review);

            return array('error' => true, 'message' => $this->lang->line('update_upload_fail'));
        }

        $this->file_delete($photo_name_old);

        $data['bsri_id'] = intval($photo_id);

        return array('success' => true, 'message' => $this->lang->line('update_upload_complete'), 'data' => $this->data_return($data));
    }

    private function photo_old($photo_id) {
        $this->db->reset_query();
        $this->db->select('bsri_file');
        $this->db->from('business_shop_review_image');
        $this->db->where('bsri_id', $photo_id);
        $query = $this->db->get();

        if ($query->num_rows() < 1) {
            return null;
        }

        $data = $query->row_array();

        return isset($data['bsri_file']) ? $data['bsri_file'] : null;
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
