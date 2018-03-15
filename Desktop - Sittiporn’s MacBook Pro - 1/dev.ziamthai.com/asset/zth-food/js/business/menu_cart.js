
var store_cart_data = [];
var store_cart_shop_id = 0;

$(function () {

    //globals variable from views/business/show_template
    //console.log(shop_info_json);

    var store_photo_shop_id = $('#store_menu_list').data('shop-id') || false;

    if (store_photo_shop_id) {
        store_menu_cart_init(store_photo_shop_id);
    }

    $('#store_order_service_delivery').click(function () {
        $('#store_order_form').find('input[name=type]').val('delivery');
        $('#store_order_service_delivery').blur();
        $('.store_order_delivery_form').show();
        store_order_table_cal();
    });

    $('#store_order_service_pickup').click(function () {
        $('#store_order_form').find('input[name=type]').val('pickup');
        $('#store_order_service_pickup').blur();
        $('.store_order_delivery_form').hide();
        store_order_table_cal();
    });

    $('#store_order_form').submit(function (e) {
        e.preventDefault();

        $('body').find('#store_order_checkout_result').html(loading_icon).show();

        store_order_cart_checkout();
    });

    $('a[data-toggle="tab"]').on('shown.bs.tab', function (e) {
        //e.target // newly activated tab
        //e.relatedTarget // previous active tab

        if ($(e.target).attr('id') == 'store_order_tablink_2') {
            $('#store_order_tablink_next').hide();
            $('#store_order_tablink_back').show();
            $('#store_order_checkout_btn2').show();
        } else {
            $('#store_order_tablink_next').show();
            $('#store_order_tablink_back').hide();
            $('#store_order_checkout_btn2').hide();
        }

    });

});

function store_menu_cart_init(id) {

    store_cart_shop_id = parseInt(id) || 0;

    if (typeof (Storage) !== "undefined") {
        var store_cart_type = localStorage.getItem('store_cart_type') || 'pickup';
        var store_cart_save = localStorage.getItem('store_cart_save') || false;

        if (store_cart_save) {
            store_cart_data = JSON.parse(store_cart_save);
        }

        if (!store_cart_type) {
            //store_cart_type = store_buyer_data.delivery || 'pickup';
        }

        if (store_cart_type == 'pickup' || store_cart_type == 'delivery') {
            $('#store_order_form').find('input[name=type]').val(store_cart_type);
            $('#store_order_service_' + store_cart_type).click();
        }

        if (store_cart_data && store_cart_data[store_cart_shop_id]) {

            if (!store_check_open()) {
                store_order_table_remove('all');

                return;
            }

            $.each(store_cart_data[store_cart_shop_id], function (i, v) {
                store_order_table_add(i, v.qty, v.inst);
            });
        }
    }

}

function store_order_cart_view() {
    if (!store_check_open()) {
        $('#store_warning_modal').modal('show');

        return;
    }

    $('#store_menu_cart_modal').modal('show');
}

function store_order_cart_checkout() {
    if (!store_check_open()) {
        $('#store_warning_modal').modal('show');

        return;
    }

    if (!confirm('Are you sure for checkout this order.')) {
        store_order_cart_view();

        return;
    }

    var data_send = $('#store_order_form').serialize();
    //$('#store_order_btn_checkout').prop('disabled', true);

    zth.API({
        query: 'foods_order/save',
        data: data_send,
        callback: function (resp) {

            //$('#store_order_btn_checkout').prop('disabled', false);
            $('#store_order_checkout_result').html(resp.message);

            if (resp.success) {
                $('#store_order_checkout_result').append(loading_icon);

                localStorage.removeItem('store_cart_type');
                localStorage.removeItem('store_cart_save');

                //location.href = base_url + 'index.php/restaurant/store/order/' + parseInt(resp.order_id);
                location.reload();
            }

        }
    });

}

