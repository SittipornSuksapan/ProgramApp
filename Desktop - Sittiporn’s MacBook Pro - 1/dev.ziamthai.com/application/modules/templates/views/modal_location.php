
<?php
$this->load->model('api/Locations_model');
$list_location_store = $this->Locations_model->has_store();
?>

<link href="<?php echo base_url('asset/ziamthai/css/foods_location.css?_=' . time()); ?>" rel="stylesheet" type="text/css"/>

<script src="<?php echo base_url('asset/ziamthai/js/foods/modal_location.js?_=' . time()); ?>" type="text/javascript"></script>

<!-- Modal -->
<div class="modal fade" id="myLocationModal" tabindex="-1" role="dialog" aria-labelledby="myLocationModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title" id="myLocationModalLabel">
                    <?php echo $this->lang->line('modal_location')['search_by_location']; ?>
                </h4>
            </div>
            <div class="modal-body">
                <div style="padding-bottom:20px;text-align:center;">
                    <a href="javascript:foods_store_nearme();" class="btn btn-primary" style="font-size:1.4em;">
                        <span id="get_user_location">
                            <?php echo $this->lang->line('modal_location')['search_by_near_me']; ?>
                        </span>
                    </a>

                    <div id="modal_location_geo_address" style="margin-top:10px;font-size:0.9em;color:#444;">
                        <i class="fa fa-map-marker"></i>
                        <label></label>
                    </div>
                </div>
                <div class="modal-location-list container">
                    <?php
                    if (sizeof($list_location_store) < 1) {
                        $list_location_store = $list_location;
                    }

                    echo '<div class="col-sm-6"><div class="modal-location-group btn-group-vertical">';
                    $list_loc_c = 0;
                    foreach ($list_location_store as $loc_store) {
                        ?>

                        <a href="<?php echo site_url('foods/store/?loc=' . $loc_store['loch_abrv']); ?>" class="modal-location-btn btn btn-secondary" style="text-align:left;">
                            <?php
                            echo $loc_store['loch_name'];

                            if (!empty($loc_store['loch_store_count'])) {
                                echo '<span class="tag tag-default">' . $loc_store['loch_store_count'] . '</span>';
                            }
                            ?>
                        </a>

                        <?php
                        $list_loc_c++;
                        if ($list_loc_c % 10 == 0) {
                            $list_loc_c = 0;
                            echo '</div></div><div class="col-sm-6"><div class="modal-location-group btn-group-vertical">';
                        }
                    }
                    echo '</div></div>';
                    ?>
                </div>
            </div>
        </div>
    </div>
</div>