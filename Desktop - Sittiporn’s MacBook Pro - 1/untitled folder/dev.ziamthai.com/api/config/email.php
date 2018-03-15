<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

/*
  | -------------------------------------------------------------------------
  | Email
  | -------------------------------------------------------------------------
  | This file lets you define parameters for sending emails.
  | Please see the user guide for info:
  |
  |	http://codeigniter.com/user_guide/libraries/email.html
  |
 */
$config['mailtype'] = 'html';
$config['charset'] = 'utf-8';
$config['newline'] = "\r\n";
$config['wordwrap'] = true;

$config['protocol'] = 'smtp';
//$config['smtp_host'] = 'ssl://smtp.googlemail.com';
//$config['smtp_port'] = 587;
$config['smtp_host'] = 'ssl://smtp.gmail.com';
$config['smtp_port'] = 465;
$config['smtp_user'] = 'ziamthai.com@gmail.com';
$config['smtp_pass'] = '1q2w3e4r!@#$';

$config['sender_name'] = 'ziamthai.com';
$config['sender_email'] = 'ziamthai.com@gmail.com';


/* End of file email.php */
/* Location: ./application/config/email.php */
