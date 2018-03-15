
<?php
$memh_email = isset($memh_email) ? $memh_email : '';
$memh_confirm_code = isset($memh_confirm_code) ? $memh_confirm_code : '';
$verify_link = site_url('accounts/pages/confirm_email/?email=' . $memh_email . '&code=' . $memh_confirm_code);

$memh_lastname = isset($memh_lastname) ? $memh_lastname : '';
$memh_fullname = isset($memh_firstname) ? $memh_firstname . ' ' . $memh_lastname : '';
$memh_display = isset($memh_display) ? $memh_display : $memh_fullname;
?>

<h3>
    <?php echo $this->lang->line('mail_say_hi'); ?>,
    <?php echo $memh_display; ?>
</h3>

<p><?php echo$this->lang->line('mail_say_welcome'); ?></p>

<?php if (!empty($memh_pass_human)) { ?>
    <div style="padding-top:15px;padding-bottom:15px;">
        <label style="font-size:1.1em;font-weight:bold;"><?php echo $this->lang->line('mail_label_password'); ?></label>
        <div style="font-weight:bold;color:#f30;"><?php echo $memh_pass_human; ?></div>
    </div>
<?php } ?>

<?php if (!empty($memh_confirm_code)) { ?>
    <div style="padding-top:15px;padding-bottom:15px;">
        <label style="font-size:1.1em;font-weight:bold;"><?php echo $this->lang->line('mail_label_confirm_code'); ?></label>
        <div style="font-weight:bold;color:#f30;"><?php echo $memh_confirm_code; ?></div>
    </div>
<?php } ?>

<p>
    <strong><?php echo $this->lang->line('header_verify_link'); ?></strong>
</p>

<div>
    <a href="<?php echo $verify_link; ?>"><i><?php echo $verify_link; ?></i></a>
</div>
