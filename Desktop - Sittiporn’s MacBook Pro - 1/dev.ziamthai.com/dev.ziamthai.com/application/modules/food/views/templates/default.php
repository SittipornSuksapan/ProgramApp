
<?php
$title = isset($title) ? $title . ' - ' . $this->lang->line('title') : $this->lang->line('title');
$content = isset($content) ? $content : null;
$keywords = isset($keywords) ? $keywords : null;
$description = isset($description) ? $description : null;
$navbar = isset($navbar) ? $navbar : null;
$current_url = isset($current_url) ? $current_url : site_url(uri_string());
$thumbnail_url = isset($thumbnail_url) ? $thumbnail_url : base_url('asset/img/logo.png');

//-- defined variables
$search_q = isset($_GET['q']) ? $_GET['q'] : '';
$search_loc = isset($_GET['state']) ? $_GET['state'] : '';
$search_pos = isset($_GET['map_position']) ? $_GET['map_position'] : '';

//-- defined language
$lang_modal_location = $this->lang->line('tpl_modal_location');
$lang_modal_login = $this->lang->line('tpl_modal_login');
$lang_navbar = $this->lang->line('tpl_navbar');

$sbmnu_active = isset($sbmnu_active) ? strtolower($sbmnu_active) : null;
?>

<!DOCTYPE html>
<html>
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

        <link rel="shortcut icon" type="image/x-icon" href="<?php echo base_url('asset/ziamthai/iconx/favicon.ico'); ?>">
        <link rel="icon" type="image/png" href="<?php echo base_url('asset/ziamthai/iconx/favicon-16x16.png'); ?>" sizes="16x16">
        <link rel="icon" type="image/png" href="<?php echo base_url('asset/ziamthai/iconx/favicon-32x32.png'); ?>" sizes="32x32">
        <link rel="icon" type="image/png" href="<?php echo base_url('asset/ziamthai/iconx/android-192x192.png'); ?>" sizes="192x192">
        <link rel="apple-touch-icon" href="<?php echo base_url('asset/ziamthai/iconx/apple-touch-icon-180x180.png'); ?>" sizes="180x180">

        <meta http-equiv="Pragma" content="private">
        <meta http-equiv="Cache-Control" content="private, max-age=5400, pre-check=5400">
        <meta http-equiv="Expires" content="<?php echo date(DATE_RFC822, strtotime("+1 day")); ?>">

        <!-- CSS & JS Core -->
        <link href="<?php echo base_url('asset/bootstrap4/css/bootstrap.min.css'); ?>" rel="stylesheet" type="text/css"/>
        <link href="<?php echo base_url('asset/font-awesome/css/font-awesome.min.css'); ?>" rel="stylesheet" type="text/css"/>

        <script src="<?php echo base_url('asset/js-libs/jquery-3.1.1.min.js'); ?>" type="text/javascript"></script>
        <script src="<?php echo base_url('asset/js-libs/tether.min.js'); ?>" type="text/javascript"></script>
        <script src="<?php echo base_url('asset/bootstrap4/js/bootstrap.min.js'); ?>" type="text/javascript"></script>
        <script src="<?php echo base_url('asset/js-libs/jquery.sticky-kit.min.js?_=' . time()); ?>" type="text/javascript"></script>
        <!-- CSS & JS Ziam Thai -->
        <link href="<?php echo asset_url('zth-food/css/templates.css?_=' . TIME_NOW); ?>" rel="stylesheet">
        <link href="<?php echo asset_url('zth-food/css/templates/default.css?_=' . TIME_NOW); ?>" rel="stylesheet">

        <script rel="nofollow" src="<?php echo asset_url('zth-food/js/templates/default.js?_=' . TIME_NOW); ?>"></script>
    </head>

    <body data-current-url="<?php echo $current_url; ?>" data-search-q="<?php echo $search_q; ?>" data-search-loc="<?php echo $search_loc; ?>" data-search-pos="<?php echo $search_pos; ?>">

        <nav id="tpl_navbar">
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
                        <a href="<?php echo site_url('food'); ?>" title="ZiamThai Foods">
                            <img src="<?php echo base_url('asset/ziamthai/img/logo_ziamfood.png'); ?>" alt="ZiamThai Foods" class="img-fluid hidden-sm-down" />
                            <span class="hidden-md-up"><span class="text-pink">Ziam</span>&nbsp;<span class="text-pink">Food</span></span>
                        </a>
                    </div>

                    <div id="tpl_navbar_right" class="col-xs-3 hidden-md-up">
                        <?php
                        if (!empty($xs_topnav_right)) {
                            echo $xs_topnav_right;
                        } else {
                            ?>
                            <a class="btn btn-link btn-link-icon" href="<?php echo site_url('food/find'); ?>">
                                <i class="fa fa-search"></i>
                            </a>
                        <?php } ?>
                    </div>

                    <div id="tpl_navbar_menu" class="col-md-9 col-lg-10">

                        <button id="tpl_navbar_menu_hide" type="button" class="btn btn-link btn-link-icon" onclick="tpl_navbar_menu_toggle('hide');">
                            <i class="fa fa-remove" style="color:#444;text-shadow:none;"></i>
                        </button>

                        <?php
                        include 'navbar_menu_md.php';
                        include 'navbar_menu_xs.php';
                        ?>

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

                    <div class="col-xs-6 col-md-6 text-xs-left text-md-left">
                        <h2>
                            <strong class="text-blue">ZiamThai</strong>
                            <strong class="text-pink"><?php echo ucfirst($access_module); ?></strong>
                        </h2>

                        <h4 class="text-gray">
                            Application Download
                        </h4>

                        <img src="<?php echo base_url('asset/zth-marketing/pic/download-appstore.png'); ?>" />

                        <img src="<?php echo base_url('asset/zth-marketing/pic/download-playstore.png'); ?>" />
                    </div>

                    <div class="col-xs-6 col-md-6 text-xs-right text-md-right" align="right">
                        <img class="img-fluid" src="<?php echo base_url('asset/zth-marketing/pic/social-icons.jpg'); ?>" style="max-height: 80px;" />
                    </div>

                </div>

                <hr size="1">

                <div class="row">

                    <div class="col-xs-6 col-md-6 text-xs-left text-md-left">
                        <div style="margin-bottom:5px;font-size:0.8em;">
                            <a class="text-gray" href="<?php echo site_url('foods'); ?>">Home</a>
                            <span class="text-gray">|</span>
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
                                ZiamThai
                            </a>
                        </h6>
                    </div>

                    <div class="col-xs-6 col-md-6 text-xs-right text-md-right">
                        <div class="btn-group dropup dropdown-hover">
                            <button class="btn btn-link dropdown-toggle" type="button" data-toggle="dropdown" style="text-decoration:none;">
                                <i class="fa fa-globe" style="color:#3b5998;font-size:1.3em;line-height:1.2em;"></i>
                            </button>
                            <div class="dropdown-menu dropdown-menu-right">
                                <a class="dropdown-item" href="<?php echo site_url($access_module . '/home/switch_language/english/?return_url=' . $current_url) ?>">English</a>
                                <a class="dropdown-item" href="<?php echo site_url($access_module . '/home/switch_language/thai/?return_url=' . $current_url) ?>">ภาษาไทย</a>
                            </div>
                        </div>
                    </div>

                </div>

            </div>
        </div>

        <a id="tpl_go_to_top" href="#top" class="btn bg-primary">
            <i class="fa fa-2x fa-chevron-up"></i>
        </a>

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

        <div class="loading-panel">
            <i class="zth-icon-bg2"></i>
            <i class="zth-icon-hat2"></i>
        </div>

        <!-- JS Ext. -->
        <script rel="nofollow" src="<?php echo asset_url('zth-food/js/geo_location.js?_=' . TIME_NOW); ?>"></script>
        <script rel="nofollow" src="<?php echo asset_url('zth-core/js/functions.js?_=' . TIME_NOW); ?>"></script>
        <script rel="nofollow" src="<?php echo asset_url('zth-core/js/sdk_zth.js?_=' . TIME_NOW); ?>"></script>
        <script rel="nofollow" src="<?php echo asset_url('zth-food/js/sdk_fb.js'); ?>"></script>
        <script rel="nofollow" src="<?php echo asset_url('zth-food/js/sdk_gg.js'); ?>"></script>

        <link href="<?php echo base_url('asset/slick/slick.css'); ?>" rel="stylesheet" type="text/css"/>
        <link href="<?php echo base_url('asset/slick/slick-theme.css'); ?>" rel="stylesheet" type="text/css"/>
        <script rel="nofollow" src="<?php echo base_url('asset/slick/slick.js'); ?>" type="text/javascript"></script>

        <script rel="nofollow" src="<?php echo base_url('asset/mustache/mustache.min.js'); ?>" type="text/javascript"></script>
        <script rel="nofollow" src="<?php echo base_url('asset/js-libs/masonry.pkgd.min.js'); ?>" type="text/javascript"></script>

        <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAm0hSdYEpYncSbqpWDk89wtM-ySx-91Pg"></script>

        <!-- JS -->
        <script src="https://unpkg.com/imagesloaded@4.1/imagesloaded.pkgd.min.js"></script>
        <script src="https://unpkg.com/masonry-layout@4/dist/masonry.pkgd.min.js"></script>

        <link href="<?php echo asset_url('zth-core/css/video_player.css?_=' . TIME_NOW); ?>" rel="stylesheet" type="text/css"/>
        <script src="<?php echo asset_url('zth-core/js/video_player.js?_=' . TIME_NOW); ?>" type="text/javascript"></script>

        <link href="<?php echo base_url('asset/fancybox/source/jquery.fancybox.css'); ?>" rel="stylesheet" type="text/css"/>
        <script src="<?php echo base_url('asset/fancybox/source/jquery.fancybox.js'); ?>" type="text/javascript"></script>

        <?php
        //-- Extend Modal
        include ROOT_PATH . '/application/modules/food/views/templates/modal_login.php';
        include ROOT_PATH . '/application/modules/food/views/templates/modal_location.php';
        //include ROOT_PATH . '/application/modules/food/views/templates/modal_buyer_info.php';
        ?>

    </body>
</html>
