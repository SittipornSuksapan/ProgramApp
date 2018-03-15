<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Shop_asset_model extends CI_Model {

    function __construct() {
        parent:: __construct();
    }

    public function rating_summary($id) {
        $default = array(
            'review_score' => 5,
            'review_total' => 0
        );

        if (empty($id)) {
            return $default;
        }

        $this->db->select('score_value AS review_score,score_total_review AS review_total');
        $this->db->from('business_shop_score');
        $this->db->where('score_bssh_id', $id);
        $query = $this->db->get();
        $data = $query->row_array();

        if (!$data) {
            return $default;
        }

        return $data;
    }

    public function rating_now($id) {
        $this->db->reset_query();
        $this->db->from('business_shop_review_header');
        $this->db->where('bsrh_bssh_id', $id);
        $this->db->where('bsrh_public >', 0);

        $count_total = intval($this->db->count_all_results());

        return array(
            'review_score' => $this->get_score($id),
            'review_total' => $count_total
        );
    }

    public function get_score($id) {
        $this->db->reset_query();

        $this->db->select('AVG(bsrh_score) AS score_value');
        $this->db->from('business_shop_review_header');
        $this->db->where('bsrh_bssh_id', $id);
        $this->db->where('bsrh_public >', 0);

        $query = $this->db->get();

        $data = $query->row_array();

        $avg_cal = ($data['score_value'] + 5) / 2;

        return floatval($avg_cal);
    }

    public function get_price_rate($id) {
        $this->db->reset_query();

        $this->db->select('AVG(bsrh_price_rate) AS score_value');
        $this->db->from('business_shop_review_header');
        $this->db->where('bsrh_bssh_id', $id);
        $this->db->where('bsrh_public >', 0);

        $query = $this->db->get();

        if ($query->num_rows() < 1) {
            return 0;
        }

        $data = $query->row_array();

        if (empty($data['score_value'])) {
            return 0;
        }

        return floatval($data['score_value']);
    }

    public function work_hour_list($id) {
        if (empty($id)) {
            return null;
        }

        $this->db->select('bssw_day_week AS day_of_week,bssw_open_time AS opening,bssw_close_time AS closing');
        $this->db->from('business_shop_workhour');
        $this->db->where("bssw_bssh_id", $id);
        $this->db->order_by('bssw_day_week', 'ASC');
        $this->db->order_by('bssw_open_time', 'ASC');
        $query = $this->db->get();

        if ($query->num_rows() < 1) {
            return null;
        }

        $data = $query->result_array();

        foreach ($data as $key => $value) {
            $data[$key]['day_name'] = day_of_week($value['day_of_week'], true);
            $data[$key]['day_name_short'] = day_of_week($value['day_of_week']);
            $data[$key]['opening'] = substr($value['opening'], 0, strripos($value['opening'], ':'));
            $data[$key]['closing'] = substr($value['closing'], 0, strripos($value['closing'], ':'));
        }

        return $data;
    }

    public function work_hour_today($id) {
        if (empty($id)) {
            return null;
        }

        $t_now = date('H:i:s');
        $d_o_w = date("w", time());

        $this->db->select('bssw_open_time AS opening,bssw_close_time AS closing');
        $this->db->from('business_shop_workhour');
        $this->db->where("bssw_bssh_id", $id);
        $this->db->where("bssw_day_week", $d_o_w);
        $this->db->order_by('bssw_open_time', 'ASC');

        $query = $this->db->get();

        if ($query->num_rows() < 1) {
            return null;
        }

        $data = $query->result_array();
        $return_data['now_opening'] = false;
        $return_data['now_datetime'] = date('Y-m-d H:i:s');
        $return_data['day_of_week'] = $d_o_w;
        $return_data['next_day_open'] = false;
        $return_data['upcoming_open'] = null;
        $return_data['upcoming_close'] = null;
        $return_data['list'] = $data;
        $time_open = array();
        $time_close = array();

        foreach ($data as $value) {
            $opening = isset($value['opening']) ? date('H:i', strtotime($value['opening'])) : null;
            $closing = isset($value['closing']) ? date('H:i', strtotime($value['closing'])) : null;

            array_push($time_open, $opening);
            array_push($time_close, $closing);

            if ($opening < $t_now && $closing > $t_now) {
                $return_data['now_opening'] = true;
                $return_data['upcoming_close'] = $closing;
            }

            if ($opening == $t_now && $closing == $t_now) {
                $return_data['now_opening'] = true;
                $return_data['upcoming_close'] = $closing;
            }
        }

        if (!$return_data['now_opening']) {
            $return_data['upcoming_open'] = min($time_open);

            if ($t_now > $return_data['upcoming_open']) {
                $return_data['upcoming_open'] = max($time_open);
            }

            if ($t_now > $return_data['upcoming_open']) {
                $return_data['next_day_open'] = true;
                $return_data['upcoming_open'] = min($time_open);
            }
        }

        return $return_data;
    }

    public function recommend_item($bssh_id, $limit = 8) {
        if (empty($bssh_id)) {
            return null;
        }

        $this->db->select('bsih_id AS id,bsih_name AS name,bsih_photo');
        $this->db->from('business_shop_item_header');
        $this->db->where("bsih_bssh_id", $bssh_id);
        $this->db->where("bsih_recommend", 1);
        $this->db->order_by('RAND()');
        $this->db->limit($limit);
        $query = $this->db->get();

        if ($query->num_rows() < 1) {
            return null;
        }

        $data = $query->result_array();

        if (sizeof($data) > 0) {
            foreach ($data as $key => $value) {
                $photo_file = basename($value['bsih_photo']);

                $data[$key]['photo'] = site_url('uploads/item_photo/large/' . $value['id'] . '/' . $photo_file);
                $data[$key]['photo'] = site_url('uploads/item_photo/thumb/' . $value['id'] . '/' . $photo_file);

                unset($data[$key]['bsih_photo']);
            }
        }

        return $data;
    }

}
