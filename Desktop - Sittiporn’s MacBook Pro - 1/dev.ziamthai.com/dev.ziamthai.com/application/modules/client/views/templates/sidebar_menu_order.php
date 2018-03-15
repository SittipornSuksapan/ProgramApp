     
<?php if (in_array('billing', $access_menu['head']) || ($access_menu['level'] <= 3)) {?>
    <a class="btn" data-toggle="collapse" data-parent="#tpl_sidebar" href="#sidebar_mnu_bill">
        <i class="fa fa-paste"></i>
        <?php echo $this->lang->line('sidebar_mnu_bill'); ?>
        <i class="collapse-icon fa fa-chevron-down"></i>
    </a>
    <div id="sidebar_mnu_bill" class="collapse <?php
    if (strpos($sidebar_mnu_active, 'bill') !== false) {
        echo 'in';
    }
    ?>">
        <div class="btn-group btn-group-vertical btn-block">
<?php if (in_array('sales_order', $access_menu['policy_name']) || ($access_menu['level'] <= 3)) {?>
            <a class="btn <?php
            if ($sidebar_mnu_active == 'bill_order') {
                echo 'active';
            }
            ?>" href="<?php echo site_url($access_module . '/sales_order'); ?>">
                <i class="fa fa-sticky-note-o"></i>
                <?php echo $this->lang->line('sidebar_mnu_bill_order'); ?>
            </a>
<?php } ?>
<?php /*if (in_array('sales_report', $access_menu['policy_name']) || ($access_menu['level'] <= 3)) {?>
            <a class="btn <?php
            if ($sidebar_mnu_active == 'bill_report') {
                echo 'active';
            }
            ?>" href="<?php echo site_url($access_module . '/sales_order/report'); ?>">
                <i class="fa fa-pie-chart"></i>
                <?php echo $this->lang->line('sidebar_mnu_bill_report'); ?>
            </a>
<?php }*/ ?>
        </div>
    </div>
<?php } ?>
