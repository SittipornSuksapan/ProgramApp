
<?php
$fb_signup_return = site_url('accounts/pages/login');
$fb_name = isset($_SESSION['fb_name']) ? explode(' ', $_SESSION['fb_name']) : null;
$fb_firstname = isset($fb_name[0]) ? $fb_name[0] : null;
$fb_lastname = isset($fb_name[1]) ? $fb_name[1] : null;
$fb_firstname_val = isset($_SESSION['fb_firstname']) ? $_SESSION['fb_firstname'] : $fb_firstname;
$fb_lastname_val = isset($_SESSION['fb_lastname']) ? $_SESSION['fb_lastname'] : $fb_lastname;
?>

<script src="<?php echo asset_url('zth-food/js/accounts/login.js?_=' . TIME_NOW); ?>" type="text/javascript"></script>

<div class="container" style="position:relative;padding-top:40px;min-height:480px;">

    <div class="col-md-6 col-lg-5" align="center">

        <h2 style="margin-bottom:30px;"><?php echo $this->lang->line('header_form_login'); ?></h2>

        <?php if (!empty($_SESSION['fb_id'])) { ?>
            <div class="container" style="margin-bottom:10px;">
                <p align="center">
                    <img src="<?php echo 'http://graph.facebook.com/' . $_SESSION['fb_id'] . '/picture?type=large'; ?>" class="img-fluid img-thumbnail">
                </p>
                <div>
                    <a href="<?php echo site_url('accounts/fb_connect/do_logout/?return_url=' . $fb_signup_return); ?>">
                        <?php echo $this->lang->line('not_my_facebook_accounts'); ?>
                    </a>
                </div>
            </div>
        <?php } ?>

        <div id="login_pg_result" class="alert alert-danger" style="text-align:center;display:none;margin-top:10px;font-weight:bold;"></div>

        <form id="login_pg_form">
            <input type="hidden" name="login_return_url" value="<?php
            if (!empty($_SESSION['login_return_url'])) {
                echo $_SESSION['login_return_url'];
            }
            ?>">

            <div class="form-group">
                <?php if (!empty($_SESSION['fb_id'])) { ?>
                    <input class="form-control" type="hidden" name="m_user" value="<?php echo $_SESSION['fb_id']; ?>">
                <?php } else { ?>
                    <input class="form-control" type="email" name="m_user" placeholder="<?php echo $this->lang->line('placeholder_email'); ?>" style="padding:15px;border-radius: 6px 6px 0px 0px;" value="<?php
                    if (!empty($_SESSION['fb_email'])) {
                        echo $_SESSION['fb_email'];
                    }
                    ?>">
                       <?php } ?>
                <input class="form-control" type="password" name="m_pass" placeholder="<?php echo $this->lang->line('placeholder_pass_confirm'); ?>" style="padding:15px;<?php
                if (empty($_SESSION['fb_email'])) {
                    echo 'margin-top:-1px;border-radius: 0px 0px 6px 6px;';
                }
                ?>">
            </div>

            <div class="form-group" align="left">
                <button class="btn btn-success active" type="submit" style="font-weight:bold;font-size:1.6em;">
                    <?php echo $this->lang->line('btn_login'); ?>
                </button>
                <a href="<?php echo site_url('accounts/pages/forgot_password'); ?>">
                    <?php echo $this->lang->line('link_forgot_password'); ?>
                </a>
            </div>

            <div class="form-group" align="left">
                <strong><?php echo $this->lang->line('link_no_accounts'); ?></strong>
                <a href="<?php echo site_url('accounts/pages/signup'); ?>">
                    <?php echo $this->lang->line('btn_signup'); ?>
                </a>
            </div>

        </form>

    </div>

    <div class="col-md-1 col-lg-1">&nbsp;</div>

    <div class="col-md-5 col-lg-5" align="center">
        <hr size="1" class="hidden-md-up visible">

        <h2 style="margin-bottom:30px;"><?php echo $this->lang->line('header_social'); ?></h2>

        <a href="<?php echo site_url('accounts/fb_connect/do_login?return_url=' . $fb_signup_return); ?>" class="btn btn-secondary" style="position:relative;display:block;width:80%;margin-bottom:10px;font-size:1.3em;padding:10px 15px;padding-left:30px;color:#fff;background:rgb(59,89,152);">
            <i class="fa fa-facebook-f" style="position:absolute;left:15px;top:10px;"></i>
            <?php echo $this->lang->line('btn_facebook'); ?>
        </a>

        <a href="<?php echo site_url('accounts/gg_connect/do_login?return_url=' . $fb_signup_return); ?>" class="btn btn-secondary" style="position:relative;display:block;width:80%;font-size:1.3em;padding:10px 15px;padding-left:30px;color:#fff;background:#db4437;">
            <i class="fa fa-google" style="position:absolute;left:15px;top:10px;"></i>
            <?php echo $this->lang->line('btn_google'); ?>
        </a>

    </div>
</div>
