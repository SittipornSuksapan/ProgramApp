
<script src="<?php echo asset_url('zth-food/js/business/blog_show.js?_=' . TIME_NOW); ?>" type="text/javascript"></script>

<style type="text/css">
    #blog_show_content .container img,
    #blog_show_content .container audio,
    #blog_show_content .container video,
    #blog_show_content .container iframe { max-width: 100% !important; }
    #blog_show_content .container img { height: auto !important; }
</style>

<div id="blog_show" data-review-id="<?php echo $blog_info['id']; ?>" class="row">
    <div id="blog_show_content" class="col-sm-12" style="margin-bottom:15px;">

        <div style="border:solid 1px #ccc;background:#fff;border-radius:4px;">
            <div class="nav navbar" style="padding:8px;background:#eef;border-radius:4px 4px 0px 0px;border-bottom:solid 1px #ccc;">
                <div class="col-xs-2 col-md-2 col-lg-1 text-xs-center" style="padding:0;padding-bottom:5px;">
                    <img src="<?php echo base_url('uploads/icon/users_256.png'); ?>" class="img-fluid" style="max-height:48px;border-radius:50%;filter: gray;filter: grayscale(1);-webkit-filter: grayscale(1);">
                </div>

                <div class="col-xs-7 col-md-7 col-lg-8">
                    <div class="flash-loading-bar" style="margin-top:10px;margin-bottom:10px;"></div>
                    <div class="flash-loading-bar" style="margin-bottom:10px;"></div>
                </div>
            </div>
            <div class="container" style="padding:20px;color:#444;">
                <div class="flash-loading-bar" style="margin-bottom:10px;"></div>
                <div class="flash-loading-bar" style="margin-bottom:10px;"></div>
                <div class="flash-loading-bar" style="margin-bottom:10px;"></div>
                <div class="flash-loading-bar" style="margin-bottom:10px;"></div>
            </div>
        </div>

    </div>
</div>

<script id="blog_show_template" type="code">
    <?php include 'blog_show_template.php'; ?>
</script>
