
var store_menu_list = [];
var store_cart_data = [];
var store_cart_shop_id = 0;

$(function () {
    store_cart_shop_id = parseInt($('#store_order_form').attr('rel')) || 0;

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
            $('#store_order_form').find('input[name=order_type]').val(store_cart_type);
            $('#store_order_service_' + store_cart_type).click();
        }

        if (store_cart_data && store_cart_data[store_cart_shop_id]) {
            $.each(store_cart_data[store_cart_shop_id], function (i, v) {
                store_order_table_add(i, v.qty, v.inst);
            });
        }
    }

    $('#store_order_service_delivery').click(function () {
        $('#store_order_form').find('input[name=order_type]').val('delivery');
        $('#store_order_service_delivery').blur();
        store_order_table_cal();
    });

    $('#store_order_service_pickup').click(function () {
        $('#store_order_form').find('input[name=order_type]').val('pickup');
        $('#store_order_service_pickup').blur();
        store_order_table_cal();
    });

    $('#store_order_modal').on('hide.bs.modal', function (event) {
        $('#store_order_modal_label').text('Order');
        $('#store_order_modal_img').attr('src', '');
        $('#store_order_modal_desc').html('');
        $('#store_order_modal_price').text('0');
        $('#store_order_modal_qty').val(1);
        $('#store_order_modal_total').val(0);
        $('#store_order_modal_inst').val('');
        $('#store_order_modal').attr('data-menu-id', '0');
    });

    $('#store_order_form').submit(function (e) {
        e.preventDefault();

        store_buyer_modal_reset = false;

        store_order_table_cal();
        
        if (typeof (Storage) !== "undefined") {
            var store_buyer_save = localStorage.getItem('store_buyer_info') || false;

            if (store_buyer_save) {
                store_buyer_data = JSON.parse(store_buyer_save);
            }
        }

        if (!store_buyer_data) {
            $('#foods_buyer_info_modal').modal('show');
            return;
        }

        if (!store_buyer_data.name) {
            $('#foods_buyer_info_modal').modal('show');
            return;
        }

        if (!store_buyer_data.email && !store_buyer_data.tel) {
            $('#foods_buyer_info_modal').modal('show');
            return;
        }

        $('#store_order_checkout_result').html(icon_loader).show();
        $('#store_order_btn_checkout').prop('disabled', true);

        $.ajax({
            type: 'POST',
            url: api_url + 'foods_store/order_save',
            data: $(this).serialize() + '&' + $.param(store_buyer_data),
            dataType: 'JSON',
            error: function () {
                $('#store_order_btn_checkout').prop('disabled', false);
                $('#store_order_checkout_result').html('Error.');
            },
            success: function (resp) {
                $('#store_order_btn_checkout').prop('disabled', false);
                $('#store_order_checkout_result').html(resp.message);

                if (resp.modal_show && $(resp.modal_show)) {
                    $(resp.modal_show).modal('show');
                }

                if (resp.success) {
                    $('#store_order_checkout_result').append(icon_loader);

                    localStorage.removeItem('store_cart_type');
                    localStorage.removeItem('store_cart_save');

                    location.href = base_url + 'index.php/foods/store/viewOrder/' + parseInt(resp.order_id);
                }
            }
        });
    });

    $('.store_order_cate_list').click(function (e) {
        var tab_ref_id = $(this).attr('data-tab-link') || false;

        if (!tab_ref_id) {
            return;
        }

        var tab_a_link = $('#store_order_tab_nav').find('a[href="' + tab_ref_id + '"]');

        if (tab_a_link.length < 1) {
            return;
        }

        if ($('#store_order_menu').find('[data-layout-2col="one"]').hasClass('deactive')) {
            layout_2col('one', '#store_order_menu', function () {
                $('html, body').scrollTop(0);
            });
        } else {
            $('html, body').scrollTop(0);
        }

        $('#store_order_tab_nav').find('a[href="' + tab_ref_id + '"]').trigger('click');
        $('.store_order_cate_list').removeClass('active');
        $(this).addClass('active');
    });

});


function store_order_select(id) {
    var data = store_menu_list[id] || false;

    if (!data) {
        return;
    }

    var store_tbody = $('#store_order_table > tbody');
    var set_qty = 1;
    var set_inst = '';
    var set_price = parseFloat(data.bsih_price) || 1;

    if (store_tbody.children('#item_' + data.bsih_id).length > 0) {
        set_qty = parseInt(store_tbody.children('#item_' + data.bsih_id).find('.item_qty').val()) || 1;
        set_inst = store_tbody.children('#item_' + data.bsih_id).find('.item_instruction').val() || '';
    }

    var set_total = set_qty * set_price;

    $('#store_order_modal_label').text(data.bsih_name);
    $('#store_order_modal_img').attr('src', data.bsih_photo);
    $('#store_order_modal_desc').html(data.bsih_desc);
    $('#store_order_modal_price').text(set_price);
    $('#store_order_modal_qty').val(set_qty);
    $('#store_order_modal_total').val(set_total);
    $('#store_order_modal_inst').val(set_inst);
    $('#store_order_modal').attr('data-menu-id', data.bsih_id);
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
}

