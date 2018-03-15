
<style type="text/css">
    .zthc_media_item_preview { text-align:center; }
    .zthc_media_item_preview > .item { position:relative;height:110px; }
    .zthc_media_item_preview > .item > .video { display:block;width:100%;height:90px; }
    .zthc_media_item_preview > .item > .photo { display:block;width:100%;height:90px;background-repeat:no-repeat;background-position:center;background-size:cover; }
    .zthc_media_item_preview > .item > .handler { position:absolute;right:17px;top:2px; }

    #posts_show_list .card > .card-block { padding:10px 20px; }

    .posts--masonry-photo { display:block;width:100%; }
    .posts--masonry-photo .photo { display:block;width:100%; }

    /* 2 columns */
    .grid-item--width1 { margin:2%;width:96%; }
    .grid-item--width1 > .video { height: 360px; }

    .grid-item--width2 { width:48.5%; }
    .grid-item--width2 > .video { height: 240px; }

</style>

<script src="<?php echo asset_url('js-libs/jquery.form.min.js'); ?>" type="text/javascript"></script>

<script src="<?php echo asset_url('zth-client/js/media/uploader.js?_=' . TIME_NOW); ?>" type="text/javascript"></script>
<script src="<?php echo asset_url('zth-client/js/timeline/writing.js?_=' . TIME_NOW); ?>" type="text/javascript"></script>

<script src="https://unpkg.com/imagesloaded@4.1/imagesloaded.pkgd.min.js"></script>
<script src="https://unpkg.com/masonry-layout@4/dist/masonry.pkgd.min.js"></script>

<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<link href="<?php echo asset_url('zth-core/css/video_player.css?_=' . TIME_NOW); ?>" rel="stylesheet" type="text/css"/>
<script src="<?php echo asset_url('zth-core/js/video_player.js?_=' . TIME_NOW); ?>" type="text/javascript"></script>

<link href="<?php echo asset_url('zth-food/css/timeline/posts.css?_=' . TIME_NOW); ?>" rel="stylesheet" type="text/css"/>
<script src="<?php echo asset_url('zth-food/js/timeline/posts.js?_=' . TIME_NOW); ?>" type="text/javascript"></script>

<?php
$posts_public = isset($posts_data['posts_public']) ? intval($posts_data['posts_public']) : 1;
?>

<form id = "posts_form" class = "container-fluid" style = "margin-top:15px;margin-bottom:15px;">
    <div class = "row">
        <div class = "col-md-12 offset-lg-1 col-lg-10 offset-xl-3 col-xl-6">

            <h1 style = "padding:10px 0px;">
                <?php
                echo $this->lang->line('page_title');

                if (!empty($posts_data['posts_title'])) {
                    echo ': <span style="font-size:0.8em;color:#666;">' . $posts_data['posts_title'] . '</span>';
                }
                ?>
            </h1>

            <div class="form-group">
                <?php
                if (!empty($posts_data['posts_id'])) {
                    echo '<input type="hidden" name="id" value="' . $posts_data['posts_id'] . '">';
                }
                ?>
                <textarea class="form-control form-control-lg" name="highlight" placeholder="<?php echo $this->lang->line('form_label_highlight'); ?>" rows="4"><?php
                    if (!empty($posts_data['posts_highlight'])) {
                        echo $posts_data['posts_highlight'];
                    }
                    ?></textarea>
            </div>

            <div class="form-group row">
                <div class="col-md-6 col-lg-8">
                    <div class="btn-group">

                        <button id="posts_media_browse" class="btn btn-secondary" type="button">
                            <i class="fa fa-picture-o"></i>
                            <span class="hidden-lg-down" style="font-size:0.9em;">
                                <?php echo $this->lang->line('form_label_img_upload') . '/' . $this->lang->line('form_label_vdo_upload'); ?>
                            </span>
                        </button>

                    </div>
                    <div class="hidden-sm-up" style="height:15px;">&nbsp;</div>
                </div>
                <div class="col-md-6 col-lg-4">
                    <div class="btn-group float-xs-left float-md-right" data-toggle="buttons" style="background:#fff;border-radius:6px;">

                        <label for="posts_public_false" class="btn btn-outline-success <?php
                        if ($posts_public < 1) {
                            echo 'active';
                        }
                        ?>">
                            <input type="radio" name="public" id="posts_public_false" value="0"  <?php
                            if ($posts_public < 1) {
                                echo 'checked';
                            }
                            ?>>
                            <i class="fa fa-eye-slash"></i>
                        </label>

                        <label for="posts_public_true" class="btn btn-outline-success  <?php
                        if ($posts_public > 0) {
                            echo 'active';
                        }
                        ?>">
                            <input type="radio" name="public" id="posts_public_true" value="1" <?php
                            if ($posts_public > 0) {
                                echo 'checked';
                            }
                            ?>>
                            <span><?php echo $this->lang->line('form_label_public_true'); ?></span>
                        </label>

                    </div>
                </div>
            </div>

            <div class="form-group">
                <button id="posts_btn_submit" type="submit" class="btn btn-primary">
                    <i class="fa fa-save"></i>
                    <span><?php echo $this->lang->line('form_btn_submit'); ?></span>
                </button>
                <button id="posts_btn_indicator" type="button" class="btn btn-outline-primary"style="display:none;">
                    <i class="fa fa-circle-o-notch fa-spin fa-fw"></i>
                </button>
                <div id="posts_form_result" class="alert alert-danger" style="display:none;"></div>
            </div>

        </div>

        <div class="col-md-12 offset-lg-1 col-lg-10 offset-xl-3 col-xl-6">
            <div id="posts_media_progress"></div>
            <div id="posts_media_preview" class="row" style="margin-top:15px;"></div>
        </div>

    </div>
</form>

<div class="container-fluid">
    <div class="col-md-12 offset-lg-1 col-lg-10 offset-xl-3 col-xl-6">
        <div id="posts_show_list" class="row" data-shop="<?php echo $access_workspace['id']; ?>"></div>
    </div>
</div>

<script id="posts_template_blog" type="code"><?php include ROOT_PATH . '/application/modules/food/views/timeline/posts_template_blog.php'; ?></script>
<script id="posts_template_review" type="code"><?php include ROOT_PATH . '/application/modules/food/views/timeline/posts_template_review.php'; ?></script>
<script id="posts_template_posts" type="code"><?php include ROOT_PATH . '/application/modules/food/views/timeline/posts_template_posts.php'; ?></script>

