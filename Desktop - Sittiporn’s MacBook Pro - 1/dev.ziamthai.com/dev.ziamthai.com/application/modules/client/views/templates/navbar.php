
<nav id="tpl_navbar" class="navbar navbar-light bg-faded navbar-fixed-top">
    <div class="row">

        <div class="col-xs-3 col-md-1 hidden-lg-up">
            <button class="btn btn-link" onclick="layout_2col('toggle', '#tpl_layout');">
                <i class="fa fa-bars"></i>
            </button>
        </div>

        <div class="col-xs-6 col-md-5 col-lg-6 text-xs-center text-md-left">
            <div class="row">
                <div class="col-xs-12 col-md-5 col-lg-3">
                    <a class="tpl-navbar-title" href="<?php echo site_url($access_module); ?>">
                        <?php echo $this->lang->line('site_title'); ?>
                    </a>
                </div>
                <div class="col-xs-12 col-md-7 col-lg-9">
                    <span class="tpl-navbar-workspace"><?php echo $workspace_name; ?></span>
                </div>
            </div>
        </div>

        <div class="col-xs-3 col-md-6 col-lg-6">
            <ul class="nav navbar-nav float-xs-right">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">
                        <i class="fa fa-user-circle"></i>
                        <span class="hidden-sm-down"><?php echo $access_client['name']; ?></span>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right">
                        <a class="dropdown-item" href="<?php echo site_url('accounts/pages/my'); ?>">
                            <?php echo $this->lang->line('navbar_mnu_myaccount'); ?>
                        </a>
                        <a class="dropdown-item hidden-md-up" href="<?php echo site_url($access_module . '/logout'); ?>">
                            <?php echo $this->lang->line('navbar_mnu_logout'); ?>
                        </a>
                    </div>
                </li>
                <li class="navbar-divider hidden-sm-down"></li>
                <li class="nav-item hidden-sm-down">
                    <a class="nav-link" href="<?php echo site_url($access_module . '/logout'); ?>">
                        <i class="fa fa-power-off"></i>
                    </a>
                </li>
            </ul>
        </div>

    </div>
</nav>
