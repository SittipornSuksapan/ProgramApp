
<link href="<?php echo asset_url('zth-food/css/homepage.css?_=' . TIME_NOW); ?>" rel="stylesheet" type="text/css"/>
<script src="<?php echo asset_url('zth-food/js/templates/homepage.js?_=' . TIME_NOW); ?>" type="text/javascript"></script>

<?php
include 'homepage_slideshow.php';
?>

<div id="homepage_store_cate" class="container">
    <div class="row">

        <div class="item col-xs-6 col-md-3">
            <a class="photo" href="<?php echo site_url($access_module . '/find/?cate=top_score'); ?>">
                <img class="img-fluid" src="<?php echo asset_url('zth-food/img/c01.jpg'); ?>">
            </a>
        </div>

        <div class="item col-xs-6 col-md-3">
            <a class="photo" href="<?php echo site_url($access_module . '/find/?cate='); ?>">
                <img class="img-fluid" src="<?php echo asset_url('zth-food/img/c02.jpg'); ?>">
            </a>
        </div>

        <div class="item col-xs-6 col-md-3">
            <a class="photo" href="javascript:void(0);" data-toggle="modal" data-target="#location_modal">
                <img class="img-fluid" src="<?php echo asset_url('zth-food/img/c03.jpg'); ?>">
            </a>
        </div>

        <div class="item col-xs-6 col-md-3">
            <a class="photo" href="<?php echo site_url($access_module . '/find/?cate=editor_choice'); ?>">
                <img class="img-fluid" src="<?php echo asset_url('zth-food/img/c04.jpg'); ?>">
            </a>
        </div>

    </div>
</div>

<?php
//include 'homepage_bestdeal.php';
include 'homepage_newrelease.php';
?>

<div class="container" style="margin-top:20px;">
    <div class="row">

        <div class="col-md-4" style="margin-top:20px;">
            <img src="<?php echo base_url('asset/zth-marketing/ads/kbank.jpg'); ?>" class="img-fluid">
        </div>

        <div class="col-md-4" style="margin-top:20px;">
            <img src="<?php echo base_url('asset/zth-marketing/ads/citibank.jpg'); ?>" class="img-fluid">
        </div>

        <div class="col-md-4" style="margin-top:20px;">
            <img src="<?php echo base_url('asset/zth-marketing/ads/carnation.png'); ?>" class="img-fluid">
        </div>

    </div>
</div>

<div id="homepage_lastreview" style="min-height:640px;">
    <div class="container">
        <div class="row" style="margin-top:30px;margin-bottom:10px;">
            <div class="col-xs-6 col-md-6 text-xs-left text-md-left">
                <h3 class="text-blue" style="font-weight:bold;"><?php echo $this->lang->line('headline_lastreview'); ?></h3>
            </div>
            <div class="col-xs-6 col-md-6 text-xs-right text-md-right">

            </div>
        </div>
    </div>
    <div class="container">
        <div id="homepage_lastreview_content" class="row"></div>
    </div>
    <script id="homepage_lastreview_template" type="code">
        <?php include 'reviews_list_item.php'; ?>
    </script>
</div>