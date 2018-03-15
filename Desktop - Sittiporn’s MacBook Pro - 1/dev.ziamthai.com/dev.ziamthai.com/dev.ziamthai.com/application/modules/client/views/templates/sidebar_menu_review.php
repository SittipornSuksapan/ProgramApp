
<?php if (in_array('review', $access_menu['head']) || ($access_menu['level'] <= 3)) {
    ?>
<!-- Review & Timeline Post -->
    <a class="btn <?php
    if ($sidebar_mnu_active == 'review_search') {
        echo 'active';
    }
    ?>" href="<?php echo site_url($access_module . '/review'); ?>">
        <i class="fa fa-comments"></i>
        <?php echo $this->lang->line('sidebar_mnu_review_manage'); ?>
    </a>
<?php } ?>
<?php if (in_array('timeline', $access_menu['head']) || ($access_menu['level'] <= 3))  {?>
    <!-- Menu Timeline -->
    <a class="btn" data-toggle="collapse" data-parent="#tpl_sidebar" href="#sidebar_mnu_timeline">
        <i class="fa fa-clock-o"></i>
        <?php echo $this->lang->line('sidebar_mnu_timeline'); ?>
        <i class="collapse-icon fa fa-chevron-down"></i>
    </a>
		
    <div id="sidebar_mnu_timeline" class="collapse <?php
    if (strpos($sidebar_mnu_active, 'timeline') !== false) {
        echo 'in';
    }
    ?>">
        <div class="btn-group btn-group-vertical btn-block">
<?php if (in_array('timeline_feed', $access_menu['policy_name']) || ($access_menu['level'] <= 3))  {?>

						<a class="btn <?php
            if ($sidebar_mnu_active == 'timeline_posts') {
                echo 'active';
            }
            ?>" href="<?php echo site_url($access_module . '/timeline'); ?>">
                <i class="fa fa-bullhorn"></i>
                <?php echo $this->lang->line('sidebar_mnu_timeline_posts'); ?>
            </a>
<?php } ?>
<?php if (in_array('timeline_publish', $access_menu['policy_name']) || ($access_menu['level'] <= 3))  {?>
						<a class="btn <?php
            if ($sidebar_mnu_active == 'timeline_search') {
                echo 'active';
            }
            ?>" href="<?php echo site_url($access_module . '/timeline/search'); ?>">
                <i class="fa fa-bullseye"></i>
                <?php echo $this->lang->line('sidebar_mnu_timeline_search'); ?>
            </a>
<?php } ?>
        </div>
    </div>
<?php } ?>
