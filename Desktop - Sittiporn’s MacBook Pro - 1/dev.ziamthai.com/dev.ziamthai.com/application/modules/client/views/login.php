
<div class="row">

    <div align="center" class="col-md-12">
        <a href="<?php echo site_url($access_module); ?>">
            <img class="img-fluid" src="<?php echo asset_url('ziamthai/img/logo-640.png'); ?>" alt="ZiamThai" style="max-height:90px;">
        </a>
    </div>

    <div class="offset-md-4 col-md-4">

        <?php if (sizeof($workspace_list) < 1) { ?>
            <div class="alert alert-danger">Access denied.</div>
        <?php } else { ?>
            <script src="<?php echo asset_url('zth-client/js/accounts/login.js?_=' . TIME_NOW); ?>" type="text/javascript"></script>

            <form id="workspace_form" class="card">
                <h1 align="center" style="margin:20px auto 0px auto;font-size:1.8em;">
                    <?php echo $this->lang->line('form_workspace_title'); ?>
                </h1>

                <div class="card-block">

                    <div class="form-group">
                        <div id="workspace_list" class="btn-group btn-group-vertical btn-block">
                            <?php
                            if (!empty($workspace_list)) {
                                $ccc = 0;

                                foreach ($workspace_list as $value) {
                                    echo '<button type="button" class="btn btn-lg btn-outline-primary" onclick="workspace_selection(\'' . $value['id'] . '\');">' . $value['name'] . '</button>';

                                    //-- auto login to workspace
                                    if ($ccc < 1) {
                                        echo '<script type="text/javascript">workspace_selection(' . intval($value['id']) . ');</script>';
                                    }

                                    $ccc++;
                                }
                            }
                            ?>
                        </div>
                    </div>

                    <div class="form-group">
                        <div id="workspace_result" class="alert alert-warning" style="display:none;text-align:center;"></div>
                    </div>

                </div>

            </form>
        <?php } ?>

    </div>

</div>
