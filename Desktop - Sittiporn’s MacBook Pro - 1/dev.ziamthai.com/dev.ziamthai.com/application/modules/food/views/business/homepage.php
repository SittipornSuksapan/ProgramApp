
<?php
$store_prefix = $shop_info['id'] . '/' . rawurlencode($shop_info['name']);
$show_url = site_url($access_module . '/store/show/' . $store_prefix);
?>

<!-- Style -->
<link href="<?php echo asset_url('zth-food/css/timeline/posts.css?_=' . TIME_NOW); ?>" rel="stylesheet" type="text/css"/>
<script src="<?php echo asset_url('zth-food/js/timeline/posts.js?_=' . TIME_NOW); ?>" type="text/javascript"></script>

<?php include 'show_header.php'; ?>

<div class="row" style="padding-bottom:20px;">

    <div id="show_review" class="col-lg-7 col-xl-8">
        <div id="posts_show_list" data-shop="<?php echo $shop_info['id']; ?>" class="row"></div>
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
