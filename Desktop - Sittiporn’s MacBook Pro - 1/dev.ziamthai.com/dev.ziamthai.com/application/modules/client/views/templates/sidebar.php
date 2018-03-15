
<div id="tpl_sidebar" data-layout-2col="two">
		<?php if (!empty($workspace_id)) { ?>
    <div class="btn-group btn-group-vertical btn-block">

        <!-- Dashboard -->
        <a class="btn <?php
        if ($sidebar_mnu_active == 'dashboard') {
            echo 'active';
        }
        ?>" href="<?php echo site_url($access_module . '/home'); ?>">
            <i class="fa fa-dashboard"></i>
            <?php echo $this->lang->line('sidebar_mnu_dashboard'); ?>
        </a>

        <!-- Order -->
        <?php include 'sidebar_menu_order.php'; ?>

        <!-- Reward -->
        <?php include 'sidebar_menu_reward.php'; ?>

        <!-- Review & Timeline Post -->
        <?php include 'sidebar_menu_review.php'; ?>

        <!-- Blog -->
        <?php include 'sidebar_menu_blog.php'; ?>

        <!-- Blog -->
        <?php //include 'sidebar_menu_media.php'; ?>

        <?php if ((in_array('business', $access_menu['head']) || ($access_menu['level'] <= 3)) ) {?>
            <!-- Menu Business -->
            <a class="btn" data-toggle="collapse" data-parent="#tpl_sidebar" href="#sidebar_mnu_business">
                <i class="fa fa-briefcase"></i>
                <?php echo $this->lang->line('sidebar_mnu_business'); ?>
                <i class="collapse-icon fa fa-chevron-down"></i>
            </a>
            <div id="sidebar_mnu_business" class="collapse <?php
            if (strpos($sidebar_mnu_active, 'business') !== false) {
                echo 'in';
            }
            ?>">
                <div class="btn-group btn-group-vertical btn-block">
                    <!-- Sub Menu Business Info-->
<?php if ((in_array('business_shop', $access_menu['policy_name']) || ($access_menu['level'] <= 3)) ) {?>
                    <a class="btn <?php
                    if ($sidebar_mnu_active == 'business_info') {
                        echo 'active';
                    }
                    ?>" href="<?php echo site_url($access_module . '/business_info'); ?>">
                        <i class="fa fa-list-alt"></i>
                        <?php echo $this->lang->line('sidebar_mnu_business_info'); ?>
                    </a>
<?php } ?>
                    <!-- Sub Menu Business Item -->
<?php if (in_array('business_menu_item', $access_menu['policy_name']) || ($access_menu['level'] <= 3) ) {?>
                    <a class="btn <?php
                    if ($sidebar_mnu_active == 'business_menu') {
                        echo 'active';
                    }
                    ?>" href="<?php echo site_url($access_module . '/business_menu'); ?>">
                        <i class="fa fa-cutlery"></i>
                        <?php echo $this->lang->line('sidebar_mnu_business_menu'); ?>
                    </a>
<?php } ?>
                    <!-- Sub Menu Open/Close -->
<?php if (in_array('business_work_hour', $access_menu['policy_name']) || ($access_menu['level'] <= 3) ) {?>
                    <a class="btn <?php
                    if ($sidebar_mnu_active == 'business_hour') {
                        echo 'active';
                    }
                    ?>" href="<?php echo site_url($access_module . '/business_hour'); ?>">
                        <i class="fa fa-clock-o"></i>
                        <?php echo $this->lang->line('sidebar_mnu_business_hour'); ?>
                    </a>
<?php } ?>
                    <a class="btn <?php
                    if ($sidebar_mnu_active == 'business_mobile_theme') {
                        echo 'active';
                    }
                    ?>" href="<?php echo site_url($access_module . '/business_mobile_theme'); ?>">
                        <i class="fa fa-adjust"></i>
                        <?php echo $this->lang->line('sidebar_mnu_business_mobile_theme'); ?>
                    </a>
                </div>
            </div>

        <?php } ?>
        <?php if ((in_array('member', $access_menu['head']) || ($access_menu['level'] <= 3)) ) { ?>
            <!-- User Business -->
            <a class="btn" data-toggle="collapse" data-parent="#tpl_sidebar" href="#sidebar_mnu_customer">
                <i class="fa fa-briefcase"></i>
                <?php echo $this->lang->line('sidebar_mnu_customer'); ?>
                <i class="collapse-icon fa fa-chevron-down"></i>
            </a>
            <div id="sidebar_mnu_customer" class="collapse <?php
            if (strpos($sidebar_mnu_active, 'customer') !== false) {
                echo 'in';
            }
            ?>">
                <div class="btn-group btn-group-vertical btn-block">

										<!-- Sub User setup -->
										<!--
                    <a class="btn <?php
                    if ($sidebar_mnu_active == 'customer_info') {
                        echo 'active';
                    }
                    ?>" href="<?php echo site_url($access_module . '/customer_info'); ?>">
                        <i class="fa fa-user-circle"></i>
                        <?php echo $this->lang->line('sidebar_mnu_customer_info'); ?>
                    </a>
										-->
                    <!-- Sub Customer Policy setup -->
										<!--
                    <a class="btn <?php
                    if ($sidebar_mnu_active == 'customer_policy') {
                        echo 'active';
                    }
                    ?>" href="<?php echo site_url($access_module . '/customer_policy'); ?>">
                        <i class="fa fa-lock"></i>
                        <?php echo $this->lang->line('sidebar_mnu_customer_policy'); ?>
                    </a>
										-->
                    <!-- Sub Customer Group  -->
										<!--
                    <a class="btn <?php
                    if ($sidebar_mnu_active == 'customer_role') {
                        echo 'active';
                    }
                    ?>" href="<?php echo site_url($access_module . '/customer_role'); ?>">
                        <i class="fa fa-th-large"></i>
                        <?php echo $this->lang->line('sidebar_mnu_customer_role'); ?>
                    </a>
										-->
                    <!-- Sub Customer Group Policy  -->
										<!--
                    <a class="btn <?php
                    if ($sidebar_mnu_active == 'customer_role_policy') {
                        echo 'active';
                    }
                    ?>" href="<?php echo site_url($access_module . '/customer_role_policy'); ?>">
                        <i class="fa fa-key"></i>
                        <?php echo $this->lang->line('sidebar_mnu_customer_role_policy'); ?>
                    </a>
										-->
<?php if ((in_array('member_manage', $access_menu['policy_name']) || ($access_menu['level'] <= 3)) ) { ?>
                    <!-- Sub Customer Member  -->
                    <a class="btn <?php
                    if ($sidebar_mnu_active == 'customer_member') {
                        echo 'active';
                    }
                    ?>" href="<?php echo site_url($access_module . '/customer_member'); ?>">
                        <i class="fa fa-id-card-o"></i>
                        <?php echo $this->lang->line('sidebar_mnu_customer_member'); ?>
                    </a>
<?php } ?>										
                </div>
            </div>
        <?php } ?>
        <?php // } } ?>
    </div>
		<?php } ?>
    <div>
        <?php /*
        echo "<pre>";
        if (isset($access_workspace)) {
            echo "<pre>access_workspace\n";
            print_r($access_workspace);
        }
        if (isset($access_client)) {
            echo "\naccess_client\n";
            print_r($access_client);
        }
        if (isset($access_menu)) {
            echo "\naccess_menu\n";
            print_r($access_menu);
        }
        if (isset($workspace_name)) {
            echo "<pre>workspace_name\n";
            print_r($workspace_name);
        }
        if (isset($workspace_id)) {
            echo "<pre>workspace_id\n";
            print_r($workspace_id);
        }
        echo "</pre>";
				 */
        ?>
    </div>
</div>