function store_order_select(id) {
    if (!store_check_open()) {
        $('#store_warning_modal').modal('show');

        return;
    }

    var data = store_menu_list_json[id] || false;

    if (!data) {
        return;
    }

    if (data.online_order !== true) {
        alert('Unavailable for online order.');

        return;
    }

    var store_tbody = $('#store_order_table > tbody');
    var set_qty = 1;
    var set_inst = '';
    var set_price = parseFloat(data.price) || 1;

    if (store_tbody.children('#item_' + data.id).length > 0) {
        set_qty = parseInt(store_tbody.children('#item_' + data.id).find('.item_qty').val()) || 1;
        set_inst = store_tbody.children('#item_' + data.id).find('.item_instruction').val() || '';
    }

    var set_total = set_qty * set_price;

    $('#store_order_modal_label').text(data.name);
    $('#store_order_modal_img').attr('src', data.photo_thumb);
    $('#store_order_modal_desc').html(data.description);
    $('#store_order_modal_price').text(set_price);
    $('#store_order_modal_qty').val(set_qty);
    $('#store_order_modal_total').val(set_total.toFixed(2));
    $('#store_order_modal_inst').val(set_inst);
    $('#store_order_modal').attr('data-menu-id', data.id);


    $('.modal').modal('hide');

    $('#store_order_modal').modal('show');
}

function store_order_modal_cal() {
    var set_qty = parseInt($('#store_order_modal_qty').val()) || 1;
    var set_price = parseFloat($('#store_order_modal_price').text()) || 1;
    var set_total = set_qty * set_price;
    $('#store_order_modal_total').val(set_total.toFixed(2));
}

function store_order_modal_save() {

    var id = parseInt($('#store_order_modal').attr('data-menu-id')) || false;

    if (!id) {
        return;
    }

    var qty = parseInt($('#store_order_modal_qty').val()) || 1;
    var inst = encodeURIComponent($('#store_order_modal_inst').val()) || '';

    store_order_table_add(id, qty, inst);

    $('#store_order_modal').modal('hide');

    //$('#store_menu_cart_modal').modal('show');
}

