
<div class="card" style="position:relative;">

    <div class="store-show-imghead" style="background-image: url(<?php echo site_url('uploads/shop_photo/large/' . $shop_info['id'] . '/imghead'); ?>);">
    </div>

    <div class="store-show-todayhour">
        <button type="button" class="btn btn-link store_show_hour_indicator">
            <i class="fa fa-circle-o-notch fa-spin"></i>
        </button>
        <div class="store_show_hour_status" style="display:none;">
            <button type="button" class="display_status btn btn-link">
                <span class="closing">Closing on</span>
                <span class="opening">Opening on</span>
                <span class="next_day" style="display:none;">(next day)</span>
            </button>
            <button type="button" class="display_time btn btn-secondary">
                <span></span>
            </button>
        </div>
    </div>

    <div class="store-show-fblike">
        <div class="fb-like" data-href="<?php echo $show_url; ?>" data-layout="button_count" data-action="like" data-size="large" data-show-faces="true" data-share="true"></div>
    </div>

</div>
