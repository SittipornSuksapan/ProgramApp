<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Testmail extends CI_Controller {

    private $access_module, $access_lang, $access_user;

    public function __construct() {
        parent:: __construct();
    }

    public function index() {
        $refer_url = 'Send Mail : ' . base_url();

        $to = $this->input->post('mail_to', null);
        $subject = $this->input->post('mail_subject', null);
        $message = $this->input->post('mail_message', null);

        echo '<h1>' . $refer_url . '</h1>';

        if (empty($to) || empty($subject) || empty($message)) {
            $this->load->helper('form');

            echo form_open('food/testmail/index', ['type' => 'POST']);

            echo form_input([
                'name' => 'mail_to',
                'type' => 'email',
                'value' => $to,
                'autofocus' => 'autofocus',
                'placeholder' => 'E-Mail Address',
                'style' => 'display:block;margin-bottom:10px;padding:4px 8px;font-size:1.1em;'
            ]);
            if (isset($_POST['mail_submit']) && empty($to)) {
                echo '<div style="margin-top:-10px;margin-bottom:10px;color:red;font-size:0.9em;">Put your e-mail address.</div>';
            }

            echo form_input([
                'name' => 'mail_subject',
                'type' => 'text',
                'value' => $subject,
                'placeholder' => 'Subject',
                'style' => 'display:block;margin-bottom:10px;padding:4px 8px;font-size:1.1em;'
            ]);
            if (isset($_POST['mail_submit']) && empty($subject)) {
                echo '<div style="margin-top:-10px;margin-bottom:10px;color:red;font-size:0.9em;">Put your subject.</div>';
            }

            echo form_textarea([
                'name' => 'mail_message',
                'placeholder' => 'Message',
                'rows' => 4,
                'style' => 'display:block;margin-bottom:10px;padding:4px 8px;font-size:1.1em;'
                    ], $message);
            if (isset($_POST['mail_submit']) && empty($message)) {
                echo '<div style="margin-top:-10px;margin-bottom:10px;color:red;font-size:0.9em;">Put your message.</div>';
            }

            echo form_button([
                'type' => 'submit',
                'name' => 'mail_submit',
                'style' => 'padding:4px 8px;font-size:1.1em;'
                    ], 'Send');

            echo '<a href="' . site_url('food/testmail') . '">Refresh</a>';
            echo form_close();

            exit();
        }

        if (!empty($to) && !filter_var($to, FILTER_VALIDATE_EMAIL)) {
            echo '<div style="margin-top:-10px;margin-bottom:10px;color:red;font-size:0.9em;">Invalid your email address format.</div>';
            echo '<a href="javascript:history.back();">Back</a>';
            exit();
        }

        $this->load->config('email');
        $this->load->library('email');

        $this->email->initialize();
        $this->email->clear();
        $this->email->from($this->config->item('sender_email'), $this->config->item('sender_name'));
        $this->email->to($to);
        $this->email->subject($subject);
        $this->email->message($refer_url . '<hr>' . $message);
        $result = $this->email->send();

        if ($result) {
            echo '<h3>Send mail complete.</h3>';
            echo '<a href="' . site_url('food/testmail') . '">Back</a>';
        }
    }

}
