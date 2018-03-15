<?php
$title = isset($title) ? $title . ' - ' . $this->lang->line('site_title') : $this->lang->line('site_title');
$content = isset($content) ? $content : null;

$navbar_hide = isset($navbar_hide) ? $navbar_hide : false;
$sidebar_hide = isset($sidebar_hide) ? $sidebar_hide : false;
$sidebar_mnu_active = isset($sidebar_mnu_active) ? $sidebar_mnu_active : null;

$workspace_id = isset($access_workspace['id']) ? $access_workspace['id'] : null;
$workspace_name = isset($access_workspace['name']) ? $access_workspace['name'] : null;
?>

<!DOCTYPE html>
<html>
    <head>
        <title><?php echo $title; ?></title>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta http-equiv="Pragma" content="private">
        <meta http-equiv="Cache-Control" content="private, max-age=5400, pre-check=5400">
        <meta http-equiv="Expires" content="<?php echo date(DATE_RFC822, strtotime("+1 day")); ?>">

        <!-- CSS & JS Core -->
        <link href="<?php echo base_url('asset/bootstrap4/css/bootstrap.min.css'); ?>" rel="stylesheet" type="text/css"/>
        <link href="<?php echo base_url('asset/font-awesome/css/font-awesome.min.css'); ?>" rel="stylesheet" type="text/css"/>

        <script src="<?php echo base_url('asset/js-libs/jquery-3.1.1.min.js'); ?>" type="text/javascript"></script>
        <script src="<?php echo base_url('asset/js-libs/tether.min.js'); ?>" type="text/javascript"></script>
        <script src="<?php echo base_url('asset/bootstrap4/js/bootstrap.min.js'); ?>" type="text/javascript"></script>
        <script src="<?php echo base_url('asset/mustache/mustache.min.js'); ?>" type="text/javascript"></script>

        <script rel="nofollow" src="<?php echo asset_url('zth-core/js/sdk_zth.js?_=' . TIME_NOW); ?>"></script>

        <!-- CSS & JS Templates -->
        <link href="<?php echo asset_url('zth-client/css/templates/default.css?_=' . TIME_NOW); ?>" rel="stylesheet">

        <script src="<?php echo asset_url('zth-core/js/functions.js?_=' . TIME_NOW); ?>"></script>
        <script rel="nofollow" src="<?php echo asset_url('zth-client/js/templates/default.js?_=' . TIME_NOW); ?>"></script>

    </head>

    <body>
        <?php
        if (!$navbar_hide) {
            include 'navbar.php';
        }
        ?>

        <div id="tpl_layout" <?php
        if ($sidebar_hide === true) {
            echo 'class="sidebar-hide"';
        }
        ?>>
                 <?php include 'sidebar.php'; ?>

            <div id="tpl_content" data-layout-2col="one">
                <?php echo $content; ?>
            </div>
        </div>

    </body>
</html>
