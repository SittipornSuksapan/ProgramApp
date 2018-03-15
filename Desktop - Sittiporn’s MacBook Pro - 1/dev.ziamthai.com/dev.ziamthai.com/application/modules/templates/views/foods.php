
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
$login_status = $this->session->has_userdata('login_status');
$login_id = isset($_SESSION['memh_id']) ? $_SESSION['memh_id'] : 0;
$login_display = isset($_SESSION['memh_display']) ? $_SESSION['memh_display'] : null;
$login_email = isset($_SESSION['memh_email']) ? $_SESSION['memh_email'] : null;

if (empty($login_display)) {
    $login_display = isset($_SESSION['memh_firstname']) ? $_SESSION['memh_firstname'] : $nav_menu['my_accounts'];
}

$search_q = isset($_GET['q']) ? $_GET['q'] : '';
$search_loc = isset($_GET['loc']) ? $_GET['loc'] : '';
$search_pos = isset($_GET['pos']) ? $_GET['pos'] : '';
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
        <meta http-equiv="Expires" content="<?php echo date(DATE_RFC822, strtotime("+1 day")); ?>">

        <!-- CSS -->
        <link href="<?php echo base_url('asset/bootstrap4/css/bootstrap.min.css'); ?>" rel="stylesheet" type="text/css"/>
        <link href="<?php echo base_url('asset/font-awesome/css/font-awesome.min.css'); ?>" rel="stylesheet" type="text/css"/>
        <link href="<?php echo base_url('asset/ziamthai/css/template_default.css?_=' . time()); ?>" rel="stylesheet">
        <link href="<?php echo base_url('asset/ziamthai/css/template_foods.css?_=' . time()); ?>" rel="stylesheet">

        <!-- JS -->
        <script src="https://www.atlasestateagents.co.uk/javascript/tether.min.js" type="text/javascript"></script>
        <script src="<?php echo base_url('asset/ziamthai/js/jquery-3.1.1.min.js'); ?>" type="text/javascript"></script>
        <script src="<?php echo base_url('asset/bootstrap4/js/bootstrap.min.js'); ?>" type="text/javascript"></script>
        <script src="<?php echo base_url('asset/js-libs/masonry.pkgd.min.js'); ?>" type="text/javascript"></script>
        <script src="<?php echo base_url('asset/ziamthai/js/jquery.sticky-kit.min.js?_=' . time()); ?>" type="text/javascript"></script>
        <script src="<?php echo base_url('asset/ziamthai/js/globals.js?_=' . time()); ?>" type="text/javascript"></script>
        <script src="<?php echo base_url('asset/ziamthai/js/foods/templates.js?_=' . time()); ?>" type="text/javascript"></script>

    </head>

    <body>

        <nav id="tpl_navbar" class="navbar navbar-fixed-top navbar-light">
            <div class="container">
                <div class="row">

                    <div id="tpl_navbar_left" class="col-xs-3 hidden-md-up">
                        <?php
                        if (isset($xs_topnav_left)) {
                            echo $xs_topnav_left;
                        } else {
                            ?>
                            <button type="button" class="btn btn-link btn-link-icon" onclick="tpl_navbar_menu_toggle();">
                                <i class="fa fa-bars"></i>
                            </button>
                        <?php } ?>
                    </div>

                    <div id="tpl_navbar_logo" class="col-xs-6 col-md-3 col-lg-2">
                        <a href="<?php echo site_url('foods'); ?>" title="ZiamThai Foods">
                            <img src="<?php echo base_url('asset/ziamthai/img/logo_ziamfood.png'); ?>" alt="ZiamThai Foods" class="img-fluid" />
                        </a>
                    </div>

                    <div id="tpl_navbar_right" class="col-xs-3 hidden-md-up">
                        <?php
                        if (isset($xs_topnav_right)) {
                            echo $xs_topnav_right;
                        }
                        ?>
                    </div>

                    <div id="tpl_navbar_menu" class="col-md-9 col-lg-10">

                        <button id="tpl_navbar_menu_hide" type="button" class="btn btn-link btn-link-icon" onclick="tpl_navbar_menu_toggle('hide');">
                            <i class="fa fa-remove" style="color:#444;text-shadow:none;"></i>
                        </button>

                        <div class="hidden-md-up">
                            <div class="row">
                                sss
                            </div>
                        </div>

                        <div class="hidden-sm-down container">
                            <div class="row">

                                <div class="col-md-6">
                                    <form id="foods_store_finder_form" action="<?php echo site_url('foods/store'); ?>" class="form-inline" method="GET">
                                        <div class="form-group" style="position:relative;">
                                            <div class="input-group" style="z-index:100;">
                                                <div class="input-group-btn">
                                                    <button type="button" class="btn btn-secondary" data-toggle="modal" data-target="#myLocationModal" title="<?php echo $nav_menu['location_finder']; ?>">
                                                        <i class="fa fa-map-marker text-blue" style="font-size:1.3em;width:16px;"></i>
                                                    </button>
                                                </div>
                                                <input id="tpl_navbar_search_input" type="search" class="form-control" name="q" value="<?php echo $search_q; ?>" placeholder="<?php echo $nav_menu['placeholder_search']; ?>">
                                            </div>
                                            <button type="submit" class="btn" style="z-index:101;position:absolute;right:0;top:0;padding:8px;background:none;">
                                                <i class="fa fa-search text-gray" style="font-size:1.3em;"></i>
                                            </button>
                                        </div>
                                        <input type="hidden" name="loc" value="<?php echo $search_loc; ?>">
                                        <input type="hidden" name="pos" value="<?php echo $search_pos; ?>">
                                    </form>
                                </div>

                                <div class="col-md-6" style="text-align: right;">
                                    <div class="btn-group">

                                        <?php if (!$login_status) { ?>
                                            <a href="#" class="btn btn-secondary text-pink" data-toggle="modal" data-target="#loginModal">
                                                <i class="fa fa-user-circle" style="font-size:1.3em;line-height:1.2em;"></i>
                                                <span style="font-size:1.2em;line-height:1em;"><?php echo $nav_menu['link_login']; ?></span>
                                            </a>
                                        <?php } else { ?>
                                            <div class="btn-group">
                                                <button class="btn btn-secondary text-pink dropdown-toggle" type="button" data-toggle="dropdown" style="position:relative;padding-left:36px;">
                                                    <img src="<?php echo site_url('uploads/user_photo/thumb/' . $login_id); ?>" style="position:absolute;top:2px;left:2px;width:32px;height:auto;"></i>
                                                    <span style="font-size:1.2em;line-height:1.3em;"><?php echo $login_display; ?></span>
                                                </button>
                                                <div class="dropdown-menu dropdown-menu-right">
                                                    <a class="dropdown-item" href="<?php echo site_url('accounts/pages/my'); ?>">
                                                        <?php echo $nav_menu['my_accounts']; ?>
                                                    </a>
                                                    <a class="dropdown-item" href="<?php echo site_url('accounts/pages/logout'); ?>">
                                                        <?php echo $nav_menu['link_logout']; ?>
                                                    </a>
                                                </div>
                                            </div>
                                        <?php } ?>

                                        <div class="btn-group">
                                            <button class="btn btn-secondary dropdown-toggle" type="button" data-toggle="dropdown" style="">
                                                <i class="fa fa-globe" style="color:#3b5998;font-size:1.3em;line-height:1.2em;"></i>
                                            </button>
                                            <div class="dropdown-menu dropdown-menu-right">
                                                <a class="dropdown-item" href="<?php echo site_url('LangSwitcher/switchLanguage/english') ?>">English</a>
                                                <a class="dropdown-item" href="<?php echo site_url('LangSwitcher/switchLanguage/thai') ?>">ภาษาไทย</a>
                                            </div>
                                        </div>

                                    </div>
                                </div>

                            </div>
                        </div>

                    </div>

                </div>
            </div>
        </nav>
        <!-- /navbar -->

        <div id="tpl_content">
            <?php echo $content; ?>
        </div>

        <div id="tpl_footer">
            <div class="container">

                <div class="row">

                    <div class="col-xs-6" align="left">
                        <h2>
                            <strong class="text-blue">ZiamThai</strong>
                            <strong class="text-pink">Foods</strong>
                        </h2>

                        <h4 class="text-gray">
                            Application Download
                        </h4>

                        <img src="<?php echo base_url('asset/zth-marketing/pic/download-appstore.png'); ?>" />

                        <img src="<?php echo base_url('asset/zth-marketing/pic/download-playstore.png'); ?>" />
                    </div>

                    <div class="col-xs-6" align="right">

                        <img class="img-fluid" src="<?php echo base_url('asset/zth-marketing/pic/social-icons.jpg'); ?>" style="max-height: 80px;" />

                    </div>

                </div>

                <hr size="1">

                <div class="row">

                    <div class="col-xs-6" align="left">
                        <h6>&copy;2016 <a href="<?php echo base_url(); ?>">ZiamThai</a></h6>
                        <div style="font-size:0.8em;">
                            <a class="text-gray" href="<?php echo site_url('foods'); ?>">Home</a>
                            <span class="text-gray">|</span>
                            <a class="text-gray" href="<?php echo site_url('accounts/policy/users'); ?>">Users policy</a>
                            <span class="text-gray">|</span>
                            <a class="text-gray" href="<?php echo site_url('accounts/policy/terms'); ?>">Terms of use</a>
                        </div>
                    </div>

                    <div class="col-xs-6" align="right">
                        <a href="#top" class="btn btn-secondary">
                            <i class="fa fa-chevron-up"></i>
                            <span>TOP</span>
                        </a>
                    </div>

                </div>

            </div>
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

        <?php
        include ROOT_PATH . '/application/modules/templates/views/modal_location.php';
        include ROOT_PATH . '/application/modules/templates/views/modal_buyer_info.php';
        ?>

        <div id="fb-root"></div>
        <script type="text/javascript">
            (function (d, s, id) {
                var js, fjs = d.getElementsByTagName(s)[0];
                if (d.getElementById(id))
                    return;
                js = d.createElement(s);
                js.id = id;
                js.src = "//connect.facebook.net/th_TH/sdk.js#xfbml=1&version=v2.8";
                fjs.parentNode.insertBefore(js, fjs);
            }(document, 'script', 'facebook-jssdk'));
        </script>

        <div class="loader"><i></i></div>

        <!-- JS -->
        <script src="<?php echo base_url('asset/ziamthai/js/functions.js?_=' . time()); ?>" type="text/javascript"></script>

    </body>
</html>
