
<script src="<?php echo asset_url('zth-food/js/accounts/cfmemail.js?_=' . time()); ?>" type="text/javascript"></script>

<?php
$get_email_accounts = isset($_GET['email']) ? $_GET['email'] : '';
$get_email_code = isset($_GET['code']) ? $_GET['code'] : '';
?>

<div class="container" style="position:relative;padding-top:40px;min-height:480px;">

    <div class="col-md-6 col-lg-5" align="center">

        <h2 style="margin-bottom:30px;"><?php echo $this->lang->line('page_title'); ?></h2>

        <div id="cfmemail_result" class="alert alert-danger" style="text-align:center;display:none;margin-top:10px;font-weight:bold;"></div>

        <form id="cfmemail_form">

            <div class="form-group">

                <input class="form-control" type="email" name="m_user" placeholder="<?php echo $this->lang->line('placeholder_email'); ?>" style="padding:15px;border-radius: 6px 6px 0px 0px;" value="<?php echo $get_email_accounts; ?>" autofocus>

                <input class="form-control" type="text" name="m_code" placeholder="<?php echo $this->lang->line('placeholder_code'); ?>" style="padding:15px;margin-top:-1px;border-radius: 0px 0px 6px 6px;" value="<?php echo $get_email_code; ?>">

            </div>

            <div class="form-group" align="left">
                <button class="btn btn-success active" type="submit" style="font-weight:bold;font-size:1.6em;">
                    <?php echo $this->lang->line('btn_submit'); ?>
                </button>
                <button type="button" id="cfmemail_resend" class="btn btn-link">
                    <?php echo $this->lang->line('link_resend_code'); ?>
                </button>
            </div>

            <div class="form-group" align="left">
                <strong><?php echo $this->lang->line('link_no_accounts'); ?></strong>
                <a href="<?php echo site_url('accounts/pages/signup'); ?>">
                    <?php echo $this->lang->line('btn_signup'); ?>
                </a>
            </div>

            <div class="form-group" align="left">
                <strong><?php echo $this->lang->line('link_has_accounts'); ?></strong>
                <a href="<?php echo site_url('accounts/pages/login'); ?>">
                    <?php echo $this->lang->line('btn_login'); ?>
                </a>
            </div>

        </form>

    </div>

    <div class="col-md-1 col-lg-1">&nbsp;</div>

    <div class="col-md-5 col-lg-5" align="center">

        <hr size="1" class="hidden-md-up visible">

        <h2 style="margin-bottom:30px;"><?php echo $this->lang->line('header_social'); ?></h2>

        <a href="<?php echo site_url('accounts/fb_connect/do_login'); ?>" class="btn btn-secondary" style="position:relative;display:block;width:80%;margin-bottom:10px;font-size:1.3em;padding:10px 15px;padding-left:30px;color:#fff;background:rgb(59,89,152);">
            <i class="fa fa-facebook-f" style="position:absolute;left:15px;top:10px;"></i>
            <?php echo $this->lang->line('btn_facebook'); ?>
        </a>

        <a href="<?php echo site_url('accounts/gg_connect/do_login'); ?>" class="btn btn-secondary" style="position:relative;display:block;width:80%;font-size:1.3em;padding:10px 15px;padding-left:30px;color:#fff;background:#db4437;">
            <i class="fa fa-google" style="position:absolute;left:15px;top:10px;"></i>
            <?php echo $this->lang->line('btn_google'); ?>
        </a>

    </div>

</div>

