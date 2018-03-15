
<?php
//-- defined template variables
$nav_menu = $this->lang->line('tpl_navbar');
$modal_login = $this->lang->line('modal_login');

$title = isset($title) ? $title . ' - ' . $this->lang->line('title') : $this->lang->line('title');
$content = isset($content) ? $content : null;
$keywords = isset($keywords) ? $keywords : null;
$description = isset($description) ? $description : null;
$navbar = isset($navbar) ? $navbar : null;
$current_url = isset($current_url) ? $current_url : base_url(uri_string());
$thumbnail_url = isset($thumbnail_url) ? $thumbnail_url : base_url('asset/img/logo.png');

//-- defined login user variables
$login_status = isset($_SESSION['login_status']) ? $_SESSION['login_status'] : false;
$login_display = isset($_SESSION['memh_display']) ? $_SESSION['memh_display'] : null;

if (empty($login_display)) {
    $login_display = isset($_SESSION['memh_firstname']) ? $_SESSION['memh_firstname'] : $nav_menu['my_accounts'];
}
?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">

        <title><?php echo $title; ?></title>

        <meta name="description" content="<?php echo $description; ?>">
        <meta name="keywords" content="<?php echo $keywords; ?>">
        <meta name="author" content="ZiamThai Dev Team">
        <meta name="robots" content="index,follow" />

        <meta property="og:type" content="website"/>
        <meta property="og:title" content="<?php echo $title; ?>" />
        <meta property="og:description" content="<?php echo $description; ?>" />
        <meta property="og:url" content="<?php echo $current_url; ?>" />
        <meta property="og:image" content="<?php echo $thumbnail_url; ?>"/>

        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        
        <meta http-equiv="Pragma" content="private">
        <meta http-equiv="Cache-Control" content="private, max-age=5400, pre-check=5400">
        <meta http-equiv="Expires" content="<?php echo date(DATE_RFC822, strtotime("+1 day"));   ?>">

        <!-- Bootstrap core CSS -->
        <link href="<?php echo base_url('asset/bootstrap4/css/bootstrap.min.css'); ?>" rel="stylesheet" type="text/css"/>
        <link href="<?php echo base_url('asset/font-awesome/css/font-awesome.min.css'); ?>" rel="stylesheet" type="text/css"/>
        <link href="<?php echo base_url('asset/ziamthai/css/template_default.css?_=' . time()); ?>" rel="stylesheet">
        <script src="https://www.atlasestateagents.co.uk/javascript/tether.min.js" type="text/javascript"></script>
        <script src="<?php echo base_url('asset/ziamthai/js/jquery-3.1.1.min.js'); ?>" type="text/javascript"></script>
        <script src="<?php echo base_url('asset/bootstrap4/js/bootstrap.min.js'); ?>" type="text/javascript"></script>
        <script src="<?php echo base_url('asset/ziamthai/js/globals.js?_=' . time()); ?>" type="text/javascript"></script>
    </head>

    <body>

        <nav class="navbar navbar-light navbar-fixed-top bg-primary" style="padding-left:0px;padding-right:0px;">

            <div class="container" style="padding:0;">
                <div class="col-xs-3 col-sm-3 hidden-md-up visible">
                    <button onclick="tpl_nav_ussb('show');" class="btn btn-link" style="color:#fff;font-size:1.3em;">
                        <i class="fa fa-bars"></i>
                    </button>
                </div>

                <div class="navbar-logo-box col-xs-6 col-sm-6 col-md-2" style="position:relative;">
                    <a href="<?php echo base_url(); ?>" style="position:absolute;top:-5px;left:0;width:100%;">
                        <img src="<?php echo base_url('asset/ziamthai/img/logo.png'); ?>" style="margin:auto;width:auto;height:48px;" />
                    </a>
                </div>

                <div class="col-xs-3 col-sm-3 col-md-7">

                </div>

                <div id="tpl_nav_ussb_box" class="col-xs-12 col-sm-2 col-md-3">

                    <a href="#" class="navbar-btn-login dropdown-toggle hidden-sm-down" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="fa fa-user-circle"></i>
                        <span class="hidden-sm-down"><?php echo $login_display; ?></span>
                    </a>

                    <div id="tpl_nav_ussb_head" style="display:none;">
                        <a href="<?php echo base_url(); ?>">
                            <img src="<?php echo base_url('asset/ziamthai/img/logo.png'); ?>" style="width:auto;height:48px;" />
                        </a>
                        <button id="tpl_nav_ussb_close" onclick="tpl_nav_ussb('hide');" type="button" class="btn btn-link">
                            <i class="fa fa-close"></i>
                        </button>
                    </div>

                    <div id="tpl_nav_ussb_menu" class="dropdown-menu dropdown-menu-right">
                        <?php if (!$login_status) { ?>
                            <a class="btn btn-warning" href="#" data-toggle="modal" data-target="#loginModal" style="display:block;margin:auto;width:90%;">
                                <?php echo $nav_menu['link_login']; ?>
                            </a>
                        <?php } else { ?>
                            <a class="btn btn-secondary" href="<?php echo site_url('accounts/pages/my'); ?>" style="display:block;margin:auto;width:90%;">
                                <?php echo $nav_menu['my_accounts']; ?>
                            </a>
                            <a class="btn btn-secondary" href="<?php echo site_url('accounts/pages/logout'); ?>" style="display:block;margin:auto;width:90%;">
                                Logout
                            </a>
                        <?php } ?>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="<?php echo site_url(); ?>">
                            <i class="fa fa-home"></i>
                            <?php echo $nav_menu['link_home']; ?>
                        </a>
                    </div>

                </div>

            </div>
        </nav> <!-- /navbar -->

        <div id="tpl_content">
            <?php echo $content; ?>
        </div>

        <div id="tpl_footer">
            &copy;2016 <a href="<?php echo base_url(); ?>">ZiamThai</a>
        </div>

        <!-- Modal -->
        <div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-body" style="position:relative;">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close" style="z-index:1000;position:absolute;top:15px;right:15px;">
                            <span aria-hidden="true">&times;</span>
                        </button>
                        <?php include ROOT_PATH . '/application/modules/templates/views/modal_login.php'; ?>
                    </div>
                </div>
            </div>
        </div>
        
        <!-- JS function-->
        <script src="<?php echo base_url('asset/ziamthai/js/functions.js?_=' . time()); ?>" type="text/javascript"></script>

    </body>
</html>

