<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Order_info_model extends CI_Model {

    private $access_module, $access_client, $access_workspace;

    public function __construct() {
        parent::__construct();

        $this->access_module = $this->router->fetch_module();

        $this->load->model($this->access_module . '/Api_model');

        $this->access_client = $this->Api_model->valid_user();
        $this->access_workspace = $this->Api_model->valid_workspace();
    }

    public function get_data() {
        $order_id = $this->input->post('order', 0);

        if (empty($order_id)) {
            return array('error' => true, 'message' => 'Not found order reference.');
        }

        $this->db->reset_query();
        $this->db->select('order_id,order_date,order_delivery_type,order_delivery_charge,order_sub_total,order_tax_rate,order_tax_amount,order_grand_total,order_name AS customer_name,order_tel AS customer_tel,order_email AS customer_email,order_street AS customer_street,order_address AS customer_address,order_city AS customer_city,order_state AS customer_state,order_zipcode AS customer_zipcode');
        $this->db->from('foods_order');
        $this->db->where('order_id', $order_id);
        $this->db->where('order_bssh_id', $this->access_workspace['id']);

        $query = $this->db->get();

        if ($query->num_rows() < 1) {
            return array('error' => true, 'message' => 'Not found order information.');
        }

        $info = $query->row_array();
        $info['order_date'] = isset($info['order_date']) ? display_time_zone($this->access_workspace['time_zone'], $info['order_date']) : null;
        $info['order_sub_total'] = isset($info['order_sub_total']) ? number_format((float) $info['order_sub_total'], 2, '.', '') : 0;
        $info['order_tax_rate'] = isset($info['order_tax_rate']) ? number_format((float) $info['order_tax_rate'], 2, '.', '') : 0;
        $info['order_tax_amount'] = isset($info['order_tax_amount']) ? number_format((float) $info['order_tax_amount'], 2, '.', '') : 0;
        $info['order_grand_total'] = isset($info['order_grand_total']) ? number_format((float) $info['order_grand_total'], 2, '.', '') : 0;

        return array('success' => true, 'order_data' => array(
                'order' => $info,
                'items' => $this->get_items($info['order_id'])
        ));
    }

    private function get_items($order_id) {
        if (empty($order_id)) {
            return null;
        }

        $this->db->reset_query();
        $this->db->select('list_detail AS name,list_instruction AS instruction,list_price AS price,list_qty AS qty,list_total AS total');
        $this->db->from('foods_order_list');
        $this->db->where('list_order_id', $order_id);
        $this->db->where('list_bssh_id', $this->access_workspace['id']);

        $query = $this->db->get();

        if ($query->num_rows() < 1) {
            return null;
        }

        $data = $query->result_array();

        foreach ($data as $key => $value) {
            $data[$key]['price'] = isset($value['price']) ? number_format((float) $value['price'], 2, '.', '') : 0;
            $data[$key]['total'] = isset($value['total']) ? number_format((float) $value['total'], 2, '.', '') : 0;
        }

        return $data;
    }

}
