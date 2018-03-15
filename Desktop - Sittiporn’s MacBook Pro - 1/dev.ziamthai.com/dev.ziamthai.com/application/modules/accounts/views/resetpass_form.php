
<div class="container" style="position:relative;padding-top:40px;min-height:480px;">

    <div class="col-md-6 col-lg-5" align="center">

        <?php
        if (isset($check_result['error'])) {
            echo '<h2 style="margin:60px auto;">' . $check_result['message'] . '</h2>';
            echo '<a href="' . site_url('accounts/pages/forgot_password') . '" style="font-size:1.3em;color:#f30;">' . $this->lang->line('link_forgot_password') . '</a>';
        } else {
            ?>
            <script src="<?php echo asset_url('zth-food/js/accounts/resetpass.js?_=' . time()); ?>" type="text/javascript"></script>

            <h2 style="margin-bottom:30px;"><?php echo $this->lang->line('page_title'); ?></h2>

            <div id="resetpass_result" class="alert alert-danger" style="text-align:center;display:none;margin-top:10px;font-weight:bold;"></div>

            <form id="resetpass_form">
                <input type="hidden" name="m_user" value="<?php echo $check_result['email']; ?>">
                <input type="hidden" name="m_code" value="<?php echo $check_result['code']; ?>">

                <div class="form-group">
                    <input class="form-control" type="password" name="m_pass1" placeholder="<?php echo $this->lang->line('placeholder_pass'); ?>" style="padding:15px;border-radius: 6px 6px 0px 0px;" autofocus>
                    <input class="form-control" type="password" name="m_pass2" placeholder="<?php echo $this->lang->line('placeholder_pass_confirm'); ?>" style="margin-top:-1px;padding:15px;border-radius: 0px 0px 6px 6px;">
                </div>

                <div class="form-group" align="left">
                    <button class="btn btn-success active" type="submit" style="font-weight:bold;font-size:1.6em;">
                        <?php echo $this->lang->line('btn_submit'); ?>
                    </button>
                </div>

            </form>
        <?php } ?>

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

