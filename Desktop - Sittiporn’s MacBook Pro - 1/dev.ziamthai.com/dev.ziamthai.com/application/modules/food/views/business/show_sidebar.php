
<div id="store_show_sidebar_md">

    <div class="card">
        <img class="headline-shop-logo" src="<?php echo site_url('uploads/shop_photo/thumb/' . $shop_info['id'] . '/imgfront'); ?>">

        <div  class="hidden-sm-down">
            <h1 class="headline-shop-name"><?php echo $shop_info['name']; ?></h1>

            <div class="headline-shop-rating text-xs-center">
                <div id="rateYo_store_rates" style="font-size:21px;">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                </div>
                <div id="rateYo_store_rate" style="display:none;margin:auto;"></div>
            </div>
        </div>

    </div>

    <div class="hidden-sm-down">
        <div class="sidebar-shop-menu btn-group btn-group-vertical btn-block">

            <a href="<?php echo $show_url; ?>" class="btn btn-secondary<?php
            if ($shop_menu_active == 'home') {
                echo ' active';
            }
            ?>" style="border-radius: 0px !important;">
                <i class="fa fa-home"></i>
                <?php echo $lang_sidebar_menu['home']; ?>
            </a>

            <a href="<?php echo $review_url; ?>" class="btn btn-secondary<?php
            if ($shop_menu_active == 'review') {
                echo ' active';
            }
            ?>">
                <i class="fa fa-comments"></i>
                <?php echo $lang_sidebar_menu['review']; ?>
            </a>

            <a href="<?php echo $blog_url; ?>" class="btn btn-secondary<?php
            if ($shop_menu_active == 'blog') {
                echo ' active';
            }
            ?>">
                <i class="fa fa-pencil-square"></i>
                <?php echo $lang_sidebar_menu['blog']; ?>
            </a>

            <a href="<?php echo $posts_url; ?>" class="btn btn-secondary<?php
            if ($shop_menu_active == 'posts') {
                echo ' active';
            }
            ?>">
                <i class="fa fa-bullhorn"></i>
                <?php echo $lang_sidebar_menu['posts']; ?>
            </a>

            <a href="<?php echo $menu_url; ?>" class="btn btn-secondary<?php
            if ($shop_menu_active == 'menu') {
                echo ' active';
            }
            ?>">
                <i class="fa fa-book"></i>
                <?php echo $lang_sidebar_menu['food_menu']; ?>
            </a>

        </div>
    </div>

</div>




<!-- Nav tabs -->
<ul class="nav nav-tabs" role="tablist" style="margin-top:10px;">
    <li class="nav-item">
        <a class="nav-link active" data-toggle="tab" href="#store_show_tab_map" role="tab">
            <i class="fa fa-map"></i>
        </a>
    </li>
    <li class="nav-item">
        <a class="nav-link" data-toggle="tab" href="#store_show_tab_workhour" role="tab">
            <i class="fa fa-clock-o"></i>
        </a>
    </li>
    <li class="nav-item">
        <a class="nav-link" data-toggle="tab" href="#store_show_tab_info" role="tab">
            <i class="fa fa-info-circle"></i>
        </a>
    </li>
</ul>

<!-- Tab panes -->
<div class="tab-content" style="padding:10px;border:solid 1px #ddd;border-top:none;background-color:#fff;">

    <div class="tab-pane active" id="store_show_tab_map" role="tabpanel">

        <div id="store_show_maps"  style="display:none;height:160px;border-radius: 6px !important;overflow:hidden;border:solid 1px #ccc;">
            <div id="store_show_maps_canvas" style="height:160px;"></div>
        </div>

        <div id="store_show_contact" class="sidebar-shop-contact" style="display:none;margin-top:5px;">

            <a id="store_contact_address" class="btn btn-sm btn-link" style="display:none;">
                <i class="fa fa-address-card"></i>
                <span></span>
            </a>

            <a id="store_contact_phone" class="btn btn-sm btn-link" style="display:none;">
                <i class="fa fa-phone"></i>
                <span></span>
            </a>

            <a id="store_contact_email" class="btn btn-sm btn-link" style="display:none;">
                <i class="fa fa-envelope"></i>
                <span></span>
            </a>

            <a id="store_contact_website" class="btn btn-sm btn-link" style="display:none;">
                <i class="fa fa-link"></i>
                <span><?php echo $lang_sidebar_menu['link_website']; ?></span>
            </a>

        </div>

    </div>

    <div class="tab-pane" id="store_show_tab_workhour" role="tabpanel">
        <div id="store_work_hours_list"  style="display:none;margin-bottom:15px;">
            <ul></ul>
        </div>
    </div>

    <div class="tab-pane" id="store_show_tab_info" role="tabpanel">
        <div id="store_show_about_detail" class="card-block" style="padding:10px;max-height: 200px;font-size:0.8em;color:#444;overflow:hidden;overflow-y:auto;"></div>
    </div>

</div>
