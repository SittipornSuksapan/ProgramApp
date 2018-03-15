
<?php
$memh_email = isset($memh_email) ? $memh_email : '';
$memh_confirm_code = isset($memh_confirm_code) ? $memh_confirm_code : '';
$verify_link = site_url('accounts/pages/reset_password/?email=' . $memh_email . '&code=' . $memh_confirm_code);

$memh_lastname = isset($memh_lastname) ? $memh_lastname : '';
$memh_fullname = isset($memh_firstname) ? $memh_firstname . ' ' . $memh_lastname : '';
$memh_display = isset($memh_display) ? $memh_display : $memh_fullname;
?>

<h3>
    <?php echo $this->lang->line('mail_say_hi'); ?>,
    <?php echo $memh_display; ?>
</h3>

<p><?php echo$this->lang->line('mail_say_guide'); ?></p>

<div>
    <a href="<?php echo $verify_link; ?>"><i><?php echo $verify_link; ?></i></a>
</div>
