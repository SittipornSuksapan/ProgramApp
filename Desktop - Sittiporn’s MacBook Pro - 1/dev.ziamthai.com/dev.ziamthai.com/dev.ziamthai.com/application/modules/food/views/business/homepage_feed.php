
<?php
$store_prefix = $shop_info['id'] . '/' . rawurlencode($shop_info['name']);
$show_url = site_url($access_module . '/store/show/' . $store_prefix);
$feed_type = isset($feed_type) ? $feed_type : '';
?>

<!-- Style -->
<link href="<?php echo asset_url('zth-food/css/timeline/posts.css?_=' . TIME_NOW); ?>" rel="stylesheet" type="text/css"/>
<script src="<?php echo asset_url('zth-food/js/timeline/posts.js?_=' . TIME_NOW); ?>" type="text/javascript"></script>

<?php
//-- Review Template
if ($feed_type == 'review') {
    ?>
    <!-- Style -->
    <link href="<?php echo base_url('asset/select2/css/select2.min.css'); ?>" rel="stylesheet" type="text/css"/>
    <script src="<?php echo base_url('asset/select2/js/select2.full.min.js'); ?>" type="text/javascript"></script>

    <link href="<?php echo asset_url('zth-food/css/business/review.css?_=' . time()); ?>" rel="stylesheet" type="text/css"/>

    <script type="text/javascript">var rateyo_reviews_score = 5; var rateyo_reviews_price = ["$1-10", "$10-20", "$20-40", "$40-60", "$60 up"];</script>
    <script src="<?php echo asset_url('zth-food/js/business/review_form.js?_=' . time()); ?>" type="text/javascript"></script>
    <script src="<?php echo asset_url('zth-food/js/business/review_form_photo.js?_=' . time()); ?>" type="text/javascript"></script>
    <?php
    if (!empty($access_user['id'])) {
        include 'review_form.php';
    }
}
?>

<div class="row" style="padding-bottom:20px;">

    <div id="show_review" class="col-lg-7 col-xl-8">
        <div id="posts_show_list" data-shop="<?php echo $shop_info['id']; ?>" data-posts-type="<?php echo $feed_type; ?>" class="row"></div>
    </div>

    <div id="show_marketing" class="col-lg-5 col-xl-4">
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

<script id="posts_template_blog" type="code"><?php include ROOT_PATH . '/application/modules/' . $access_module . '/views/timeline/posts_template_blog.php'; ?></script>
<script id="posts_template_review" type="code"><?php include ROOT_PATH . '/application/modules/' . $access_module . '/views/timeline/posts_template_review.php'; ?></script>
<script id="posts_template_posts" type="code"><?php include ROOT_PATH . '/application/modules/' . $access_module . '/views/timeline/posts_template_posts.php'; ?></script>
