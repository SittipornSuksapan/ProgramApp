
<script src="<?php echo base_url('asset/ziamthai/js/accounts/login.js?_=' . time()); ?>" type="text/javascript"></script>

<div class="container" style="position:relative;">

    <div class="col-md-5 col-lg-5" align="center">

        <h4 style="margin-bottom:30px;"><?php echo $modal_login['header_login_social']; ?></h4>

        <a href="<?php echo site_url('accounts/fb_connect/do_login/?return_url=' . site_url()); ?>" class="btn btn-secondary" style="position:relative;display:block;width:90%;margin-bottom:10px;font-size:1.3em;padding:10px 15px;padding-left:30px;color:#fff;background:rgb(59,89,152);">
            <i class="fa fa-facebook-f" style="position:absolute;left:15px;top:10px;"></i>
            <?php echo $modal_login['btn_login_facebook']; ?>
        </a>

        <a href="<?php echo site_url('accounts/gg_connect/do_login/?return_url=' . site_url()); ?>" class="btn btn-secondary" style="position:relative;display:block;width:90%;font-size:1.3em;padding:10px 15px;padding-left:30px;color:#fff;background:#db4437;">
            <i class="fa fa-google" style="position:absolute;left:15px;top:10px;"></i>
            <?php echo $modal_login['btn_login_google']; ?>
        </a>

    </div>

    <div class="col-md-7 col-lg-7" align="center">
        <hr size="1" class="hidden-md-up visible">

        <h4 style="margin-bottom:30px;"><?php echo $modal_login['header_login_form']; ?></h4>

        <form id="login_form">

            <div class="form-group">
                <input class="form-control" type="email" name="m_user" placeholder="<?php echo $modal_login['placeholder_email']; ?>" style="padding:15px;border-radius: 6px 6px 0px 0px;">
                <input class="form-control" type="password" name="m_pass" placeholder="<?php echo $modal_login['placeholder_pass']; ?>" style="margin-top:-1px;padding:15px;border-radius: 0px 0px 6px 6px;">
            </div>

            <div class="form-group" align="left">
                <button class="btn btn-warning active" type="submit">
                    <?php echo $modal_login['btn_login_submit']; ?>
                </button>
                <a href="<?php echo site_url('accounts/pages/forgot_password'); ?>">
                    <?php echo $modal_login['link_forgot_pass']; ?>
                </a>
                <div id="login_result" class="alert alert-warning active" style="text-align:center;display:none;margin-top:10px;"></div>
            </div>

            <div class="form-group" align="left">
                <hr size="1">
                <strong><?php echo $modal_login['header_no_accounts']; ?></strong>
                <a href="<?php echo site_url('accounts/pages/signup'); ?>">
                    <?php echo $modal_login['link_signup']; ?>
                </a>
            </div>

        </form>

    </div>

</div>
