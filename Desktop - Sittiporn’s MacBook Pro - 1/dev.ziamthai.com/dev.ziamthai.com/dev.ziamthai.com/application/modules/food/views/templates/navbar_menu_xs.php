
<div class="row hidden-md-up">

    <div class="col-xs-12 text-xs-center" style="padding:15px;">
        <a href="<?php echo site_url($access_module); ?>" title="ZiamThai Foods">
            <img src="<?php echo base_url('asset/ziamthai/img/logo_ziamfood.png'); ?>" alt="ZiamThai Foods" class="img-fluid" style="max-height:64px;" />
        </a>
    </div>

    <div class="col-xs-12">
        <div class="btn-group btn-group-vertical btn-block">

            <?php if (empty($access_user['id'])) { ?>
                <a href="#" class="btn btn-secondary text-pink" data-toggle="modal" data-target="#login_modal">
                    <i class="fa fa-user-circle" style="font-size:1.3em;line-height:1.2em;"></i>
                    <span style="font-size:1.2em;line-height:1em;"><?php echo $lang_navbar['link_login']; ?></span>
                </a>
            <?php } else { ?>
                <a class="btn btn-secondary text-pink" href="<?php echo site_url('accounts/pages/my'); ?>" style="position:relative;padding-left:36px;text-align:left;">
                    <img src="<?php echo site_url('uploads/user_photo/thumb/' . $access_user['id']); ?>" style="position:absolute;top:2px;left:2px;width:32px;height:auto;"></i>
                    <span style="font-size:1.2em;line-height:1.3em;"><?php echo $access_user['name']; ?></span>
                </a>
                <a class="btn btn-secondary" href="<?php echo site_url('accounts/pages/logout'); ?>" style="text-align:left;">
                    <?php echo $lang_navbar['link_logout']; ?>
                </a>
            <?php } ?>

            <!--div class="btn-group">
                <button class="btn btn-secondary dropdown-toggle" type="button" data-toggle="dropdown" style="">
                    <i class="fa fa-globe" style="color:#3b5998;font-size:1.3em;line-height:1.2em;"></i>
                </button>
                <div class="dropdown-menu dropdown-menu-right">
                    <a class="dropdown-item" href="<?php echo site_url($access_module . '/home/switch_language/english/?return_url=' . $current_url) ?>">English</a>
                    <a class="dropdown-item" href="<?php echo site_url($access_module . '/home/switch_language/thai/?return_url=' . $current_url) ?>">ภาษาไทย</a>
                </div>
            </div-->

        </div>
    </div>

    <div class="col-xs-12">
        <hr size="1">

        <div style="margin-bottom:5px;font-size:0.8em;">
            <a class="text-gray" href="<?php echo site_url('accounts/pages/user_account_policy'); ?>">User Account policy</a>
            <span class="text-gray">|</span>
            <a class="text-gray" href="<?php echo site_url('accounts/pages/terms_of_use'); ?>">Terms of use</a>
        </div>
        <h6>
            &copy;2016
            <a href="<?php echo site_url($access_module); ?>">
                <?php echo ucfirst($access_module); ?>
            </a>
            <span>by</span>
            <a href="<?php echo base_url(); ?>">
                Ziam Thai
            </a>
        </h6>
    </div>

</div>
