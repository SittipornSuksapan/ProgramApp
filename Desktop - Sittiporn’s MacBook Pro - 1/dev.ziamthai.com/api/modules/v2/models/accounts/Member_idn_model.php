<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Member_idn_model extends CI_Model {

    function __construct() {
        parent:: __construct();
    }

    public function idn_generator($params) {//params => array[ id *int, created_date *Y-m-d ]
        $get_id = isset($params['id']) ? intval($params['id']) : 0;

        if (empty($get_id)) {
            return null;
        }

        $get_year = isset($params['created_date']) ? date('y', strtotime($params['created_date'])) : date('y');
        $idn_key = (intval($get_year) * $get_id);
        $chk_digit = $get_id % $idn_key;
        $idn_no = sprintf('01%s%08d%s', $get_year, $get_id, substr($chk_digit,0,1));

        unset($get_id, $get_year, $idn_key, $chk_digit);

        return $idn_no;
    }

    public function idn_barcode_img($idn_no) {
        if (empty($idn_no)) {
            header("Content-Type: image/png");
            readfile(ROOT_PATH . '/uploads/icon/users_256.png');
            exit();
        }

        $idn_barcode_file = sprintf('%s/%s/%s.png', ROOT_PATH, PATH_USER_BARCODE, $idn_no);

        if (file_exists($idn_barcode_file)) {
            header('Content-Type: image/png');
            readfile($idn_barcode_file);
            exit();
        }

        $bcgen_lib = ROOT_PATH . '/library/barcodegen/';

        // Including all required classes
        require_once($bcgen_lib . 'class/BCGFontFile.php');
        require_once($bcgen_lib . 'class/BCGColor.php');
        require_once($bcgen_lib . 'class/BCGDrawing.php');
        require_once($bcgen_lib . 'class/BCGcode128.barcode.php');

        $font = new BCGFontFile($bcgen_lib . 'font/Arial.ttf', 18);
        $colorFront = new BCGColor(0, 0, 0);
        $colorBack = new BCGColor(255, 255, 255);

        // Barcode Part
        $code = new BCGcode128();
        $code->setScale(2);
        $code->setThickness(30);
        $code->setForegroundColor($colorFront);
        $code->setBackgroundColor($colorBack);
        $code->setFont($font);
        $code->setStart(NULL);
        $code->setTilde(true);
        $code->parse($idn_no);

        // Drawing Part
        $drawing = new BCGDrawing($idn_barcode_file, $colorBack);
        $drawing->setBarcode($code);
        $drawing->draw();

        header('Content-Type: image/png');

        $drawing->finish(BCGDrawing::IMG_FORMAT_PNG);

        readfile($idn_barcode_file);
    }

}
