
<?php if (in_array('blog', $access_menu['head']) || ($access_menu['level'] <= 3)) { ?>
<!-- Blog -->
    <a class="btn" data-toggle="collapse" data-parent="#tpl_sidebar" href="#sidebar_mnu_blog">
        <i class="fa fa-pencil-square-o"></i>
        <?php echo $this->lang->line('sidebar_mnu_blog'); ?>
        <i class="collapse-icon fa fa-chevron-down"></i>
    </a>
    <div id="sidebar_mnu_blog" class="collapse <?php
    if (strpos($sidebar_mnu_active, 'blog') !== false) {
        echo 'in';
    }
    ?>">
        <div class="btn-group btn-group-vertical btn-block">
<?php if (in_array('blog_new', $access_menu['policy_name']) || ($access_menu['level'] <= 3)) { ?>
            <a class="btn <?php
            if ($sidebar_mnu_active == 'blog_add') {
                echo 'active';
            }
            ?>" href="<?php echo site_url($access_module . '/blog/writing'); ?>">
                <i class="fa fa-plus-circle"></i>
                <?php echo $this->lang->line('sidebar_mnu_blog_add'); ?>
            </a>
<?php } ?>
<?php if (in_array('blog_search', $access_menu['policy_name']) || ($access_menu['level'] <= 3)) { ?>
						<a class="btn <?php
            if ($sidebar_mnu_active == 'blog_search') {
                echo 'active';
            }
            ?>" href="<?php echo site_url($access_module . '/blog'); ?>">
                <i class="fa fa-search"></i>
                <?php echo $this->lang->line('sidebar_mnu_blog_search'); ?>
            </a>
<?php } ?>
        </div>
    </div>
<?php } ?>
