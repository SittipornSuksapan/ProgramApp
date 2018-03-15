
<?php
$set_posts_type = isset($set_posts_type) ? $set_posts_type : '';
?>

<!-- Style -->
<link href="<?php echo asset_url('zth-food/css/homepage.css?_=' . TIME_NOW); ?>" rel="stylesheet" type="text/css"/>
<link href="<?php echo asset_url('zth-food/css/timeline/posts.css?_=' . TIME_NOW); ?>" rel="stylesheet" type="text/css"/>

<!-- JS -->
<script src="<?php echo asset_url('zth-food/js/homepage.js?_=' . TIME_NOW); ?>" type="text/javascript"></script>
<script src="<?php echo asset_url('zth-food/js/timeline/posts.js?_=' . TIME_NOW); ?>" type="text/javascript"></script>

<!-- Layout -->
<div class="container" style="margin-top:15px;margin-bottom:15px;">
    <div class="row">

        <!-- Sidebar -->
        <div class="hidden-md-down col-md-4 col-lg-3 col-xl-2">
            <!-- Sidebar : Menu Link-->
            <?php include 'feed_sidebar.php'; ?>
        </div>

        <!-- Content -->
        <div class="col-md-8 col-lg-6 col-xl-6">
            <div id="posts_show_list" class="row" data-posts-type="<?php echo $set_posts_type; ?>"></div>
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


