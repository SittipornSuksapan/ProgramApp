
<script src="<?php echo asset_url('zth-food/js/homepage/last_review_1.js?_=' . TIME_NOW); ?>" type="text/javascript"></script>

<div id="homepage_lastreview" style="min-height:640px;">
    <div class="container">
        <div class="row" style="margin-top:30px;margin-bottom:10px;">
            <div class="col-xs-6 col-md-6 text-xs-left text-md-left">
                <h3 class="text-blue" style="font-weight:bold;"><?php echo $this->lang->line('section_last_review'); ?></h3>
            </div>
            <div class="col-xs-6 col-md-6 text-xs-right text-md-right">
            </div>
        </div>
    </div>
    <div class="container">
        <div id="homepage_lastreview_content" class="row"></div>
    </div>
    <script id="homepage_lastreview_template" type="code">
        <?php include 'last_review_item_1.php'; ?>
    </script>
</div>

