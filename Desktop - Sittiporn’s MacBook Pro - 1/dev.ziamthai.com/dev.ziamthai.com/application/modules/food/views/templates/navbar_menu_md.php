
<div class="row hidden-sm-down">

    <div class="col-md-6">
        <form id="tpl_store_finder_form" action="<?php echo site_url('food/find'); ?>" class="form-inline" method="GET">
            <div class="form-group" style="position:relative;">
                <div class="input-group" style="z-index:100;">
                    <div class="input-group-btn">
                        <button type="button" class="btn btn-secondary" data-toggle="modal" data-target="#location_modal" title="<?php echo $lang_navbar['location_finder']; ?>" style="height:40px;">
                            <i class="fa fa-map-marker text-blue" style="font-size:1.6em;width:16px;"></i>
                        </button>
                    </div>
                    <input id="tpl_navbar_search_input" type="search" class="form-control" name="q" value="<?php echo $search_q; ?>" placeholder="<?php echo $lang_navbar['placeholder_search']; ?>" style="height:40px;">
                </div>
                <button type="submit" class="btn" style="z-index:101;position:absolute;right:0;top:0;padding:8px;background:none;">
                    <i class="fa fa-search text-gray" style="font-size:1.3em;"></i>
                </button>
            </div>
            <input type="hidden" name="state" value="<?php echo $search_loc; ?>">
            <input type="hidden" name="map_position" value="<?php echo $search_pos; ?>">
        </form>
    </div>

    <div class="col-md-6" style="text-align: right;">
        <div class="btn-group">

            <?php if (empty($access_user['id'])) { ?>
                <a href="#" class="btn btn-link text-pink" data-toggle="modal" data-target="#login_modal">
                    <i class="fa fa-user-circle" style="font-size:1.3em;line-height:1.2em;"></i>
                    <span style="font-size:1.2em;line-height:1em;"><?php echo $lang_navbar['link_login']; ?></span>
                </a>
            <?php } else { ?>
                <div class="btn-group dropdown-hover">
                    <button class="btn btn-link text-pink dropdown-toggle" type="button" data-toggle="dropdown" style="position:relative;padding-left:36px;height:42px;">
                        <i style="position:absolute;top:0px;left:0px;margin:4px;width:32px;height:32px;background-image:url(<?php echo site_url('uploads/user_photo/thumb/' . $access_user['id']); ?>);background-repeat:no-repeat;background-size:cover;background-position:center;border-radius:16px;"></i>
                        <span class="hidden-md-down" style="display:inline-block;max-width:140px;padding-left:4px;font-size:1.2em;line-height:1.3em;overflow:hidden;vertical-align:middle;"><?php echo $access_user['name']; ?></span>
                    </button>
                    <div class="dropdown-menu dropdown-menu-right">
                        <a class="dropdown-item" href="<?php echo site_url('accounts/pages/my'); ?>">
                            <?php echo $lang_navbar['my_accounts']; ?>
                        </a>
                        <a class="dropdown-item" href="<?php echo site_url('accounts/pages/logout'); ?>">
                            <?php echo $lang_navbar['link_logout']; ?>
                        </a>
                    </div>
                </div>
            <?php } ?>

            <div class="btn-group dropdown-hover">
                <button class="btn btn-link text-pink dropdown-toggle no-arrow" type="button" data-toggle="dropdown">
                    <i class="fa fa-bars" style="font-size:1.3em;line-height:1.2em;"></i>
                    <span class="hidden-md-down" style="font-size:1.2em;line-height:1.3em;"><?php echo $lang_navbar['link_menu']; ?></span>
                </button>
                <div class="dropdown-menu dropdown-menu-right">
                    <a class="dropdown-item <?php
                    if ($sbmnu_active == 'home') {
                        echo 'active';
                    }
                    ?>" href="<?php echo site_url('food/home'); ?>">
                        <i class="fa fa-home"></i>
                        <span><?php echo $lang_navbar['link_home']; ?></span>
                    </a>
                    <a class="dropdown-item <?php
                    if ($sbmnu_active == 'feed') {
                        echo 'active';
                    }
                    ?>" href="<?php echo site_url('food/home/feed'); ?>">
                        <i class="fa fa-newspaper-o"></i>
                        <span><?php echo $lang_navbar['link_feed']; ?></span>
                    </a>
                    <a class="dropdown-item <?php
                    if ($sbmnu_active == 'review') {
                        echo 'active';
                    }
                    ?>" href="<?php echo site_url('food/home/feed/review'); ?>">
                        <i class="fa fa-comments"></i>
                        <span><?php echo $lang_navbar['link_review']; ?></span>
                    </a>
                    <a class="dropdown-item <?php
                    if ($sbmnu_active == 'blog') {
                        echo 'active';
                    }
                    ?>" href="<?php echo site_url('food/home/feed/blog'); ?>">
                        <i class="fa fa-pencil-square"></i>
                        <span><?php echo $lang_navbar['link_blog']; ?></span>
                    </a>
                    <a class="dropdown-item <?php
                    if ($sbmnu_active == 'posts') {
                        echo 'active';
                    }
                    ?>" href="<?php echo site_url('food/home/feed/posts'); ?>">
                        <i class="fa fa-bullhorn"></i>
                        <span><?php echo $lang_navbar['link_posts']; ?></span>
                    </a>
                </div>
            </div>

        </div>
    </div>

</div>
