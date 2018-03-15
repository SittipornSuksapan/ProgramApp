
<h1 style="margin:0;font-size:1.2em;">
    <?php echo $shop_info['name']; ?>
</h1>

<div id="rateYo_store_rates2" style="font-size:21px;">
    <i class="fa fa-star"></i>
    <i class="fa fa-star"></i>
    <i class="fa fa-star"></i>
    <i class="fa fa-star"></i>
    <i class="fa fa-star"></i>
</div>

<div id="rateYo_store_rate2" style="display:none;margin:auto;"></div>

<div id="store_show_cover_navbar" class="row">
    <div class="col-xs-12">
        <div class="btn-group btn-group-justified">
            <a class="btn btn-sm btn-secondary text-blue<?php
            if ($shop_menu_active == 'home') {
                echo ' active';
            }
            ?>" href="<?php echo $show_url; ?>">
                <i class="fa fa-home"></i>
                <span><?php echo $lang_sidebar_menu['home']; ?></span>
            </a>

            <a class="btn btn-sm btn-secondary text-blue<?php
            if ($shop_menu_active == 'blog') {
                echo ' active';
            }
            ?>" href="<?php echo $blog_url; ?>">
                <i class="fa fa-pencil-square"></i>
                <span><?php echo $lang_sidebar_menu['blog']; ?></span>
            </a>

            <a class="btn btn-sm btn-secondary text-blue<?php
            if ($shop_menu_active == 'review') {
                echo ' active';
            }
            ?>" href="<?php echo $review_url; ?>">
                <i class="fa fa-comments"></i>
                <span><?php echo $lang_sidebar_menu['review']; ?></span>
            </a>

            <a class="btn btn-sm btn-secondary text-blue<?php
            if ($shop_menu_active == 'menu') {
                echo ' active';
            }
            ?>" href="<?php echo $menu_url; ?>">
                <i class="fa fa-book"></i>
                <span><?php echo $lang_sidebar_menu['menu']; ?></span>
            </a>    
        </div>
    </div>
</div>
