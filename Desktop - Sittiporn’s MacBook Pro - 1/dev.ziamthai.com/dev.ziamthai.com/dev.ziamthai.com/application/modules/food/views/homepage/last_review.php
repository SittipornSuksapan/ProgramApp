
<script src="<?php echo asset_url('zth-food/js/homepage/last_review.js?_=' . TIME_NOW); ?>" type="text/javascript"></script>

<style type="text/css">
    #homepage_lastreview_content .last-review-item { padding:10px 5px;border-bottom:solid 1px #ccc; }
        #homepage_lastreview_content .last-review-item:first-child { padding-top:0; }
    #homepage_lastreview_content .last-review-item:last-child { padding-bottom:0;border-bottom:none; }
</style>

<div id="homepage_lastreview" style="display:none;margin-top:10px;margin-bottom:30px;">
    <div class="container">
        <div class="row" style="margin-bottom:10px;">
            <div class="col-xs-8 text-xs-left">
                <h3 class="text-blue" style="font-weight:bold;"><?php echo $this->lang->line('section_last_review'); ?></h3>
            </div>
            <div class="col-xs-4 text-xs-right">
            </div>
        </div>
    </div>
    <div class="container">
        <div id="homepage_lastreview_content" style="border:solid 1px #ccc;background:#fff;border-radius:4px;padding:10px;"></div>
    </div>
    <script id="homepage_lastreview_template" type="code">
        <?php include 'last_review_item.php'; ?>
    </script>
</div>
