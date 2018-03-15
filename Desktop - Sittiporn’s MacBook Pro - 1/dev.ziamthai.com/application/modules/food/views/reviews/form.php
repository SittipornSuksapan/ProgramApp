
<?php
$show_url = site_url('foods/store/show/' . $bssh_info['bssh_id'] . '/' . rawurlencode($bssh_info['bssh_title']));
$review_url = site_url('foods/store/onlineOrder/' . $bssh_info['bssh_id'] . '/' . rawurlencode($bssh_info['bssh_title']));
$bssh_score_rating = isset($bssh_score['score_value']) ? $bssh_score['score_value'] : 5;
$bssh_score_reviews = isset($bssh_score['score_total_review']) ? $bssh_score['score_total_review'] : 0;
?>


<div class="container">
    <ul class="breadcrumb hidden-sm-down">
        <li class="breadcrumb-item">
            <a href="<?php echo site_url('foods'); ?>">Home</a>
        </li>
        <li class="breadcrumb-item">
            <a href="<?php echo site_url('foods/store'); ?>">Store finder</a>
        </li>
        <li class="breadcrumb-item">
            <a href="<?php echo $show_url; ?>"><?php echo $bssh_info['bssh_title']; ?></a>
        </li>
        <li class="breadcrumb-item active">
            <?php echo $this->lang->line('page_title'); ?>
        </li>
    </ul>
</div>


<div id="store_order_menu" class="container" data-store-title="<?php echo $bssh_info['bssh_title']; ?>" data-store-location="<?php echo str_ireplace(' ', '', $bssh_info['bssh_maps']); ?>">
    <div class="row">

        <div data-layout-2col="one" class="col-xs-12 col-md-8 col-xl-9">

            <div class="container" style="background:#fff;border-radius:4px;border:solid 1px #ddd;margin-bottom:20px;">

                <?php include ROOT_PATH . '/application/modules/foods/views/store_show_marketing.php'; ?>

            </div>

            <form id="reviews_writing_form" class="container" style="margin-top:30px;margin-bottom:30px;">
                <input type="hidden" name="shop" value="<?php echo $bssh_info['bssh_id']; ?>">
                <input type="hidden" name="score" value="<?php echo $bssh_score_rating; ?>">
                <input type="hidden" name="price" value="1">

                <?php include 'form_group.php'; ?>    
            </form>

            <?php include 'form_photo.php'; ?>    

            <div class="container" style="margin-top:30px;margin-bottom:30px;">

                <div class="form-group hidden-sm-down">
                    <button id="reviews_writing_submit" onclick="$('#reviews_writing_form').submit();" type="button" class="btn btn-primary">
                        <i class="fa fa-edit"></i>
                        <span>Save</span>
                    </button>
                    <a href="<?php echo $show_url; ?>" class="btn btn-secondary">
                        <span>Cancel</span>
                    </a>
                </div>

            </div>


        </div>

        <div data-layout-2col="two" class="col-xs-12 col-md-4 col-xl-3">

            <div id="store_show_info" class="card" style="position:relative;">

                <button onclick="layout_2col('one', '#store_order_menu');" type="button" class="btn btn-link hidden-md-up" style="position:absolute;top:0;right:0px;">
                    <i class="fa fa-close"></i>
                </button>

                <a href="<?php echo $review_url; ?>" title="<?php echo $bssh_info['bssh_title']; ?>">
                    <img class="card-img img-fluid" src="<?php echo $bssh_info['bssh_imgfront']; ?>">
                </a>

                <div class="card-block" style="overflow:hidden;padding:10px;">

                    <div style="color:#444;font-size:1.1em;">
                        <div>
                            <i class="fa fa-map-marker"></i>
                            <?php
                            echo $bssh_info['bssh_address'] . ' ' . $bssh_info['bssh_zipcode'];
                            ?>
                        </div>
                        <div>
                            <i class="fa fa-phone"></i>
                            <?php
                            echo $bssh_info['bssh_phone'];
                            ?>
                        </div>
                    </div>

                </div>

            </div>

        </div>

    </div>
</div>

<div class="hidden-md-up" style="position:fixed;bottom:0;">
    <div class="navbar navbar-light bg-faded">
        <div class="btn-group btn-group-justified">

            <a href="javascript:void(0);" onclick="$('#reviews_writing_form').submit();" class="btn btn-toolbar btn-primary" style="color:#fff;">
                <i class="fa fa-cutlery"></i>
                <span>Write review</span>
            </a>

        </div>
    </div>
</div>

<div class="modal fade" id="reviews_writing_result_modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="reviews_writing_result_title">Waiting...</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div id="reviews_writing_result_content" class="alert alert-warning">
                    <i class="fa fa-refresh fa-spin fa-2x fa-fw"></i>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Latest compiled and minified CSS -->
<link href="<?php echo base_url('asset/rateyo/jquery.rateyo.min.css'); ?>" rel="stylesheet" type="text/css"/>
<script src="<?php echo base_url('asset/rateyo/jquery.rateyo.min.js'); ?>" type="text/javascript"></script>
<link href="<?php echo base_url('asset/select2/css/select2.min.css'); ?>" rel="stylesheet" type="text/css"/>
<script src="<?php echo base_url('asset/select2/js/select2.full.min.js'); ?>" type="text/javascript"></script>

<script src="<?php echo base_url('asset/js-libs/jquery.form.min.js'); ?>" type="text/javascript"></script>

<script type="text/javascript">var rateyo_reviews_score = parseFloat('<?php echo $bssh_score_rating; ?>'); var rateyo_reviews_price = ["1-10$", "10-20$", "20-40$", "40-60$", "60$ up"];</script>
<script src="<?php echo base_url('asset/ziamthai/js/foods/reviews_form.js?_=' . time()); ?>" type="text/javascript"></script>
<script src="<?php echo base_url('asset/ziamthai/js/foods/reviews_form_photo.js?_=' . time()); ?>" type="text/javascript"></script>
