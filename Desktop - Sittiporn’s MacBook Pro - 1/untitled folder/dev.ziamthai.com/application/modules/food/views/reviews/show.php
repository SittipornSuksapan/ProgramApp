<?php
$show_url = site_url('foods/store/show/' . $bssh_info['bssh_id'] . '/' . rawurlencode($bssh_info['bssh_title']));
$review_url = site_url('foods/store/onlineOrder/' . $bssh_info['bssh_id'] . '/' . rawurlencode($bssh_info['bssh_title']));

/*
  echo '<pre>';
  print_r($bssh_info);
  echo '</pre>';
  echo '<pre>';
  print_r($member_data);
  echo '</pre>';
  echo '<pre>';
  print_r($review_data);
  echo '</pre>'; */
?>


<div class="container">
    <ul class="breadcrumb hidden-sm-down">
        <li class="breadcrumb-item">
            <a href="<?php echo site_url('foods'); ?>">Home</a>
        </li>
        <li class="breadcrumb-item">
            <a href="<?php echo site_url('foods/store'); ?>">Store finder</a>
        </li>
        <li class="breadcrumb-item">
            <a href="<?php echo $show_url; ?>"><?php echo $bssh_info['bssh_title']; ?></a>
        </li>
        <li class="breadcrumb-item active">
            <?php echo $this->lang->line('page_title'); ?>
        </li>
    </ul>
</div>

<div id="store_order_menu" class="container" data-store-title="<?php echo $bssh_info['bssh_title']; ?>" data-store-location="<?php echo str_ireplace(' ', '', $bssh_info['bssh_maps']); ?>">
    <div class="row">

        <div data-layout-2col="one" class="col-xs-12 col-md-8 col-xl-9">

            <div class="container" style="background:#fff;border-radius:4px;border:solid 1px #ddd;margin-bottom:20px;">
                <?php include ROOT_PATH . '/application/modules/foods/views/store_show_marketing.php'; ?>
            </div>

            <div class="card">

                <div class="navbar navbar-light bg-faded">
                    <div class="container">
                        <div class="row" style="padding-top:10px;padding-bottom:10px;">

                            <div class="col-xs-2 col-md-2 col-lg-1" style="padding:0px;">
                                <img src="<?php echo site_url('uploads/user_photo/thumb/' . $member_data['memh_id']); ?>" class="img-fluid" style="max-height:64px;border:solid 1px #ccc;">
                            </div>

                            <div class="col-xs-6 col-md-6">
                                <div class="">
                                    <?php echo $member_data['memh_display']; ?>
                                </div>
                                <div style="font-size:0.8em;color:#080;">
                                    <?php echo $review_data['bsrh_cdate']; ?>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>

                <div class="card-block">
                    <?php echo $review_data['bsrh_desc']; ?>
                </div>

                <?php
                if (sizeof($review_photo) > 0) {
                    include 'show_photo.php';
                }
                ?>

            </div>

        </div>

        <div data-layout-2col="two" class="col-xs-12 col-md-4 col-xl-3">

            <div id="store_show_info" class="card" style="position:relative;">

                <button onclick="layout_2col('one', '#store_order_menu');" type="button" class="btn btn-link hidden-md-up" style="position:absolute;top:0;right:0px;">
                    <i class="fa fa-close"></i>
                </button>

                <a href="<?php echo $review_url; ?>" title="<?php echo $bssh_info['bssh_title']; ?>">
                    <img class="card-img img-fluid" src="<?php echo $bssh_info['bssh_imgfront']; ?>">
                </a>

                <div class="card-block" style="overflow:hidden;padding:10px;">

                    <div style="color:#444;font-size:1.1em;">
                        <div>
                            <i class="fa fa-map-marker"></i>
                            <?php
                            echo $bssh_info['bssh_address'] . ' ' . $bssh_info['bssh_zipcode'];
                            ?>
                        </div>
                        <div>
                            <i class="fa fa-phone"></i>
                            <?php
                            echo $bssh_info['bssh_phone'];
                            ?>
                        </div>
                    </div>

                </div>

                <?php
                if (sizeof($work_hour_list) > 0) {
                    echo '<div class="card-block" style="padding:10px;font-size:0.9em;">';
                    $d_o_w_p = null;
                    $d_o_w_n = date("w", time());
                    foreach ($work_hour_list as $key => $whl) {
                        $hilight = '';
                        $d_o_w = '<strong>' . day_of_week($whl['bssw_day_week']) . '</strong>&nbsp;&nbsp;';

                        $open_time = date('g:i a', strtotime($whl['bssw_open_time']));
                        $close_time = date('g:i a', strtotime($whl['bssw_close_time']));

                        if ($whl['bssw_day_week'] == $d_o_w_n) {
                            $hilight = 'style="font-weight:bold;font-size:1.2em;color:#3b5998;"';
                        }

                        if ($d_o_w_p == $whl['bssw_day_week']) {
                            $d_o_w = '<span style="display:inline-block;padding-left:30px;">&nbsp;</span>';
                        } else {
                            $d_o_w_p = intval($whl['bssw_day_week']);
                        }

                        echo '<div ' . $hilight . '>' . $d_o_w . $open_time . ' - ' . $close_time . '</div>';
                    }
                    echo '</div>';
                }
                ?>

            </div>

        </div>

    </div>
</div>

