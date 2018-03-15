<?php

function get_client_ip() {
    if (!empty($_SERVER['HTTP_CLIENT_IP'])) {   //check ip from share internet
        return $_SERVER['HTTP_CLIENT_IP'];
    } elseif (!empty($_SERVER['HTTP_X_FORWARDED_FOR'])) {   //to check ip is pass from proxy
        return $_SERVER['HTTP_X_FORWARDED_FOR'];
    }

    $ip = isset($_SERVER['REMOTE_ADDR']) ? $_SERVER['REMOTE_ADDR'] : '';

    return $ip;
}

function day_of_week($day_key, $full_name = false) {
    $get_lang = get_language();

    $day_full['english'] = array('Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday',);
    $day_short['english'] = array('Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat',);

    $day_full['thai'] = array('อาทิตย์', 'จันทร์', 'อังคาร', 'พุธ', 'พฤหัสบดี', 'ศุกร์', 'เสาร์',);
    $day_short['thai'] = array('อา.', 'จ.', 'อ.', 'พ.', 'พฤ.', 'ศ.', 'ส.',);

    if (!$full_name) {
        $lang = isset($day_short[$get_lang]) ? $get_lang : 'english';

        return isset($day_short[$lang][$day_key]) ? $day_short[$lang][$day_key] : null;
    }

    $lang = isset($day_full[$get_lang]) ? $get_lang : 'english';

    return isset($day_full[$lang][$day_key]) ? $day_full[$lang][$day_key] : null;
}

// Convert a string to an array with multibyte string
function getMBStrSplit($string, $split_length = 1) {
    mb_internal_encoding('UTF-8');
    mb_regex_encoding('UTF-8');

    $split_length = ($split_length <= 0) ? 1 : $split_length;
    $mb_strlen = mb_strlen($string, 'utf-8');
    $array = array();
    $i = 0;

    while ($i < $mb_strlen) {
        $array[] = mb_substr($string, $i, $split_length);
        $i = $i + $split_length;
    }

    return $array;
}

// Get string length for Character Thai
function getStrLenTH($string) {
    $array = getMBStrSplit($string);
    $count = 0;

    foreach ($array as $value) {

        $ascii = ord(iconv("UTF-8", "TIS-620//IGNORE", $value));

        if (!( $ascii == 209 || ($ascii >= 212 && $ascii <= 218 ) || ($ascii >= 231 && $ascii <= 238 ))) {
            $count += 1;
        }
    }
    return $count;
}

// Get part of string for Character Thai
function getSubStrTH($string, $start, $length) {
    $length = ($length + $start) - 1;
    $array = getMBStrSplit($string);
    $count = 0;
    $return = "";

    for ($i = $start; $i < count($array); $i++) {
        $ascii = ord(iconv("UTF-8", "TIS-620//IGNORE", $array[$i]));

        if ($ascii == 209 || ($ascii >= 212 && $ascii <= 218 ) || ($ascii >= 231 && $ascii <= 238 )) {
            //$start++;
            $length++;
        }

        if ($i >= $start) {
            $return .= $array[$i];
        }

        if ($i >= $length) {
            break;
        }
    }

    if (!empty($return)) {
        $return = substr($return, 0, strripos($return, ' '));
        //$return = preg_replace('~\s+\S+$~', '', $return);
    }

    return $return;
}

//-- foods store image url
function url_imgfront_bssh($id, $url) {
    $id = isset($id) ? $id : null;
    $url = isset($url) ? $url : null;

    $default_img = base_url('uploads/icon/biz_img_front.png');

    if (!$id) {
        return $default_img;
    }

    return base_url($url);
}

//-- foods store image url
function url_imghead_bssh($id, $url) {
    $id = isset($id) ? $id : null;
    $url = isset($url) ? $url : null;

    $default_img = base_url('uploads/icon/biz_img_front.png');

    if (!$id) {
        return $default_img;
    }

    return base_url($url);
}

//-- foods store image url
function url_imglogo_bssh($id, $url) {
    $id = isset($id) ? $id : null;
    $url = isset($url) ? $url : null;

    $default_img = base_url('uploads/icon/biz_img_front.png');

    if (!$id) {
        return $default_img;
    }

    return base_url($url);
}

function get_language() {
    $ss_lang = isset($_SESSION['lang']) ? $_SESSION['lang'] : 'english';

    $set_lang = isset($_REQUEST['lang']) ? $_REQUEST['lang'] : $ss_lang;

    if (empty($_SESSION['lang'])) {
        $_SESSION['lang'] = $set_lang;
    }

    return $set_lang;
}

function asset_url($str = null) {
    $path = sprintf('asset/%s', $str);

    return base_url($path);
}

function jsprint($script) {
    return sprintf('<script tyle="text/javascript">%s</script>', $script);
}

function pagination_setup($find_total, $page, $limit) {
    $pag['current'] = (int) $page;
    $pag['total'] = (int) ceil($find_total / $limit);
    $pag['next'] = $page + 1;
    $pag['back'] = $page - 1;

    if ($pag['next'] > $pag['total']) {
        $pag['next'] = 0;
    }

    if ($pag['back'] < 0) {
        $pag['back'] = 0;
    }

    return $pag;
}

function time_ago($time_ago) {
    $seconds = TIME_NOW - strtotime($time_ago);
    $minutes = round($seconds / 60);
    $hours = round($seconds / 3600);
    $days = round($seconds / 86400);
    $weeks = round($seconds / 604800);
    $months = round($seconds / 2600640);
    $years = round($seconds / 31207680);
    // Seconds
    if ($seconds <= 60) {
        return "just now";
    }
    //Minutes
    else if ($minutes <= 60) {
        if ($minutes == 1) {
            return "1 minute ago";
        } else {
            return "$minutes minutes ago";
        }
    }
    //Hours
    else if ($hours <= 24) {
        if ($hours == 1) {
            return "1 hour ago";
        } else {
            return "$hours hrs ago";
        }
    }
    //Days
    else if ($days <= 7) {
        if ($days == 1) {
            return "yesterday";
        } else {
            return "$days days ago";
        }
    }
    //Weeks
    else if ($weeks <= 4.3) {
        if ($weeks == 1) {
            return "1 week ago";
        } else {
            return "$weeks weeks ago";
        }
    }
    //Months
    else if ($months <= 12) {
        if ($months == 1) {
            return "1 month ago";
        } else {
            return "$months months ago";
        }
    }
    //Years
    else {
        if ($years == 1) {
            return "4 year ago";
        } else {
            return "$years years ago";
        }
    }
}

function display_time_zone($time_zone, $date_time_input) {
    $tz_cal = substr($time_zone, 0, 1);
    $tz_arr = explode(':', ltrim($time_zone, $tz_cal));
    $tz_hh = isset($tz_arr[0]) ? intval($tz_arr[0]) : 0;
    $tz_mm = isset($tz_arr[1]) ? intval($tz_arr[1]) : 0;
    $tz_timestamp = ((3600 * $tz_hh) + (60 * $tz_mm));

    if ($tz_cal == '+') {
        $t_display = (strtotime($date_time_input) + $tz_timestamp);
    } else {
        $t_display = (strtotime($date_time_input) - $tz_timestamp);
    }

    return date("m/d/y h:i:s A", $t_display);
}
