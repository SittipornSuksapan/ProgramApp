
<script src="<?php echo base_url('asset/ziamthai/js/foods/modal_buyer_info.js?_=' . time()); ?>" type="text/javascript"></script>

<!-- Order Buyer Modal -->
<div class="modal fade" id="foods_buyer_info_modal" data-menu-id="0" tabindex="-1" role="dialog" aria-labelledby="store_foods_buyer_modal_label" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <form id="foods_buyer_form" class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title" id="store_foods_buyer_modal_label">Customer</h4>
            </div>
            <div class="modal-body">

                <div id="foods_buyer_result" class="alert alert-warning" style="display:none;"></div>

                <div class="row">

                    <div class="col-md-6">
                        <div class="form-group">
                            <label class="form-control-label">Name</label>
                            <input class="form-control" name="buyer_name" value="<?php echo $login_display; ?>">
                        </div>
                    </div>

                    <div class="col-md-12">
                        <div class="row">

                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="form-control-label">E-Mail</label>
                                    <input class="form-control" name="buyer_email" type="email" value="<?php echo $login_email; ?>">
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="form-control-label">Phone</label>
                                    <input class="form-control" name="buyer_tel" type="tel">
                                </div>
                            </div>

                        </div>
                    </div>

                    <div class="col-md-12" style="padding-bottom:10px;">
                        <div class="btn-group">
                            <label for="foods_buyer_pickup" class="foods_buyer_delivery_choose btn btn-success" style="position:relative;text-align:left;">
                                Pickup
                                <input type="radio" name="buyer_delivery" id="foods_buyer_pickup" value="0" style="position:absolute;z-index:-1;visibility: hidden;" checked>
                            </label>
                            <label for="foods_buyer_delivery" class="foods_buyer_delivery_choose btn btn-outline-success" style="position:relative;text-align:left;">
                                Delivery
                                <input type="radio" name="buyer_delivery" id="foods_buyer_delivery" value="1" style="position:absolute;z-index:-1;visibility: hidden;">
                            </label>
                        </div>
                    </div>

                    <div class="foods_buyer_delivery_shipping col-md-12" style="display:none;">
                        <div class="form-group">
                            <label class="form-control-label">Delivery to Address</label>
                            <input class="form-control" name="buyer_address" type="text">
                        </div>
                    </div>

                    <div class="foods_buyer_delivery_shipping col-md-6" style="display:none;">
                        <div class="form-group">
                            <label class="form-control-label">Zipcode</label>
                            <input class="form-control" name="buyer_zipcode" type="number" step="1" min="0" max="99999" maxlength="5">
                        </div>
                    </div>

                </div>

            </div>
            <div class="modal-footer">
                <button id="foods_buyer_modal_reset" type="button" class="btn btn-secondary" data-dismiss="modal">
                    Close
                </button>
                <button type="submit" class="btn btn-primary">
                    <i class="fa fa-save"></i>
                    <span>Save</span>
                </button>
            </div>
        </form>
    </div>
</div>

