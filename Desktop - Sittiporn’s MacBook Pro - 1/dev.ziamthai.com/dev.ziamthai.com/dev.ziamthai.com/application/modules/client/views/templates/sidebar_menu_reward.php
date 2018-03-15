        
<?php if (in_array('reward', $access_menu['head']) || ($access_menu['level'] <= 3)) {?>
    <!-- Menu Reward Point -->
    <a class="btn" data-toggle="collapse" data-parent="#tpl_sidebar" href="#sidebar_mnu_reward">
        <i class="fa fa-gift"></i>
        <?php echo $this->lang->line('sidebar_mnu_reward'); ?>
        <i class="collapse-icon fa fa-chevron-down"></i>
    </a>
    <div id="sidebar_mnu_reward" class="collapse <?php
    if (strpos($sidebar_mnu_active, 'reward') !== false) {
        echo 'in';
    }
    ?>">
        <div class="btn-group btn-group-vertical btn-block">
<?php if (in_array('reward_receive', $access_menu['policy_name']) || ($access_menu['level'] <= 3)) {?>
            <a class="btn <?php
            if ($sidebar_mnu_active == 'reward_points') {
                echo 'active';
            }
            ?>" href="<?php echo site_url($access_module . '/reward/gen_points'); ?>">
                <i class="fa fa-arrow-circle-right" style="color:#080;"></i>
                <?php echo $this->lang->line('sidebar_mnu_reward_points'); ?>
            </a>
<?php } ?>					
<?php if (in_array('reward_redeem', $access_menu['policy_name']) || ($access_menu['level'] <= 3)) {?>
            <a class="btn <?php
            if ($sidebar_mnu_active == 'reward_redeem') {
                echo 'active';
            }
            ?>" href="<?php echo site_url($access_module . '/reward/redeem_points'); ?>">
                <i class="fa fa-arrow-circle-left" style="color:#800;"></i>
                <?php echo $this->lang->line('sidebar_mnu_reward_redeem'); ?>
            </a>
<?php } // reward_redeem ?>					
<?php if (in_array('reward_setup', $access_menu['policy_name']) || ($access_menu['level'] <= 3)) {?>
            <a class="btn <?php
            if ($sidebar_mnu_active == 'reward_config') {
                echo 'active';
            }
            ?>" href="<?php echo site_url($access_module . '/reward/config_form'); ?>">
                <i class="fa fa-cog"></i>
                <?php echo $this->lang->line('sidebar_mnu_reward_config'); ?>
            </a>
<?php } // reeward_config?>
        </div>
    </div>
<?php } // reward ?>