function store_order_table_add(id, qty, inst) {
    if (!store_check_open()) {
        $('#store_warning_modal').modal('show');

        return;
    }

    var data = store_menu_list_json[id] || false;

    if (!data) {
        return;
    }

    if (data.online_order !== true) {
        alert('Unavailable for online order.');

        return;
    }

    var set_qty = parseInt(qty) || 1;
    var set_price = parseFloat(data.price) || 1;
    var set_total = set_qty * set_price;
    var set_inst = inst || '';
    var print_inst = '';

    if (set_inst.length > 0) {
        var new_inst = decodeURIComponent(set_inst);
        set_inst = new_inst.replace(/["']/g, "");
        print_inst = '*' + set_inst;
    }

    var store_tbody = $('#store_order_table > tbody');
    var get_row = store_tbody.children('#item_' + data.id);
    var drop_elm = $('#store_menu_item_droped');
    var drop_elm_items = drop_elm.children('.droped-place-items');

    if (get_row.length < 1) {//add
        store_tbody.append('<tr id="item_' + data.id + '" rel="' + data.id + '">' +
                '<td><a href="javascript:store_order_table_remove(' + parseInt(data.id) + ');" style="color:red;"><i class="fa fa-remove"></i></a>&nbsp;<a href="javascript:store_order_select(\'' + data.id + '\');">' + data.name + '</a><div class="item_instruction2" style="font-size:0.9em;color:#f60;">' + print_inst + '</div><input type="hidden" name="item_id[]" value="' + data.id + '"><input type="hidden" class="item_price" name="item_price[]" value="' + data.price + '"><input type="hidden" name="item_name[]" value="' + data.name + '"><input class="item_instruction" type="hidden" name="item_instruction[]" value="' + set_inst + '"><input type="hidden" class="item_qty" name="item_qty[]" value="' + set_qty + '"><input type="hidden" class="item_total" name="item_total[]" value="' + set_total + '"></td>' +
                '<td align="right"><span>' + data.price + '</span></td>' +
                '<td align="center"><span class="item_qty2">' + set_qty + '</span></td>' +
                '<td align="right"><span class="item_total2">' + set_total + '</span></td>' +
                '</tr>');

        drop_elm.children('.droped-place-items').append('<div rel="' + data.id + '" class="droped-place-item col-xs-6 col-md-12 col-lg-6" style="position:relative;text-align:center;padding-bottom:24px;margin-bottom:10px;"><i onclick="store_order_select(\'' + data.id + '\');" style="display:block;margin:auto;width:100%;height:64px;background-repeat:no-repeat;background-size:cover;background-position:center;border:solid 1px #ccc;border-radius:32px;box-shadow:0px 1px 2px #666;background-image:url(' + data.photo_thumb + ');"></i><strong onclick="store_order_select(\'' + data.id + '\');" class="droped-place-qty" style="position:absolute;bottom:0px;left:4%;padding:2px 6px;width:92%;height:18px;overflow:hidden;background:rgba(0,0,0,0.5);color:#fff;border-radius:24px;font-size:0.6em;">' + set_qty + '</strong><i class="fa fa-times-circle" onclick="store_order_table_remove(\'' + data.id + '\');" style="position:absolute;bottom:1%;right:6%;color:#fff;"></i></div>');
    } else {
        var new_qty = set_qty;

        if (!qty) {
            var old_qty = parseInt(get_row.find('.item_qty').val()) || 1;
            new_qty = (old_qty + set_qty);
        }

        get_row.find('.item_qty').val(new_qty);
        get_row.find('.item_qty2').text(new_qty);
        get_row.find('.item_total').val(set_total);
        get_row.find('.item_total2').text(set_total);
        get_row.find('.item_instruction').val(set_inst);
        get_row.find('.item_instruction2').text(print_inst);

        var itdrop = drop_elm_items.children('.droped-place-item[rel=' + data.id + ']');

        itdrop.find('.droped-place-qty').text(new_qty);
    }

    $('#store_order_checkout_btn').show();

    if (drop_elm.children('.droped-place-items').children('.droped-place-item').length < 1) {
        drop_elm.children('.droped-place-holder').show();
    } else {
        drop_elm.children('.droped-place-holder').hide();
    }

    store_order_table_cal();

    $('#store_order_checkout_btn').show();
}

function store_order_table_remove(id) {
    var store_tbody = $('#store_order_table > tbody');

    var drop_elm = $('#store_menu_item_droped');

    if (id === 'all') {
        store_tbody.html('');

        drop_elm.children('.droped-place-holder').show();
        drop_elm.children('.droped-place-items').html('');

        localStorage.removeItem('store_cart_type');
        localStorage.removeItem('store_cart_save');

        store_order_table_cal();

        return;
    }

    var get_id = parseInt(id) || false;

    if (!get_id) {
        return;
    }

    var get_row = store_tbody.children('#item_' + get_id);
    var get_droped = drop_elm.children('.droped-place-items').children('.droped-place-item[rel=' + id + ']');

    if (get_row.length > 0) {
        get_row.remove();
    }

    if (get_droped.length > 0) {
        get_droped.remove();
    }

    if (drop_elm.children('.droped-place-items').children('.droped-place-item').length < 1) {
        drop_elm.children('.droped-place-holder').show();
    } else {
        drop_elm.children('.droped-place-holder').hide();
    }

    store_order_table_cal();
}

function store_order_table_cal() {
    var store_tbody = $('#store_order_table > tbody');
    var order_type = $('#store_order_form').find('input[name=type]').val() || 'pickup';
    var delivery_charge = parseFloat($('#store_order_table_delivery').text()) || 0;
    var sum_total = 0;
    var shop_id = store_cart_shop_id.toString() || "0";
    var count_item_list = 0;

    store_cart_data[shop_id] = {};

    if (store_tbody.find('tr').length < 1) {
        $('#store_order_checkout_btn').hide();
    }

    $.each(store_tbody.children('tr'), function (i, v) {
        var line_id = parseInt($(this).attr('rel')) || false;
        var line_qty = parseInt($(this).find('.item_qty').val()) || 0;
        var line_price = parseFloat($(this).find('.item_price').val()) || 0;
        var line_total = line_qty * line_price;
        var line_inst = $(this).find('.item_instruction').val() || '';

        count_item_list += line_qty;

        if (line_id) {
            store_cart_data[shop_id][line_id] = {'qty': line_qty, 'inst': line_inst};
        }

        $(this).find('.item_qty2').text(line_qty);
        $(this).find('.item_total').val(line_total.toFixed(2));
        $(this).find('.item_total2').text(line_total.toFixed(2));

        sum_total = sum_total + line_total;
    });

    $('#store_order_table_subtotal').html(sum_total.toFixed(2));

    var grand_total = sum_total;
    var tax_amount = 0;
    var tax_rate = parseFloat(shop_info_json.info.tax_rate) || 0;
    var tax_delivery = parseFloat(shop_info_json.info.tax_rate) || 0;

    if (tax_rate > 0) {
        var tax_fee = parseFloat(sum_total * (tax_rate / 100));

        tax_amount = (tax_amount + tax_fee);
    }

    if (order_type === 'delivery' && delivery_charge > 0) {
        if (tax_rate > 0 && tax_delivery > 0) {
            var tax_delivery_fee = parseFloat(delivery_charge * (tax_rate / 100));

            tax_amount = (tax_amount + tax_delivery_fee);
        }

        grand_total = (sum_total + delivery_charge);
    }

    grand_total = (grand_total + tax_amount);

    $('#store_order_table_total').html(grand_total.toFixed(2));
    $('#store_order_table_taxrate').html(tax_rate.toFixed(2));
    $('#store_order_table_taxtotal').html(tax_amount.toFixed(2));

    if (grand_total > 0) {
        $('#store_menu_cart_grand_total').children('label').html(grand_total.toFixed(2));
        $('#store_menu_cart_grand_total').show();
    } else {
        $('#store_menu_cart_grand_total').children('label').html('0');
        $('#store_menu_cart_grand_total').hide();
    }

    if (count_item_list > 0) {
        $('.icon-menu-cart-count').text(count_item_list).show();
    } else {
        $('.icon-menu-cart-count').text(count_item_list).hide();
    }

    //console.log(store_cart_data);

    if (typeof (Storage) !== "undefined") {
        // Code for localStorage/sessionStorage.
        localStorage.setItem('store_cart_save', JSON.stringify(store_cart_data));
        localStorage.setItem('store_cart_type', order_type);
    }
}

function store_menu_item_dropper(ev) {
    ev.preventDefault();

    $('#store_menu_item_droped').css('background', '#ff6');
}

function store_menu_item_dragleave(ev) {
    ev.preventDefault();

    $('#store_menu_item_droped').css('background', '#eee');
}

function store_menu_item_drag(ev) {
    var get_id = $(ev.target).attr('rel') || false;
    //var get_src = $(ev.target).attr('src') || false;

    if (!get_id) {
        return;
    }

    $('#store_menu_item_droped').css('background', '#ffa');

    ev.dataTransfer.setData("item_id", get_id);
    //ev.dataTransfer.setData("item_src", get_src);
}

function store_menu_item_drop(ev) {
    ev.preventDefault();

    var get_id = ev.dataTransfer.getData("item_id") || false;
    //var get_src = ev.dataTransfer.getData("item_src") || false;

    if (!get_id) {
        return;
    }

    store_order_table_add(get_id);
}
