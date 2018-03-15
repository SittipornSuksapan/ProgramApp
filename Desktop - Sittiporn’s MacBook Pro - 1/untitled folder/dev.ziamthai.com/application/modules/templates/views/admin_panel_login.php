
<?php
$login_url = isset($login_url) ? $login_url : site_url('admin_panel/login/form_valid');
?>

<script src="<?php echo base_url('asset/ziamthai/js/admin_panel/form_login.js'); ?>" type="text/javascript"></script>

<div class="container">
    <div class="push-md-3 col-md-6 push-lg-4 col-lg-4">

        <form id="login_form" class="card" data-login-url="<?php echo $login_url; ?>">
            <div class="card-header text-md-left text-xs-center">
                <h1 style="font-size:1.6em;margin:0;">
                    <i class="fa fa-user"></i>
                    <?php echo $this->lang->line('page_title'); ?>
                </h1>
            </div>
            <div class="card-block">

                <div class="form-group">
                    <label class="form-control-label">
                        <?php echo $this->lang->line('label_user_email'); ?>
                    </label>
                    <input name="log_email" type="email" class="form-control" placeholder="<?php echo $this->lang->line('placeholder_user_email'); ?>" autofocus="on" autocomplete="off">
                </div>

                <div class="form-group">
                    <label class="form-control-label">
                        <?php echo $this->lang->line('label_user_password'); ?>
                    </label>
                    <input name="log_pass" type="password" class="form-control" placeholder="<?php echo $this->lang->line('placeholder_user_password'); ?>">
                </div>

                <div id="login_result" class="alert alert-warning" style="display:none;text-align:center;"></div>

            </div>
            <div class="card-footer text-md-right text-xs-center">
                <button type="submit" class="btn btn-primary">
                    <i class="fa fa-sign-in"></i>
                    <span><?php echo $this->lang->line('label_btn_login'); ?></span>
                </button>
            </div>
        </form>

    </div>
</div>

