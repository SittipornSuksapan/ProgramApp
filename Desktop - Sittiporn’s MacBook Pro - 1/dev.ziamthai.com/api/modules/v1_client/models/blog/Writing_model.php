<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Writing_model extends CI_Model {

    private $access_module, $access_client, $access_workspace;
    private $photo_ori, $photo_size, $photo_name, $photo_ext;
    private $client_ip, $create_date;

    public function __construct() {
        parent::__construct();

        $this->access_module = $this->router->fetch_module();

        $this->load->model($this->access_module . '/Api_model');

        $this->access_client = $this->Api_model->valid_user();
        $this->access_workspace = $this->Api_model->valid_workspace();

        $this->load->language($this->access_module . '/blog/writing', get_language());

        $this->client_ip = get_client_ip();
        $this->create_date = date('Y-m-d H:i:s');
    }

    public function set_blog_public($id, $public) {
        if (empty($id)) {
            return false;
        }

        $this->db->reset_query();
        $this->db->trans_start();
        $this->db->where('id', $id);
        $this->db->where('shop_id', $this->access_workspace['id']);
        $this->db->update('business_blog', array(
            'public' => intval($public),
            'm_uid' => $this->access_client['id'],
            'm_date' => $this->create_date,
            'm_ip' => $this->client_ip
        ));
        $this->db->trans_complete();

        if ($this->db->trans_status() === FALSE) {
            return false;
        }

        $this->set_blog_published($id);

        return true;
    }

    private function set_blog_published($id) {
        if (empty($id)) {
            return null;
        }

        $this->db->reset_query();
        $this->db->select();
        $this->db->from('business_blog');
        $this->db->where('id', $id);
        $query = $this->db->get();

        if ($query->num_rows() < 1) {
            return null;
        }

        $this->save_posts_3rd($query->row_array());
    }

    private function post_data() {
        $tags_arr = $this->input->post('tags');
        $tags_list = '';

        if (sizeof($tags_arr)) {
            $tags_list = implode('||', $tags_arr);
        }

        $author_credit = $this->input->post('author_credit', 0);
        $author_name = '';
        $author_url = '';

        if (!empty($author_credit)) {
            $author_name = $this->input->post('author_name', '');
            $author_url = $this->input->post('author_url', '');
        }

        return array(
            'title' => strip_tags($this->input->post('title')),
            'content' => $this->input->post('content'),
            'highlight' => strip_tags($this->input->post('highlight')),
            'tags' => strip_tags($tags_list),
            'author_name' => $author_name,
            'author_url' => $author_url,
            'public' => $this->input->post('public', 0)
        );
    }

    private function valid_data() {
        if (empty($this->access_client['id'])) {
            return array('error' => true, 'message' => $this->lang->line('please_login'));
        }

        if (empty($this->access_workspace['id'])) {
            return array('error' => true, 'message' => $this->lang->line('please_select_workspace'));
        }

        if ($this->access_client['id'] != $this->access_workspace['owner']) {
            return array('error' => true, 'message' => $this->lang->line('access_denied'));
        }

        $data = $this->post_data();

        if (empty($data['title'])) {
            return array('error' => true, 'message' => $this->lang->line('put_blog_title'), 'focus' => 'title');
        }

        if (empty($data['content'])) {
            return array('error' => true, 'message' => $this->lang->line('put_blog_content'), 'focus' => 'content');
        }

        $data['img_cover'] = $this->save_photo();

        if (!empty($data['img_cover']) && $this->photo_size > 20480000) {
            return array('error' => true, 'message' => $this->lang->line('invalid_image_cover'), 'focus' => 'img_cover');
        }

        if (!empty($data['img_cover']) && ($this->photo_ext != 'jpg' && $this->photo_ext != 'jpeg' && $this->photo_ext != 'png')) {
            return array('error' => true, 'message' => $this->lang->line('invalid_image_cover'), 'focus' => 'img_cover');
        }

        $data['shop_id'] = $this->access_workspace['id'];

        $blog_id = $this->input->post('id', 0);
        $set_date = date('Y-m-d H:i:s');
        $set_ip = get_client_ip();

        if (empty($blog_id)) {
            $data['c_uid'] = $this->access_client['id'];
            $data['c_uname'] = $this->access_client['name'];
            $data['c_date'] = $set_date;
            $data['c_ip'] = $set_ip;
        }

        $data['m_uid'] = $this->access_client['id'];
        $data['m_uname'] = $this->access_client['name'];
        $data['m_date'] = $set_date;
        $data['m_ip'] = $set_ip;

        return $data;
    }

    private function save_photo() {
        $this->photo_ori = $_FILES['img_cover']['tmp_name'];

        if (!$this->photo_ori) {
            return null;
        }

        $this->photo_size = $_FILES['img_cover']['size'];
        $this->photo_name = basename($_FILES['img_cover']['name']);
        $this->photo_ext = pathinfo(strtolower($this->photo_name), PATHINFO_EXTENSION);

        $save_name = md5(TIME_NOW) . '.' . $this->photo_ext;
        $save_path = ROOT_PATH . '/' . UPLOADS_CLIENT . intval($this->access_workspace['id']) . '/blog/';

        if (!copy($this->photo_ori, $save_path . $save_name)) {
            return null;
        }

        $photo_old = $this->input->post('img_cover_old', null);

        if (!empty($photo_old)) {
            @unlink($save_path . $photo_old);
        }

        return $save_name;
    }

    public function save_data() {
        $valid_data = $this->valid_data();

        if (isset($valid_data['error'])) {
            return $valid_data;
        }

        $this->db->reset_query();
        $this->db->insert('business_blog', $valid_data);

        $result = ($this->db->affected_rows() != 1) ? false : true;

        if (!$result) {
            return array('error' => true, 'message' => $this->lang->line('save_blog_fail'));
        }

        $valid_data['id'] = intval($this->db->insert_id());

        if (!empty($valid_data['public'])) {
            $this->save_posts_3rd($valid_data);
        }

        return array('success' => true, 'message' => $this->lang->line('save_blog_complete'));
    }

    public function update_data($blog_id) {
        if (empty($blog_id)) {
            return array('error' => true, 'message' => $this->lang->line('undefined_reference_key_update'));
        }

        $valid_data = $this->valid_data();

        if (isset($valid_data['error'])) {
            return $valid_data;
        }

        $this->db->reset_query();
        $this->db->trans_start();
        $this->db->where('id', $blog_id);
        $this->db->update('business_blog', $valid_data);
        $this->db->trans_complete();

        if ($this->db->trans_status() === FALSE) {
            return array('error' => true, 'message' => $this->lang->line('save_blog_fail'));
        }

        if (!empty($valid_data['public'])) {
            $valid_data['id'] = $blog_id;

            $this->save_posts_3rd($valid_data);
        }

        return array('success' => true, 'message' => $this->lang->line('save_blog_complete'));
    }

    private function save_posts_3rd($data) {
        $ref_id = isset($data['id']) ? intval($data['id']) : 0;

        if (empty($ref_id)) {
            return null;
        }

        $highlight = isset($data['highlight']) ? strip_tags($data['highlight']) : null;

        if (empty($highlight)) {
            $highlight = isset($data['content']) ? strip_tags($data['content']) : null;

            if (getStrLenTH($highlight) > 200) {
                $highlight = getSubStrTH($highlight, 0, 200) . '...';
            }
        }

        $this->load->model($this->access_module . '/timeline/Posts_3rd_model');

        $this->Posts_3rd_model->save(array(
            'ref_type' => 'blog',
            'ref_id' => $ref_id,
            'title' => isset($data['title']) ? $data['title'] : '',
            'author_name' => isset($data['author_name']) ? $data['author_name'] : '',
            'author_url' => isset($data['author_url']) ? $data['author_url'] : '',
            'highlight' => $highlight,
            'img_cover' => isset($data['img_cover']) ? $data['img_cover'] : '',
            'public' => isset($data['public']) ? intval($data['public']) : 0,
            'c_ip' => isset($data['c_ip']) ? $data['c_ip'] : null,
            'c_uid' => isset($data['c_uid']) ? $data['c_uid'] : null,
            'c_uname' => isset($data['c_uname']) ? $data['c_uname'] : null,
            'c_date' => isset($data['c_date']) ? $data['c_date'] : null,
            'm_ip' => isset($data['m_ip']) ? $data['m_ip'] : null,
            'm_uid' => isset($data['m_uid']) ? $data['m_uid'] : null,
            'm_uname' => isset($data['m_uname']) ? $data['m_uname'] : null,
            'm_date' => isset($data['m_date']) ? $data['m_date'] : null
        ));
    }

}
