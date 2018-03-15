
<script src="<?php echo asset_url('zth-food/js/accounts/signup.js?_=' . time()); ?>" type="text/javascript"></script>

<?php
$fb_signup_return = site_url('accounts/pages/signup');
$fb_name = isset($_SESSION['fb_name']) ? explode(' ', $_SESSION['fb_name']) : null;
$fb_firstname = isset($fb_name[0]) ? $fb_name[0] : null;
$fb_lastname = isset($fb_name[1]) ? $fb_name[1] : null;
$fb_firstname_val = isset($_SESSION['fb_firstname']) ? $_SESSION['fb_firstname'] : $fb_firstname;
$fb_lastname_val = isset($_SESSION['fb_lastname']) ? $_SESSION['fb_lastname'] : $fb_lastname;
?>

<div class="container" style="position:relative;padding-top:40px;min-height:480px;">

    <div class="col-md-6 col-lg-5" align="center">

        <h2 style="margin-bottom:30px;"><?php echo $this->lang->line('header_form'); ?></h2>

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

        <div id="signup_result" class="alert alert-danger" style="text-align:center;display:none;margin-top:10px;font-weight:bold;"></div>

        <form id="signup_form">

            <input type="hidden" name="m_fb_id"  value="<?php
            if (!empty($_SESSION['fb_id'])) {
                echo $_SESSION['fb_id'];
            }
            ?>">

            <input type="hidden" name="m_gg_id"  value="<?php
            if (!empty($_SESSION['gg_id'])) {
                echo $_SESSION['gg_id'];
            }
            ?>">

            <div class="form-group">
                <input class="form-control" type="text" name="m_firstname" placeholder="<?php echo $this->lang->line('placeholder_firstname'); ?>" style="padding:15px;border-radius: 6px 6px 0px 0px;" value="<?php
                if (!empty($fb_firstname_val)) {
                    echo $fb_firstname_val;
                }
                ?>">
                <input class="form-control" type="text" name="m_lastname" placeholder="<?php echo $this->lang->line('placeholder_lastname'); ?>" style="margin-top:-1px;padding:15px;border-radius: 0px 0px 6px 6px;" value="<?php
                if (!empty($fb_lastname_val)) {
                    echo $fb_lastname_val;
                }
                ?>">
            </div>

            <div class="form-group">
                <input class="form-control" type="email" name="m_email" placeholder="<?php echo $this->lang->line('placeholder_email'); ?>" style="padding:15px;" value="<?php
                if (!empty($_SESSION['fb_email'])) {
                    echo $_SESSION['fb_email'];
                } else if (!empty($_SESSION['gg_email'])) {
                    echo $_SESSION['gg_email'];
                }
                ?>">
            </div>

            <div class="form-group">
                <input class="form-control" type="password" name="m_pass1" placeholder="<?php echo $this->lang->line('placeholder_pass'); ?>" style="padding:15px;border-radius: 6px 6px 0px 0px;">
                <input class="form-control" type="password" name="m_pass2" placeholder="<?php echo $this->lang->line('placeholder_pass_confirm'); ?>" style="margin-top:-1px;padding:15px;border-radius: 0px 0px 6px 6px;">
            </div>

            <div class="form-group" align="left">
                <button class="btn btn-success active" type="submit" style="font-weight:bold;font-size:1.6em;">
                    <?php echo $this->lang->line('btn_signup'); ?>
                </button>
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
