

<script src="<?php echo base_url('asset/ziamthai/js/foods/reviews_list.js?_=' . time()); ?>" type="text/javascript"></script>

<div class="container" style="margin-top:15px;">

    <h5 id="store_finder_title"></h5>

    <div id="store_finder_address" style="display:none;">
        <i class="fa fa-map-marker"></i>
        <label></label>
        <a href="javascript:geo_location(true);">Not my locations?</a>
    </div>

    <div id="find-bsrh-result" style="display:none;font-size:0.8em;">
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

    <div id="find-bsrh" class="grid-rv"></div>

    <div id="find-bsrh-loader" class="container">
        <div class="alert alert-info" align="center">
            <i class="fa fa-2x fa-spinner fa-spin fa-circle-o"></i>
        </div>
    </div>

</div>

<script id="find-bsrh-item" type="code">
    <?php include('reviews_list_item.php'); ?>
</script>

