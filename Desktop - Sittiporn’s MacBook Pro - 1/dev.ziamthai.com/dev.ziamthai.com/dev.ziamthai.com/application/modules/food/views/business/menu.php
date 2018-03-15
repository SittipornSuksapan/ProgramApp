
<link href="<?php echo asset_url('zth-food/css/business/menu.css?_=' . TIME_NOW); ?>" rel="stylesheet" type="text/css"/>
<script src="<?php echo asset_url('zth-food/js/business/menu.js?_=' . TIME_NOW); ?>" type="text/javascript"></script>

<div style="position:relative;margin-bottom:20px;">
    <h1 style="display:block;margin:0;padding:10px 0px 0px 0px;font-size:1.3em;">
        <strong>Foods Menu</strong>
    </h1>

    <div class="store-show-todayhour hidden-md-up" style="top:0px;">
        <button type="button" class="btn btn-link store_show_hour_indicator">
            <i class="fa fa-circle-o-notch fa-spin"></i>
        </button>

        <div class="store_show_hour_status text-xs-right" style="display:none;">
            <button type="button" class="display_status btn btn-link">
                <span class="closing">Closing on</span>
                <span class="opening">Opening on</span>
                <span class="next_day" style="display:none;">(next day)</span>
            </button>
            <button type="button" class="display_time btn btn-secondary">
                <span></span>
            </button>
        </div>
    </div>

    <div style="margin-top:20px;">
        <select id="store_menu_cate_xs" class="form-control hidden-md-up">
            <option value="all" selected>All Menu</option>
        </select>
    </div>

</div>

<div id="store_menu_list" class="row" data-shop-id="<?php echo $shop_info['id']; ?>">
    <div id="store_menu_item_list" class="col-xs-12 col-md-8 col-lg-9"></div>
    <div id="store_menu_cate_md" class="hidden-sm-down col-md-4 col-lg-3">

        <div class="store-show-todayhour hidden-sm-down" style="position:relative;top:auto;right:auto;margin-bottom:10px;">
            <button type="button" class="btn btn-link store_show_hour_indicator">
                <i class="fa fa-circle-o-notch fa-spin"></i>
            </button>
            <div class="store_show_hour_status text-xs-right text-md-center text-lg-right" style="display:none;">
                <button type="button" class="display_status btn btn-link">
                    <span class="closing">Closing on</span>
                    <span class="opening">Opening on</span>
                    <span class="next_day" style="display:none;">(next day)</span>
                </button>
                <button type="button" class="display_time btn btn-secondary">
                    <span></span>
                </button>
            </div>
        </div>

        <?php if (!empty($access_user['id'])) { ?>
            <div class="btn-group btn-group-vertical btn-block">
                <button type="button" class="btn btn-lg btn-secondary text-primary text-lg-left" onclick="store_order_cart_view();">
                    <i class="fa fa-shopping-cart">
                    </i>
                    <span class="hidden-md-down">My Order</span>
                    <span class="icon-menu-cart-count" style="right:2px;top:2px;font-size:0.6em;"></span>
                </button>
                <button id="store_order_checkout_btn" type="button" class="btn btn-lg btn-secondary text-primary text-lg-left" onclick="store_order_cart_checkout();" style="display:none;color:#fff;">
                    <i class="fa fa-credit-card hidden-md-down"></i>
                    <span>Checkout</span>
                </button>
            </div>
        <?php } ?>

        <div id="store_menu_cate_list" class="btn-group btn-group-vertical btn-block">
            <a href="javascript:store_menu_cate_selected('all');" class="btn bg-pink" rel="all">
                All Menu
            </a>
        </div>

        <?php if (!empty($access_user['id'])) { ?>
            <div id="store_menu_item_droped" class="container" ondrop="store_menu_item_drop(event);" ondragover="store_menu_item_dropper(event);" style="margin-top:10px;padding-top:10px;padding-bottom:10px;background: #eee;border:dashed 1px #aaa;border-radius: 6px;min-height: 32px;max-height: 240px;overflow: hidden;overflow-y: auto;">
                <div class="droped-place-holder" style="text-align:center;color:#666;">Drop Menu Here</div>
                <div class="droped-place-items row"></div>
            </div>
            <div id="store_menu_cart_grand_total" style="display:none;font-weight:bold;font-size:1.8em;padding:10px 0px;">
                <span>$</span>
                <label></label>
            </div>
        <?php } ?>

    </div>
</div>

