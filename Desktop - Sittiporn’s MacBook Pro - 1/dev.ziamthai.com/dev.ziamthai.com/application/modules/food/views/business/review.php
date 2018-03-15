
<?php
$store_prefix = $shop_info['id'] . '/' . rawurlencode($shop_info['name']);
$show_url = site_url($access_module . '/store/show/' . $store_prefix);
?>

<link href="<?php echo base_url('asset/select2/css/select2.min.css'); ?>" rel="stylesheet" type="text/css"/>
<script src="<?php echo base_url('asset/select2/js/select2.full.min.js'); ?>" type="text/javascript"></script>

<link href="<?php echo asset_url('zth-food/css/business/review.css?_=' . time()); ?>" rel="stylesheet" type="text/css"/>

<script type="text/javascript">var rateyo_reviews_score = 5; var rateyo_reviews_price = ["$1-10", "$10-20", "$20-40", "$40-60", "$60 up"];</script>
<script src="<?php echo asset_url('zth-food/js/business/reviews_list.js?_=' . time()); ?>" type="text/javascript"></script>
<script src="<?php echo asset_url('zth-food/js/business/reviews_form.js?_=' . time()); ?>" type="text/javascript"></script>
<script src="<?php echo asset_url('zth-food/js/business/reviews_form_photo.js?_=' . time()); ?>" type="text/javascript"></script>


<?php
if (!empty($access_user['id'])) {
    include 'review_form.php';
}
?>

<div id="show_review_content" class="row" style="padding-bottom:20px;"></div>

<script id="show_review_template" type="code">
    <?php include 'review_item.php'; ?>
</script>
