


<div id="show_review_form" class="row" style="margin-bottom:20px;padding-top:15px;background-color:#fff5f5;border:solid 1px #ee7d80;">
    <form id="review_form" class="col-xs-12 form-review">

        <h1 style="font-size:1.2em;">
            <i class="fa fa-pencil"></i>
            <span><?php echo $this->lang->line('btn_review'); ?></span>
        </h1>

        <input type="hidden" name="shop" value="<?php echo $shop_info['id']; ?>">
        <input type="hidden" name="score" value="5">
        <input type="hidden" name="price_rate" value="1">

        <div class="row">
            <div class="col-lg-8">

                <div class="form-group" style="position: relative;">

                    <label class="form-review-username"><?php echo $access_user['name']; ?></label>

                    <div class="form-review-userimg">
                        <img src="<?php echo site_url('uploads/user_photo/thumb/' . $access_user['id']); ?>">
                    </div>

                    <input placeholder="Review Title..." type="text" name="title" class="form-review-title form-control">

                    <textarea id="reviews_writing_textarea" placeholder="Message..." rows="3" name="desc" class="form-review-desc form-control"></textarea>

                    <div class="form-review-actbar navbar navbar-light bg-faded">
                        <div class="row">
                            <div class="col-xs-7 col-md-7 col-lg-9">
                                <div class="btn-group">
                                    <button type="button" class="btn btn-link" onclick="$('#reviews_photo_browse').trigger('click');">
                                        <i class="fa fa-camera"></i>
                                    </button>
                                    <button type="button" class="btn btn-link" onclick="$('#review_form_recommend').slideToggle(200, function () {
                                                if ($('#review_form_recommend').css('display') == 'block') {
                                                    $('.select2-search__field').focus();
                                                    if (win.width() < 751) {
                                                        $('html, body').animate({scrollTop: ($('.select2-search__field').offset().top - 160)}, 600);
                                                    }
                                                }
                                            });">
                                        <i class="fa fa-bars"></i>
                                        <span class="hidden-md-down"><?php echo $this->lang->line('label_recommend'); ?></span>
                                    </button>
                                </div>
                            </div>
                            <div class="col-xs-5 col-md-5 col-lg-3 text-xs-right">
                                <button id="reviews_writing_submit" type="submit" class="btn bg-primary btn-sm btn-block" style="color:#fff;">
                                    <span><?php echo $this->lang->line('btn_post'); ?></span>
                                    <i class="fa fa-bullhorn"></i>
                                </button>
                                <button id="reviews_writing_loading" type="button" class="btn bg-link btn-sm btn-block text-blue" style="display:none;">
                                    <i class="fa fa-circle-o-notch fa-spin fa-fw"></i>
                                </button>
                            </div>
                        </div>

                    </div>
                </div>

                <div id="reviews_writing_result" class="form-group alert alert-warning" style="display:none;"></div>

            </div>
            <div class="col-lg-4">
                <div class="row">
                    <div class="col-xs-6 col-md-12">
                        <div class="form-group">
                            <label class="form-control-label">
                                <?php echo $this->lang->line('label_score'); ?>
                                <div id="rateYo_counter" style="display:inline-block;vertical-align:middle;font-size:1em;font-weight:bold;">5</div>
                            </label>
                            <div class="row">
                                <div class="col-md-6">
                                    <div id="rateYo_reviews"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-6 col-md-12">
                        <div class="form-group">
                            <label class="form-control-label">
                                <?php echo $this->lang->line('label_price'); ?>
                                <div id="rateYo_price_rate" style="display:inline-block;vertical-align:middle;font-size:1em;font-weight:bold;">$1-10</div>
                            </label>
                            <div class="row">
                                <div class="col-md-12">
                                    <div id="rateYo_price"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>

        <div id="review_form_recommend" class="row" style="display:none;">
            <div class="col-md-8">

                <div class="form-group">
                    <label class="form-control-label">
                        <?php echo $this->lang->line('select_recommend_menu'); ?>
                    </label>
                    <select id="reviews_menu_list" multiple="multiple" name="recommend_menu[]" style="width:100%;"></select>
                </div>

            </div>
        </div>

        <div id="reviews_photo_list" class="row"></div>

    </form>
</div>

<?php
include 'review_photo.php';
