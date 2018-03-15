

<link href="<?php echo asset_url('zth-food/css/templates/modal_location.css?_=' . time()); ?>" rel="stylesheet" type="text/css"/>

<script src="<?php echo asset_url('zth-food/js/templates/modal_location.js?_=' . time()); ?>" type="text/javascript"></script>

<!-- Modal -->
<div class="modal fade" id="location_modal" tabindex="-1" role="dialog" aria-labelledby="myLocationModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title" id="myLocationModalLabel">
                    <?php echo $lang_modal_location['search_by_location']; ?>
                </h4>
            </div>
            <div class="modal-body">
                <div style="padding-bottom:20px;text-align:center;">
                    <a href="javascript:foods_store_nearme();" class="btn btn-primary" style="font-size:1.4em;">
                        <span id="get_user_location">
                            <?php echo $lang_modal_location['search_by_near_me']; ?>
                        </span>
                    </a>

                    <div id="modal_location_geo_address" style="margin-top:10px;font-size:0.9em;color:#444;">
                        <i class="fa fa-map-marker"></i>
                        <label></label>
                    </div>
                </div>
                <div class="modal-location-list container">
                    <div id="modal_location_list" class="row"></div>
                </div>
            </div>
        </div>
    </div>
</div>