<script id="show_menu_item_template" type="code">
<?php include 'menu_item.php'; ?>
</script>

<?php if (!empty($access_user['id'])) { ?>
    <script src="<?php echo asset_url('zth-food/js/business/menu_cart.js?_=' . TIME_NOW); ?>" type="text/javascript"></script>

    <!-- Modal -->
    <div class="modal fade" id="store_menu_cart_modal" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">

                <div class="modal-header">
                    <h5 class="modal-title">Shopping Cart</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>

                <div class="modal-body">
                    <!-- Nav tabs -->
                    <ul class="nav nav-pills" role="tablist" style="display:none;">
                        <li class="nav-item">
                            <a id="store_order_tablink_1" class="nav-link active" data-toggle="tab" href="#store_order_tab_1" role="tab">
                                <span style="display:inline-block;padding:2px 8px;background:rgba(0,0,0,0.4);color:#fff;font-size:0.8em;font-weight:bold;border-radius:24px;">1</span>
                                <span>Cart List</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a id="store_order_tablink_2" class="nav-link" data-toggle="tab" href="#store_order_tab_2" role="tab">
                                <span style="display:inline-block;padding:2px 8px;background:rgba(0,0,0,0.4);color:#fff;font-size:0.8em;font-weight:bold;border-radius:24px;">2</span>
                                <span>Customer Info</span>
                            </a>
                        </li>
                    </ul>

                    <form id="store_order_form" rel="<?php echo intval($shop_info['id']); ?>" style="font-size:0.9em;color:#333;">

                        <input type="hidden" name="type" value="pickup">
                        <input type="hidden" name="shop" value="<?php echo intval($shop_info['id']); ?>">

                        <!-- Tab panes -->
                        <div class="tab-content">

                            <div class="tab-pane active" id="store_order_tab_1" role="tabpanel" style="margin:-15px;">

                                <div class="table-responsive">
                                    <table id="store_order_table" class="table table-sm table-hover">

                                        <thead>
                                            <tr class="table- bg-pink" style="color:#fff;">
                                                <th style="min-width:140px;max-width:140px;">
                                                    <a href="javascript:store_order_table_remove('all');" style="color:#fff;text-decoration:none;">
                                                        <i class="fa fa-minus-circle"></i>
                                                    </a>
                                                    <span>Items</span>
                                                </th>
                                                <th style="min-width:60px !important;max-width:60px !important;text-align:center;">Price</th>
                                                <th style="min-width:60px !important;max-width:60px !important;text-align:center;">Qty</th>
                                                <th style="min-width:60px !important;max-width:60px !important;text-align:center;">Total</th>
                                            </tr>
                                        </thead>

                                        <tbody></tbody>

                                        <tfoot style="text-align:right;font-weight:bold;">
                                            <tr>
                                                <td colspan="2">
                                                    Subtotal
                                                </td>
                                                <td colspan="2" style="padding-right:10px;">
                                                    <span>$</span>
                                                    <span id="store_order_table_subtotal">0.00</span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2">
                                                    TAX
                                                    <span style="font-size:0.9em;">(<span id="store_order_table_taxrate"></span>%)</span>
                                                </td>
                                                <td colspan="2" style="padding-right:10px;">
                                                    <span>$</span>
                                                    <span id="store_order_table_taxtotal">0.00</span>
                                                </td>
                                            </tr>
                                            <tr style="display:none;">
                                                <td colspan="2">
                                                    Delivery Charge
                                                </td>
                                                <td colspan="2" style="padding-right:10px;">
                                                    <span>$</span>
                                                    <span id="store_order_table_delivery">2.00</span>
                                                </td>
                                            </tr>
                                            <tr style="font-size:1.2em;">
                                                <td colspan="2">
                                                    Total
                                                </td>
                                                <td colspan="2" style="padding-right:10px;">
                                                    <span>$</span>
                                                    <span id="store_order_table_total">0.00</span>
                                                </td>
                                            </tr>
                                        </tfoot>

                                    </table>
                                </div>

                                <div class="form-group" style="display:none;">
                                    <div class="btn-group btn-group-justified" data-toggle="buttons">
                                        <label id="store_order_service_pickup" class="btn btn-sm btn-outline-success active">
                                            <input type="radio" id="option1" autocomplete="off" checked>
                                            <span>Pickup</span>
                                        </label>
                                        <label id="store_order_service_delivery" class="btn btn-sm btn-outline-success">
                                            <input type="radio" id="option2" autocomplete="off">
                                            <span>Delivery</span>
                                        </label>
                                    </div>
                                </div>

                            </div>


                            <div class="tab-pane" id="store_order_tab_2" role="tabpanel">

                                <div class="form-group">
                                    <label>Customer Name</label>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <input class="form-control" name="c_name" value="<?php echo $access_user['name']; ?>">
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <label>E-Mail</label>
                                            <input class="form-control" name="c_email" value="<?php echo $access_user['email']; ?>">
                                        </div>
                                        <div class="col-md-6">
                                            <label>Telephone</label>
                                            <input class="form-control" name="c_tel">
                                        </div>
                                    </div>
                                </div>

                                <div class="store_order_delivery_form form-group" style="display:none;">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <label>Street</label>
                                            <input class="form-control" name="c_street">
                                        </div>
                                        <div class="col-md-6">
                                            <label>Address</label>
                                            <input class="form-control" name="c_address">
                                        </div>
                                    </div>
                                </div>

                                <div class="store_order_delivery_form form-group" style="display:none;">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <label>City</label>
                                            <input class="form-control" name="c_city">
                                        </div>
                                        <div class="col-md-6">
                                            <label>State</label>
                                            <input class="form-control" name="c_state">
                                        </div>
                                    </div>
                                </div>

                                <div class="store_order_delivery_form form-group" style="display:none;">
                                    <label>Zipcode</label>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <input class="form-control" name="c_zipcode">
                                        </div>
                                    </div>
                                </div>

                                <div id="store_order_checkout_result" class="form-group alert alert-warning" style="display:none;text-align:center;"></div>

                            </div><!--//tab2-->

                        </div>

                    </form>
                </div>

                <div class="modal-footer" style="padding:5px;">

                    <button id="store_order_tablink_back" type="button" class="pull-left btn btn-link" onclick="$('#store_order_tablink_1').trigger('click');" style="display:none;">
                        <i class="fa fa-chevron-circle-left"></i>
                        <span>Back</span>
                    </button>

                    <button id="store_order_tablink_next" type="button" class="pull-right btn btn-primary" onclick="$('#store_order_tablink_2').trigger('click');">
                        <span>Continue</span>
                        <i class="fa fa-chevron-circle-right"></i>
                    </button>

                    <button id="store_order_checkout_btn2" type="button" class="pull-right btn btn-primary" onclick="store_order_cart_checkout();" style="display:none;">
                        <i class="fa fa-credit-card"></i>
                        <span>Checkout</span>
                    </button>

                </div>

            </div>
        </div>
    </div>



    <!-- Order add Modal -->
    <div class="modal fade" id="store_order_modal" data-menu-id="0" tabindex="-1" role="dialog" aria-labelledby="store_order_modal_label" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <h4 class="modal-title" id="store_order_modal_label">Order</h4>
                </div>
                <div class="modal-body">
                    <div class="row">

                        <div class="col-md-6" align="center">
                            <img id="store_order_modal_img" class="img-fluid">
                        </div>

                        <div class="col-md-6">

                            <div id="store_order_modal_desc" style="max-height:160px;overflow:hidden;overflow-y:auto;"></div>

                            <div style="margin:6px 0px;color:#060;font-size:1.3em;">
                                <strong>$</strong>
                                <strong id="store_order_modal_price">0</strong>
                            </div>

                            <div class="row">
                                <div class="col-xs-6">
                                    <h5 style="margin-top:10px;font-size:1em;font-weight:bold;">
                                        Quantity
                                    </h5>
                                    <input class="form-control" id="store_order_modal_qty" type="number" step="1" value="1" min="1" max="50" onfocus="$(this).select();" onchange="store_order_modal_cal();">
                                </div>
                                <div class="col-xs-6">
                                    <h5 style="margin-top:10px;font-size:1em;font-weight:bold;">
                                        Total
                                    </h5>
                                    <div class="input-group">
                                        <input id="store_order_modal_total" class="form-control" readonly type="text" style="text-align:right;background:#fff;">
                                        <span class="input-group-addon">$</span>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <h5 style="margin-top:10px;font-size:1em;font-weight:bold;">
                                        Special Instructions
                                    </h5>
                                    <input class="form-control" id="store_order_modal_inst" type="text">
                                </div>
                            </div>

                            <div style="margin-top:20px;">
                                <button type="button" class="btn btn-primary" data-dismiss="modal" onclick="store_order_modal_save();">Save</button>
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                            </div>

                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>


<?php } ?>
