
<?php
$title = isset($title) ? $title . ' - ' . $this->lang->line('title') : $this->lang->line('title');

$current_url = isset($current_url) ? $current_url : base_url(uri_string());

//-- defined variables
$apps_name = 'cmnty_editor';

$login_user_id = $this->session->userdata($apps_name . '_uid');
$login_user_name = $this->session->userdata($apps_name . '_uname');
?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">

        <title><?php echo $title; ?></title>

        <meta name="author" content="ZiamThai Dev Team">


        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <meta http-equiv="Pragma" content="private">
        <meta http-equiv="Cache-Control" content="private, max-age=5400, pre-check=5400">
        <meta http-equiv="Expires" content="<?php echo date(DATE_RFC822, strtotime("+1 day")); ?>">

        <!-- Bootstrap core CSS -->
        <link href="<?php echo base_url('asset/bootstrap4/css/bootstrap.min.css'); ?>" rel="stylesheet" type="text/css"/>
        <link href="<?php echo base_url('asset/font-awesome/css/font-awesome.min.css'); ?>" rel="stylesheet" type="text/css"/>
        <link href="<?php echo base_url('asset/ziamthai/css/template_default.css?_=' . time()); ?>" rel="stylesheet">
        <link href="<?php echo base_url('asset/ziamthai/css/cmnty_editor.css?_=' . time()); ?>" rel="stylesheet">
        <script src="https://www.atlasestateagents.co.uk/javascript/tether.min.js" type="text/javascript"></script>
        <script src="<?php echo base_url('asset/ziamthai/js/jquery-3.1.1.min.js'); ?>" type="text/javascript"></script>
        <script src="<?php echo base_url('asset/bootstrap4/js/bootstrap.min.js'); ?>" type="text/javascript"></script>
        <script src="<?php echo base_url('asset/ziamthai/js/cmnty_editor/globals.js?_=' . time()); ?>" type="text/javascript"></script>
    </head>

    <body>

        <?php
        if (!$login_user_id) {
            echo $content;
        } else {
            ?>

            <div class="container" style="margin-bottom:20px;">

                <div class="col-xs-3"></div>

                <div class="col-xs-6" style="text-align:center;">
                    <a href="<?php echo base_url($apps_name); ?>">
                        <img src="<?php echo base_url('asset/ziamthai/img/logo.png'); ?>" class="img-fluid">
                    </a>
                </div>

                <div class="col-xs-3">
                    <button type="button" class="hidden-md-up btn btn-link btn-block" onclick="$('#layout_content').toggleClass('deactive');$('#layout_aside').toggleClass('active');">
                        <i class="fa fa-2x fa-ellipsis-v"></i>
                    </button>
                </div>

            </div>

            <div id="layout_panel" class="container">

                <div id="layout_content" class="col-xs-12 col-md-8 col-lg-9">
                    <?php echo $content; ?>
                </div>

                <div id="layout_aside" class="col-xs-12 col-md-4 col-lg-3">

                    <div class="card">
                        <div class="card-header" style="position:relative;">
                            <h1 style="margin:0;padding-right:36px;font-size:1.6em;">
                                <?php echo $login_user_name; ?>
                            </h1>
                            <a href="<?php echo base_url($apps_name . '/home/logout'); ?>" onclick="return confirm('<?php echo $this->lang->line('confirm_logout'); ?>');" class="btn btn-link" style="position:absolute;top:6px;right:0;">
                                <i class="fa fa-sign-out"></i>
                            </a>
                        </div>
                        <div class="card-block">

                        </div>
                    </div>

                </div>

            </div>

            <div class="container">
                <div class="col-xs-12" style="color:#444;font-size:0.8em;padding:15px;">
                    &copy;2016 ZiamThai Dev Team.
                </div>
            </div>
        <?php } ?>

    </body>
</html>

