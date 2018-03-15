
<?php
$store_prefix = $shop_info['id'] . '/' . rawurlencode($shop_info['name']);
$show_url = site_url($access_module . '/store/show/' . $store_prefix);
$photo_url = site_url($access_module . '/store/photo/' . $store_prefix);
$menu_url = site_url($access_module . '/store/menu/' . $store_prefix);
$blog_url = site_url($access_module . '/store/feed/blog/' . $store_prefix);
$review_url = site_url($access_module . '/store/feed/review/' . $store_prefix);
$posts_url = site_url($access_module . '/store/feed/posts/' . $store_prefix);

$lang_sidebar_menu = $this->lang->line('sidebar_menu');
?>

<!-- Latest compiled and minified CSS -->
<link href="<?php echo base_url('asset/rateyo/jquery.rateyo.min.css'); ?>" rel="stylesheet" type="text/css"/>
<script src="<?php echo base_url('asset/rateyo/jquery.rateyo.min.js'); ?>" type="text/javascript"></script>
<script src="<?php echo base_url('asset/js-libs/jquery.form.min.js'); ?>" type="text/javascript"></script>

<link href="<?php echo asset_url('zth-food/css/business/show.css?_=' . TIME_NOW); ?>" rel="stylesheet" type="text/css"/>
<script src="<?php echo asset_url('zth-food/js/business/show.js?_=' . time()); ?>" type="text/javascript"></script>

<div class="container hidden-sm-down" style="display:none;">
    <ul class="breadcrumb">

        <li class="breadcrumb-item">
            <a href="<?php echo site_url($access_module); ?>">Home</a>
        </li>

        <li class="breadcrumb-item">
            <a href="<?php echo site_url($access_module . '/find'); ?>">Store finder</a>
        </li>

        <li class="breadcrumb-item active"><?php echo $shop_info['name']; ?></li>

    </ul>
</div>

<div id="store_show" class="container" data-store-id="<?php echo $shop_info['id']; ?>" data-store-title="<?php echo $shop_info['name']; ?>" data-store-location="<?php echo str_ireplace(' ', '', $shop_info['map_position']); ?>" style="margin-top:20px;margin-bottom:20px;">

    <div id="store_show_header_xs" class="hidden-md-up row">
        <?php include 'show_header_xs.php'; ?>
    </div>

    <div class="row">

        <div id="store_show_sidebar" data-layout-2col="two" class="col-xs-12 col-md-4 col-lg-3" style="margin-bottom:20px;">
            <?php include 'show_sidebar.php'; ?>
        </div>

        <div data-layout-2col="one" class="col-xs-12 col-md-8 col-lg-9">
            <?php echo $show_content; ?>
        </div>

    </div>

</div>


<div class="modal fade" id="store_warning_modal" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">
                    <i class="fa fa-warning" style="color:#fc0;"></i>
                    <span>Warning</span>
                </h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body" style="position:relative;height:240px !important;padding:0;">

                <div class="store-show-imghead" style="border-radius:0px 0px 4px 4px;max-height:240px !important;background-image: url(<?php echo site_url('uploads/shop_photo/large/' . $shop_info['id'] . '/imghead'); ?>);">
                </div>

                <div class="store-show-todayhour" style="position:absolute;width:50%;top:20%;left:50%;margin-left:-25%;">
                    <div class="store_show_hour_status text-xs-center" style="display:none;">
                        <button type="button" class="display_status btn btn-link btn-block btn-lg" style="font-size:2em;">
                            <span class="closing">Closing on</span>
                            <span class="opening">Opening on</span>
                            <span class="next_day" style="display:none;">(next day)</span>
                        </button>
                        <button type="button" class="display_time btn btn-secondary btn-block btn-lg" style="margin-bottom:4px;font-size:2em;">
                            <span></span>
                        </button>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>

<!-- Modal -->
<div class="modal fade" id="store_photo_gallery" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Photos Gallery</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body" style="text-align:center;min-height:240px;"></div>
            <div class="modal-footer"></div>
        </div>
    </div>
</div>