function store_order_table_add(id, qty, inst) {
    var data = store_menu_list[id] || false;

    if (!data) {
        return;
    }

    var set_qty = parseInt(qty) || 1;
    var set_price = parseFloat(data.bsih_price) || 1;
    var set_total = set_qty * set_price;
    var set_inst = decodeURIComponent(inst) || '';
    var print_inst = '';

    if (set_inst.length > 0) {
        set_inst = set_inst.replace(/["']/g, "");
        print_inst = '*' + set_inst;
    }

    var store_tbody = $('#store_order_table > tbody');
    var get_row = store_tbody.children('#item_' + data.bsih_id);

    if (get_row.length < 1) {//add
        store_tbody.append('<tr id="item_' + data.bsih_id + '" rel="' + data.bsih_id + '">' +
                '<td><a href="javascript:store_order_table_remove(' + parseInt(data.bsih_id) + ');" style="color:red;"><i class="fa fa-remove"></i></a>&nbsp;<a href="javascript:store_order_select(\'' + data.bsih_id + '\');">' + data.bsih_name + '</a><div class="item_instruction2" style="font-size:0.9em;color:#f60;">' + print_inst + '</div><input type="hidden" name="item_id[]" value="' + data.bsih_id + '"><input type="hidden" class="item_price" name="item_price[]" value="' + data.bsih_price + '"><input type="hidden" name="item_name[]" value="' + data.bsih_name + '"><input class="item_instruction" type="hidden" name="item_instruction[]" value="' + set_inst + '"></td>' +
                '<td><input type="number" step="1" class="item_qty form-control form-control-sm" name="item_qty[]" value="' + set_qty + '" onchange="store_order_table_cal();" onkeyup="store_order_table_cal();" onfocus="$(this).select();" min="1" max="50"></td>' +
                '<td><input class="item_total form-control form-control-sm disabled" name="item_total[]" value="' + set_total + '" readonly="yes" style="text-align:right;"></td>' +
                '</tr>');
    } else {
        get_row.find('.item_qty').val(set_qty);
        get_row.find('.item_total').val(set_total);
        get_row.find('.item_instruction').val(set_inst);
        get_row.find('.item_instruction2').text(print_inst);
    }

    store_order_table_cal();
}

function store_order_table_remove(id) {
    var store_tbody = $('#store_order_table > tbody');

    if (id === 'all') {
        store_tbody.html('');
        store_order_table_cal();
        return;
    }

    var get_id = parseInt(id) || false;

    if (!get_id) {
        return;
    }

    var get_row = store_tbody.children('#item_' + get_id);

    if (get_row.length > 0) {//add
        get_row.remove();
    }

    store_order_table_cal();
}

function store_order_table_cal() {
    var store_tbody = $('#store_order_table > tbody');
    var order_type = $('#store_order_form').find('input[name=order_type]').val() || 'pickup';
    var delivery_charge = parseFloat($('#store_order_table_delivery').text()) || 0;
    var sum_total = 0;
    var shop_id = store_cart_shop_id.toString() || "0";

    store_cart_data[shop_id] = {};

    $.each(store_tbody.children('tr'), function (i, v) {
        var line_id = parseInt($(this).attr('rel')) || false;
        var line_qty = parseInt($(this).find('.item_qty').val()) || 0;
        var line_price = parseFloat($(this).find('.item_price').val()) || 0;
        var line_total = line_qty * line_price;
        var line_inst = $(this).find('.item_instruction').val() || '';

        if (line_id) {
            store_cart_data[shop_id][line_id] = {'qty': line_qty, 'inst': line_inst};
        }

        $(this).find('.item_total').val(line_total.toFixed(2));

        sum_total = sum_total + line_total;
    });

    $('#store_order_table_subtotal').html(sum_total.toFixed(2));

    var grand_total = sum_total;

    if (order_type == 'delivery') {
        grand_total = sum_total + delivery_charge;
    }

    $('#store_order_table_total').html(grand_total.toFixed(2));

    //console.log(store_cart_data);

    if (typeof (Storage) !== "undefined") {
        // Code for localStorage/sessionStorage.
        localStorage.setItem('store_cart_save', JSON.stringify(store_cart_data));
        localStorage.setItem('store_cart_type', order_type);
    }
}
