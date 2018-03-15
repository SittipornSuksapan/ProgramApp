
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
        <link href="<?php echo base_url('asset/ziamthai/css/template_community.css?_=' . time()); ?>" rel="stylesheet">
        <script src="https://www.atlasestateagents.co.uk/javascript/tether.min.js" type="text/javascript"></script>
        <script src="<?php echo base_url('asset/ziamthai/js/jquery-3.1.1.min.js'); ?>" type="text/javascript"></script>
        <script src="<?php echo base_url('asset/bootstrap4/js/bootstrap.min.js'); ?>" type="text/javascript"></script>
        <script src="<?php echo base_url('asset/ziamthai/js/jquery.sticky-kit.min.js?_=' . time()); ?>" type="text/javascript"></script>
        <script src="<?php echo base_url('asset/ziamthai/js/globals.js?_=' . time()); ?>" type="text/javascript"></script>
        <script src="<?php echo base_url('asset/ziamthai/js/community/templates.js?_=' . time()); ?>" type="text/javascript"></script>
    </head>

    <body>

        <nav id="tpl_header" class="navbar navbar-light navbar-fixed-top bg-primary">
            <div class="container" style="padding:0;">
                <div class="col-xs-3 col-sm-3 hidden-md-up visible">
                    <button onclick="tpl_nav_ussb('show');" class="btn btn-link" style="color:#fff;font-size:1.3em;">
                        <i class="fa fa-bars"></i>
                    </button>
                </div>

                <div class="navbar-logo-box col-xs-6 col-sm-6 col-md-2 col-lg-1" style="position:relative;">
                    <a href="<?php echo site_url('community'); ?>" style="position:absolute;top:-5px;left:10px;width:100%;">
                        <img src="<?php echo base_url('asset/ziamthai/img/logo.png'); ?>" style="margin:auto;width:auto;height:48px;" />
                    </a>
                </div>

                <div class="col-xs-3 col-sm-3 hidden-md-up visible" align="right">
                    <button id="cmt_nav_search_open" onclick="cmt_nav_search('show');" class="btn btn-link" style="color:#fff;font-size:1.3em;">
                        <i class="fa fa-search"></i>
                    </button>
                    <button id="cmt_nav_search_close" onclick="cmt_nav_search('hide');" class="btn btn-link" style="display:none;color:#fff;font-size:1.3em;">
                        <i class="fa fa-chevron-up"></i>
                    </button>
                </div>

                <div id="cmt_nav_search_form" class="col-xs-12 col-sm-12 col-md-7 col-lg-8" align="center">
                    <form action="<?php echo site_url('community/news/find/'); ?>" style="padding:0px 6px;" method="GET">
                        <div style="position:relative;width:75%;">
                            <input class="form-control" type="text" name="q" placeholder="<?php echo $nav_menu['placeholder_search']; ?>">
                            <button class="btn btn-link" type="submit" style="position:absolute;right:0;top:0;">
                                <i class="fa fa-search"></i>
                            </button>
                        </div>
                    </form>
                </div>

                <div id="tpl_nav_ussb_box" class="col-xs-12 col-sm-2 col-md-3 col-lg-3">

                    <a href="#" class="navbar-btn-login dropdown-toggle hidden-sm-down" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="fa fa-user-circle"></i>
                        <span class="hidden-sm-down"><?php echo $login_display; ?></span>
                    </a>

                    <div id="tpl_nav_ussb_head" style="display:none;">
                        <a href="<?php echo site_url('foods'); ?>">
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
                        <?php } ?>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="<?php echo site_url('community/home'); ?>">
                            <i class="fa fa-home"></i>
                            <?php echo $nav_menu['link_home']; ?>
                        </a>
                    </div>

                </div>

            </div>
        </nav> <!-- /navbar -->

        <div id="tpl_navbar" class="bg-primary">
            <div class="container">
                <nav class="navbar navbar-light bg-primary">

                    <button class="btn btn-block btn-link hidden-md-up" type="button" data-toggle="collapse" data-target="#navbarResponsive" style="color:#fff;font-weight:bold;">
                        MENU
                        <i class="fa fa-caret-down"></i>
                    </button>

                    <div class="collapse navbar-toggleable-sm" id="navbarResponsive">
                        <ul class="nav navbar-nav">

                            <li class="nav-item">
                                <a class="btn btn-primary <?php
                                if ($set_menu_active == 'home') {
                                    echo 'active';
                                }
                                ?>" href="<?php echo site_url('community/home'); ?>">
                                    <i class="fa fa-home"></i>
                                    <span>Home</span>
                                </a>
                            </li>

                            <li class="nav-item dropdown">
                                <a class="btn btn-primary dropdown-toggle <?php
                                if ($set_menu_active == 'news') {
                                    echo 'active';
                                }
                                ?>" data-toggle="dropdown">
                                    <i class="fa fa-newspaper-o"></i>
                                    <span>News</span>
                                </a>
                                <div class="dropdown-menu">
                                    <a class="dropdown-item" href="<?php echo site_url('community/news/find/today'); ?>">Today</a>
                                    <a class="dropdown-item" href="<?php echo site_url('community/news/find/entertainment'); ?>">Entertainments</a>
                                    <a class="dropdown-item" href="<?php echo site_url('community/news/find/sports'); ?>">Sports</a>
                                </div>
                            </li>

                            <li class="nav-item dropdown">
                                <a class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
                                    <i class="fa fa-briefcase"></i>
                                    <span>Business</span>
                                </a>
                                <div class="dropdown-menu">
                                    <a class="dropdown-item" href="<?php echo base_url('index.php/foods'); ?>" target="_blank">Foods</a>
                                </div>
                            </li>

                            <li class="nav-item dropdown">
                                <a class="btn btn-primary dropdown-toggle <?php
                                if ($set_menu_active == 'blog') {
                                    echo 'active';
                                }
                                ?>" data-toggle="dropdown">
                                    <i class="fa fa-book"></i>
                                    <span>Guide</span>
                                </a>
                                <div class="dropdown-menu">
                                    <a class="dropdown-item" href="<?php echo site_url('community/blog/read'); ?>">Moving to the USA</a>
                                    <a class="dropdown-item" href="<?php echo site_url('community/blog/read'); ?>">Life in the USA</a>
                                    <a class="dropdown-item" href="<?php echo site_url('community/blog/read'); ?>">VISA & Immigration</a>
                                    <a class="dropdown-item" href="<?php echo site_url('community/blog/read'); ?>">Transportation</a>
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item" href="<?php echo site_url('community/blog/read'); ?>">Study</a>
                                    <a class="dropdown-item" href="<?php echo site_url('community/blog/read'); ?>">Working</a>
                                </div>
                            </li>

                            <li class="nav-item">
                                <a class="btn btn-primary" href="http://webboard.sanook.com/forum/" target="_blank">
                                    <i class="fa fa-bullhorn"></i>
                                    <span>Forums</span>
                                </a>
                            </li>

                        </ul>
                    </div>

                </nav>
            </div>
        </div>

        <div id="tpl_content">
            <?php echo $content; ?>
        </div>

        <div id="tpl_footer" style="border-top:solid 2px #03f;">
            <div class="container" align="left">

                <div class="col-xs-6" align="left">
                    <h2 style="color:#444;">
                        <strong style="color:#039">ZiamThai</strong> Application Download
                    </h2>

                    <img src="<?php echo base_url('asset/zth-marketing/pic/download-appstore.png'); ?>" />

                    <img src="<?php echo base_url('asset/zth-marketing/pic/download-playstore.png'); ?>" />
                </div>

                <div class="col-xs-6" align="right">

                    <img class="img-fluid" src="<?php echo base_url('asset/zth-marketing/pic/social-icons.jpg'); ?>" style="max-height: 80px;" />

                </div>

            </div>

            <hr size="1">

            <div class="container" align="left">

                <div class="col-xs-6" align="left">
                    <h4>&copy;2016 <a href="<?php echo base_url(); ?>">ZiamThai</a></h4>
                </div>

                <div class="col-xs-6" align="right">
                    <a href="#top" class="btn btn-secondary active btn-lg">
                        <i class="fa fa-chevron-up"></i>
                        <span>TOP</span>
                    </a>
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

        <img class="rb-fixed-left" src="<?php echo base_url('asset/zth-marketing/pic/rb.png'); ?>">
        
        <!-- JS function-->
        <script src="<?php echo base_url('asset/ziamthai/js/functions.js?_=' . time()); ?>" type="text/javascript"></script>

    </body>
</html>
