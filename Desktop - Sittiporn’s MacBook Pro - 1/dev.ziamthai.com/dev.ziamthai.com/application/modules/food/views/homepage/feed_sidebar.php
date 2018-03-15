
<link href="<?php echo asset_url('zth-food/css/homepage_sidebar.css?_=' . TIME_NOW); ?>" rel="stylesheet" type="text/css"/>

<div id="sidebar_menu" class="btn-group btn-group-vertical btn-block">

    <?php if (!empty($access_user['id'])) { ?>
        <a class="btn btn-link" href="<?php echo site_url('accounts'); ?>" style="margin-bottom:15px;height:auto;">
            <i class="access-user-picture" style="background-image:url(<?php echo site_url('uploads/user_photo/thumb/' . $access_user['id']); ?>);"></i>
            <span class="access-user-name"><?php echo $access_user['name']; ?></span>
        </a>
    <?php } else { ?>
        <a class="btn btn-link active" href="#" data-toggle="modal" data-target="#login_modal">
            <i class="fa fa-user-circle"></i>
            <span><?php echo $this->lang->line('sbmnu_signin'); ?></span>
        </a>
        <a class="btn btn-link" href="<?php echo site_url('accounts/pages/signup'); ?>" style="margin-bottom:15px;">
            <span><?php echo $this->lang->line('sbmnu_signup'); ?></span>
        </a>
    <?php } ?>

    <a class="btn btn-link <?php
    if ($sbmnu_active == 'home') {
        echo 'active';
    }
    ?>" href="<?php echo site_url($access_module); ?>">
        <i class="fa fa-home"></i>
        <span><?php echo $this->lang->line('sbmnu_home'); ?></span>
    </a>

    <a class="btn btn-link <?php
    if ($sbmnu_active == 'feed') {
        echo 'active';
    }
    ?>" href="<?php echo site_url($access_module.'/home/feed'); ?>">
        <i class="fa fa-newspaper-o"></i>
        <span><?php echo $this->lang->line('sbmnu_feed'); ?></span>
    </a>

    <a class="btn btn-link <?php
    if ($sbmnu_active == 'review') {
        echo 'active';
    }
    ?>" href="<?php echo site_url($access_module . '/home/feed/review'); ?>">
        <i class="fa fa-comments"></i>
        <span><?php echo $this->lang->line('sbmnu_review'); ?></span>
    </a>

    <a class="btn btn-link <?php
    if ($sbmnu_active == 'blog') {
        echo 'active';
    }
    ?>" href="<?php echo site_url($access_module . '/home/feed/blog'); ?>">
        <i class="fa fa-pencil-square"></i>
        <span><?php echo $this->lang->line('sbmnu_blog'); ?></span>
    </a>

    <a class="btn btn-link <?php
    if ($sbmnu_active == 'posts') {
        echo 'active';
    }
    ?>" href="<?php echo site_url($access_module . '/home/feed/posts'); ?>">
        <i class="fa fa-bullhorn"></i>
        <span><?php echo $this->lang->line('sbmnu_posts'); ?></span>
    </a>

</div>
