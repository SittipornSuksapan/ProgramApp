var table_so_datatable = null;

$(function () {

    table_so_datatable = $('#so_datatable').DataTable({
        "processing": true,
        "serverSide": true,
        "ajax": {
            url: api_url + 'sales_order/datatable',
            type: "post",
            error: function () {
                $(".employee-grid-error").html("");
                $("#so_datatable").append('<tbody class="employee-grid-error"><tr><th colspan="3">No data found in the server</th></tr></tbody>');
                $("#so_datatable").css("display", "none");
            }
        },
        "order": [[4, "desc"]],
        "columns": [
            {
                "name": "order_id",
                "data": null,
                "render": function (data, type, row) {
                    var get_id = parseInt(data.order_id) || 0;
                    var get_delivery_type = data.order_delivery_type || 'delivery';

                    var btn_delivery_type_class = 'btn-secondary';

                    if (get_delivery_type == 'delivery') {
                        btn_delivery_type_class = 'btn-success';
                    }

                    var btn_delivery_type = '<a class="btn btn-sm ' + btn_delivery_type_class + '" href="javascript:void(0);">' + get_delivery_type + '</a>';

                    return '<div class="btn-group" onclick="javascript:so_view(' + get_id + ');"><b class="btn btn-sm btn-secondary"><i class="fa fa-search"></i></b>' + btn_delivery_type + '</div>';
                },
                "orderable": false,
                "width": 100
            },
            {
                "name": "order_grand_total",
                "data": null,
                "render": function (data, type, row) {
                    var get_total = parseFloat(data.order_grand_total) || 0;
                    return '$' + get_total.toFixed(2);
                },
                "width": 80
            },
            {"name": "order_name", "data": "order_name", "width": 160},
            {
                "name": "order_street",
                "data": null,
                "render": function (data, type, row) {
                    var address_display = '';

                    if (data.order_street) {
                        address_display += data.order_street;
                    }

                    if (data.order_address) {
                        address_display += ' ' + data.order_address;
                    }

                    if (data.order_city) {
                        address_display += ', ' + data.order_city;
                    }

                    if (data.order_state) {
                        address_display += ', ' + data.order_state;
                    }

                    if (data.order_zipcode) {
                        address_display += ' ' + data.order_zipcode;
                    }

                    if (address_display) {
                        address_display = address_display.trim();
                    }

                    return '<div style="font-size:0.8em;">' + address_display + '</div>';
                },
                "width": 160,
                "orderable": false
            },
            {"name": "order_date", "data": "order_date", "width": 160}
        ]
    });

});

//-- order modal view : show
function so_view(id) {
    var so_id = parseInt(id) || false;

    if (!so_id) {
        return;
    }

    var modal_elm = $('#modal_so_view') || false;

    if (!modal_elm) {
        return;
    }

    modal_elm.find('.modal-title > span').text(so_id);
    modal_elm.find('.modal-body').html('<center>' + loading_icon + '</center>');
    modal_elm.modal('show');

    $.ajax({
        type: 'POST',
        url: api_url + 'sales_order/order_info',
        data: {order: so_id},
        dataType: 'JSON',
        error: function () {
            modal_elm.find('.modal-body').html('Error: loading...');
        },
        success: function (resp) {
            if (resp.order_data) {
                var set_template = $('#template_so_view').html();
                var order = resp.order_data.order || null;

                var address_display = '';

                if (order.customer_street) {
                    address_display += order.customer_street;
                }

                if (order.customer_address) {
                    address_display += ' ' + order.customer_address;
                }

                if (order.customer_city) {
                    address_display += ', ' + order.customer_city;
                }

                if (order.customer_state) {
                    address_display += ', ' + order.customer_state;
                }

                if (order.customer_zipcode) {
                    address_display += ' ' + order.customer_zipcode;
                }

                if (address_display) {
                    address_display = address_display.trim();
                }

                resp.order_data.order['customer_address_full'] = address_display;

                Mustache.parse(set_template);

                var item_render = Mustache.render(set_template, resp.order_data);

                modal_elm.find('.modal-body').html(item_render);
            }
        }
    });
}
    