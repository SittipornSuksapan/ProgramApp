
<?php
$get_q = isset($_GET['q']) ? $_GET['q'] : '';
$get_state = isset($_GET['state']) ? $_GET['state'] : '';
$get_map_position = isset($_GET['map_position']) ? $_GET['map_position'] : '';
?>

<!-- rateYo -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/rateYo/2.2.0/jquery.rateyo.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/rateYo/2.2.0/jquery.rateyo.min.js"></script>

<link href="<?php echo asset_url('zth-food/css/business/finder.css?_=' . TIME_NOW); ?>" rel="stylesheet" type="text/css"/>
<script src="<?php echo asset_url('zth-food/js/business/finder.js?_=' . TIME_NOW); ?>" type="text/javascript"></script>

<div class="container" style="margin-top:20px;">
    <div class="row">

        <div id="store_finder_content" class="col-lg-8">
            <h5 id="store_finder_title"></h5>

            <form id="store_finder_form">
                <input type="hidden" name="q" value="<?php echo $get_q; ?>">
                <input type="hidden" name="state" value="<?php echo $get_state; ?>">
                <input type="hidden" name="map_position" value="<?php echo $get_map_position; ?>">
            </form>

            <div id="store_finder_address" style="display:none;">
                <i class="fa fa-map-marker"></i>
                <label></label>
                <a href="javascript:geo_location(true);">Not my locations?</a>
            </div>

            <div id="find-bssh-result" style="display:none;font-size:0.8em;">
                <?php echo $this->lang->line('finder_results_total'); ?>
                <label rel="d_total"></label>
                <?php echo $this->lang->line('finder_results_unit'); ?>
                <span>(</span>
                <label rel="p_current"></label>
                <span>/</span>
                <label rel="p_total"></label>
                <?php echo $this->lang->line('finder_results_page'); ?>
                <span>)</span>
            </div>

            <p align="center"><img class="img-fluid" src="<?php echo base_url('asset/zth-marketing/ads/ads_320x120_chang.png'); ?>"></p>

            <div id="find-bssh"></div>

            <p align="center"><img class="img-fluid" src="<?php echo base_url('asset/zth-marketing/ads/ads_320x120_ttt.png'); ?>"></p>

            <div class="container" align="center" style="padding-bottom:30px;margin-bottom:30px;">
                <button id="find-bssh-loadmore" type="button" class="btn bg-primary btn-block" style="display:none;color:#fff;">
                    <span>Load More</span>
                </button>
            </div>

        </div>

        <div id="store_finder_sidebar" class="col-lg-4">

            <div id="store_finder_aside" style="height:100%;">
                <h5 class="hidden-md-down"><?php echo $this->lang->line('finder_on_map'); ?></h5>

                <div id="store_finder_gmap"></div>

                <div class="hidden-md-down" style="padding-top:20px;text-align:center;">
                    <p><img src="<?php echo base_url('asset/zth-marketing/ads/a1.png'); ?>"></p>
                </div>
            </div>

        </div>

    </div>
</div>

<script id="find-bssh-item" type="code">
    <?php include 'finder_item.php'; ?>
</script>

