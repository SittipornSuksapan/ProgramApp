<div style="margin:auto;width:640px;">

    <div style="margin-bottom:30px;padding:15px;border-bottom:solid 2px #036;text-align:center;background:#3b5998;border-radius:16px 16px 0px 0px;">
        <a href="<?php echo base_url('index.php'); ?>">
            <img src="<?php echo base_url('asset/ziamthai/img/logo.png'); ?>">
        </a>
    </div>

    <h1 align="center" style="margin:0;">
        <?php echo $mail_subject; ?>
    </h1>

    <div style="padding:15px;">
        <?php echo $mail_message; ?>
    </div>

    <div style="margin-top:30px;padding:15px;border:solid 1px #ddd;border-top:double 2px #3b5998;background-color:#eaeaea;font-size:0.8em;color:#333;border-radius: 0px 0px 16px 16px;">
        <span>&copy;2016</span>
        <a href="<?php echo base_url(); ?>" style="text-decoration:none;">
            <?php echo base_url(); ?>
        </a>
    </div>

</div>