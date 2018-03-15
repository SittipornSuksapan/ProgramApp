<?php

defined('BASEPATH') OR exit('No direct script access allowed');

Class Blog_model extends CI_Model {

    private $access_module;

    function __construct() {
        parent:: __construct();

        $this->access_module = $this->router->fetch_module();
    }

    public function get_data() {
        $id = $this->input->post('blog', 0);

        if (empty($id)) {
            return null;
        }

        //$this->db->select('id,title,public,shop_id,shop_name');
        $this->db->from('business_blog');
        $this->db->where('id', $id);

        $query = $this->db->get();

        if ($query->num_rows() < 1) {
            return null;
        }

        $data = $query->row_array();

        $data['author_domain'] = '';

        if (!empty($data['author_url'])) {
            $a_url1 = parse_url($data['author_url']);
            $data['author_domain'] = isset($a_url1['host']) ? str_ireplace('www.', '', $a_url1['host']) : '';
        }

        if (!empty($data['tags'])) {
            $tags_arr = explode('||', $data['tags']);

            $data['tags'] = $tags_arr;
        }

        return $data;
    }

}
