
<!-- Style -->
<link href="<?php echo asset_url('zth-food/css/homepage.css?_=' . TIME_NOW); ?>" rel="stylesheet" type="text/css"/>
<link href="<?php echo asset_url('zth-food/css/timeline/posts.css?_=' . TIME_NOW); ?>" rel="stylesheet" type="text/css"/>

<!-- JS -->
<script src="<?php echo asset_url('zth-food/js/homepage.js?_=' . TIME_NOW); ?>" type="text/javascript"></script>
<script src="<?php echo asset_url('zth-food/js/timeline/posts.js?_=' . TIME_NOW); ?>" type="text/javascript"></script>

<?php
include 'slideshow.php';
?>

<div id="homepage_store_cate" class="container">
    <div class="row">

        <div class="item col-xs-6 col-md-3">
            <a class="photo" href="<?php echo site_url($access_module . '/find/?cate=top_score'); ?>" style="background-image:url(<?php echo asset_url('zth-food/img/c01.jpg'); ?>);">&nbsp;</a>
        </div>

        <div class="item col-xs-6 col-md-3">
            <a class="photo" href="<?php echo site_url($access_module . '/find/?cate='); ?>" style="background-image:url(<?php echo asset_url('zth-food/img/c02.jpg'); ?>);">&nbsp;</a>
        </div>

        <div class="item col-xs-6 col-md-3">
            <a class="photo" href="javascript:void(0);" data-toggle="modal" data-target="#location_modal" style="background-image:url(<?php echo asset_url('zth-food/img/c03.jpg'); ?>);">&nbsp;</a>
        </div>

        <div class="item col-xs-6 col-md-3">
            <a class="photo" href="<?php echo site_url($access_module . '/find/?cate=editor_choice'); ?>" style="background-image:url(<?php echo asset_url('zth-food/img/c04.jpg'); ?>);">&nbsp;</a>
        </div>

    </div>
</div>

<?php
include 'last_review.php';
include 'last_shop.php';
?>

<!-- Layout -->
<div class="container" style="margin-bottom:30px;">
    <div class="row">

        <div class="col-md-8">
            <div id="posts_show_list" class="row" data-posts-type="posts_blog"></div>
        </div>

        <!-- Advertisement -->
        <div class="col-md-4">
            <div id="sidebar_555">

                <p>
                    <img class="img-fluid" src="<?php echo base_url('asset/zth-marketing/ads/carnation.png'); ?>">
                </p>

                <p>
                    <img class="img-fluid" src="<?php echo base_url('asset/zth-marketing/ads/citibank.jpg'); ?>">
                </p>

                <div class="card">
                    <div class="card-block">
                        <img class="img-fluid" src="<?php echo base_url('asset/zth-marketing/ads/aside-finder.PNG'); ?>">
                    </div>
                </div>

            </div>
        </div>

    </div>
</div>


<script id="posts_template_blog" type="code"><?php include ROOT_PATH . '/application/modules/food/views/timeline/posts_template_blog.php'; ?></script>
<script id="posts_template_review" type="code"><?php include ROOT_PATH . '/application/modules/food/views/timeline/posts_template_review.php'; ?></script>
<script id="posts_template_posts" type="code"><?php include ROOT_PATH . '/application/modules/food/views/timeline/posts_template_posts.php'; ?></script>


