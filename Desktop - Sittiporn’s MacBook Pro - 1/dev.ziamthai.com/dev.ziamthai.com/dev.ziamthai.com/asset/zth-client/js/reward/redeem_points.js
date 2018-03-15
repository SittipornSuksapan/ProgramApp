
var dt_reward_history;

$(function () {

    $('#member_barcode_input').focus();

    $('#note_option_btn').click(function () {
        var icon = $('#note_option_btn').find('.fa')

        if ($('.note_option_form').hasClass('active')) {
            $('.note_option_form').removeClass('active').slideUp();
            icon.removeClass('fa-check-square-0').addClass('fa-square-o');
        } else {
            $('.note_option_form').addClass('active').slideDown();
            icon.removeClass('fa-square-o').addClass('fa-check-square-o');
        }
    });

    $('#redeem_point_form').submit(function (e) {
        e.preventDefault();

        $('#redeem_point_form').slideUp();
        $('#redeem_point_result').removeClass('alert-success').addClass('alert-danger').html(loading_icon).show();

        $.ajax({
            type: 'POST',
            url: api_url + 'reward/redeem_point',
            data: $(this).serialize(),
            dataType: 'JSON',
            success: function (resp) {

                $('#redeem_point_result').html(resp.message);

                if (resp.error) {
                    $('#redeem_point_form').slideDown();
                }

                if (resp.success) {
                    $('#redeem_point_result').removeClass('alert-danger').addClass('alert-success');

                    $('#member_photo').attr('src', base_url + 'index.php/uploads/user_photo/large/0');
                    $('#member_points_active').html(0);

                    $('#input_points_amount').val(0);

                    $('#redeem_point_form').find('input[name=member_id]').val(0);
                    $('#redeem_point_form').find('input[name=member_name]').val('');
                    $('#redeem_point_form').find('input[name=member_email]').val('');
                    $('#redeem_point_form').fadeOut();

                    $('select#member_combobox').val(null).trigger("change");

                    $('#member_barcode_input').focus();
                }
            }
        });

    });

    $('#member_barcode_input').keypress(function (e) {
        if (e.which === 13) {
            member_search_barcode_do();
            e.preventDefault();
        }
    });

    $('#member_barcode_form').submit(function (e) {
        e.preventDefault();
        member_search_barcode_do();
    });

    //-- Member Seaerch *select2
    $('select#member_combobox').select2({
        maximumSelectionLength: 1,
        minimumInputLength: 3,
        allowClear: true,
        ajax: {
            dataType: 'json',
            quietMillis: 100,
            url: api_url + 'accounts_finder/search_combobox',
            data: function (params) {
                var get_q = params.term || 'Select Member';

                return {
                    q: get_q
                };
            },
            processResults: function (data) {
                return {
                    results: data
                };
            }
        },
        templateResult: set_select2_member_list,
        templateSelection: set_select2_member_select
    });


    //-- reward history modal
    $('#modal_reward_history').on('show.bs.modal', function (event) {
        var member_id = parseInt($('#redeem_point_form').find('input[name=member_id]').val()) || false;
        var modal_body = $('#modal_reward_history').find('.modal-body');
        var history_error = modal_body.find('#reward_history_error');
        var history_table = modal_body.find('#reward_history_datatable');

        if (!member_id) {
            history_table.hide();
            history_error.html('Not found member accounts.').show();
            return;
        }

        if (dt_reward_history) {
            dt_reward_history.destroy();
        }

        history_error.hide();
        dt_reward_history = history_table.DataTable({
            language: {
                searchPlaceholder: "Order No. / Staff name"
            },
            "processing": true,
            "serverSide": true,
            "ajax": {
                url: api_url + 'reward/history_datatable/' + member_id,
                type: "post",
                error: function () {
                    $(".employee-grid-error").html("");
                    $("#history_datatable").append('<tbody class="employee-grid-error"><tr><th colspan="3">No data found in the server</th></tr></tbody>');
                    $("#history_datatable").css("display", "none");
                }
            },
            "order": [[2, "desc"]],
            "columns": [
                {
                    "name": "action",
                    "data": null,
                    "render": function (data, type, row) {
                        var get_action = data.action || 'unknow';

                        if (get_action == 'receive') {
                            return '<b class="btn btn-sm btn-success"><i class="fa fa-arrow-circle-right"></i></b>';
                        }

                        if (get_action == 'redeem') {
                            return '<b class="btn btn-sm btn-danger"><i class="fa fa-arrow-circle-left"></i></b>';
                        }

                        return '<b class="btn btn-sm btn-warning"><i class="fa fa-exchange"></i></b>';
                    },
                    "orderable": false
                },
                {"name": "point", "data": "point"},
                {"name": "adate", "data": "adate"},
                {"name": "aname", "data": "aname"},
                {
                    "name": "order_amount",
                    "data": null,
                    "render": function (data, type, row) {
                        var order_amount = parseFloat(data.order_amount) || 0;
                        return '$&nbsp;' + order_amount.toFixed(2);
                    }
                },
                {"name": "order_no", "data": "order_no"}
            ]
        });
    });

});


function set_select2_member_list(data) {
    var id = parseInt(data.id) || false;
    if (!id) {
        return '';
    }

    var set_photo = '';
    var set_email = '';

    if (data.photo) {
        set_photo = '<div class="col-xs-4 col-md-3 col-lg-2" style="padding:0;padding-left:5px;padding-right:5px;"><i style="display:block;margin:auto;width:48px;height:48px;border-radius:50%;background-repeat:no-repeat;background-position:center;background-size:cover;background-image:url(' + data.photo + ');"></i></div>';
    }

    if (data.email) {
        set_email = '<div style="padding:5px 0px;font-size:0.8em;color:#f60;">' + data.email + '</div>';
    }

    var $content = $('<div class="container"><div class="row">' + set_photo + '<div class="col-xs-8 col-md-9 col-lg-10"><strong>' + data.name + '</strong>' + set_email + '</div></div></div>');

    return $content;
}

function set_select2_member_select(data) {
    var placeholder = $('#member_combobox').data('placeholder') || 'Search member';

    var display = data.name || placeholder;

    if (data.id) {
        member_search_set_points(data);
    }

    return display;
}

function member_search_barcode_do() {
    var kw = $('#member_barcode_input').val() || null;

    if (!kw) {
        return;
    }

    $('#member_barcode_result').html(loading_icon).show();

    $.ajax({
        type: 'POST',
        url: api_url + 'accounts_finder/search_barcode',
        data: {q: kw},
        dataType: 'JSON',
        success: function (resp) {
            $('#member_barcode_result').hide();

            if (resp.error && resp.message) {
                $('#member_barcode_result').html(resp.message).show();
            }

            if (resp.data) {
                member_search_set_points(resp.data);
            }
        }
    });
}

function member_search_set_points(data) {
    //console.log(data);

    if (!data.id) {
        return;
    }

    $('select#member_combobox').empty().trigger("change");

    $('#redeem_point_result').hide();

    $('#member_photo').attr('src', base_url + 'index.php/uploads/user_photo/large/' + data.id);

    $('#member_points_active').html(data.reward_points);

    $('#redeem_point_form').find('input[name=member_id]').val(data.id);
    $('#redeem_point_form').find('input[name=member_name]').val(data.name);
    $('#redeem_point_form').find('input[name=member_email]').val(data.email);
    $('#redeem_point_form').fadeIn();
}
