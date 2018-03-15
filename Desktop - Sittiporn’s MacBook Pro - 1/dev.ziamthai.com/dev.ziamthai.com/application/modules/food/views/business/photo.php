
<?php
//1Q2w3E4R$

$store_prefix = $shop_info['id'] . '/' . rawurlencode($shop_info['name']);
$show_url = site_url($access_module . '/store/show/' . $store_prefix);
?>

<div style="position:relative;min-height:48px;">

    <h5 style="padding-top:15px;">
        <?php echo $this->lang->line('headline_title'); ?>
    </h5>

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

</div>

<div id="show_marketing_photo">
    <div id="store_show_photo_content" class="row"></div>
</div>