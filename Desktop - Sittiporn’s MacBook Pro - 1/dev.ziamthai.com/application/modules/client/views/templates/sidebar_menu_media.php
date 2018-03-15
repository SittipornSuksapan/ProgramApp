     
<?php
if ((in_array('media', $access_menu['head']) || ($access_menu['level'] <= 3)) &&
        (!empty($workspace_id))) {
    ?>
    <!-- Menu Media -->
    <a class="btn" data-toggle="collapse" data-parent="#tpl_sidebar" href="#sidebar_mnu_video">
        <i class="fa fa-plug"></i>
        <?php echo $this->lang->line('sidebar_mnu_media'); ?>
        <i class="collapse-icon fa fa-chevron-down"></i>
    </a>
    <div id="sidebar_mnu_video" class="collapse">
        <div class="btn-group btn-group-vertical btn-block">
            <a class="btn" href="<?php echo site_url($access_module . '/photo'); ?>">
                <i class="fa fa-photo"></i>
                <?php echo $this->lang->line('sidebar_mnu_media_photo'); ?>
            </a>
            <a class="btn" href="<?php echo site_url($access_module . '/video'); ?>">
                <i class="fa fa-video-camera"></i>
                <?php echo $this->lang->line('sidebar_mnu_media_video'); ?>
            </a>
        </div>
    </div>
<?php } ?>
