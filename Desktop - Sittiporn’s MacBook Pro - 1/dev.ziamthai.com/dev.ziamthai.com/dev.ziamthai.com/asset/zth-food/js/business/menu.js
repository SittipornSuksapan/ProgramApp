
var store_menu_list_json = [];

$(function () {

    var store_photo_shop_id = $('#store_menu_list').data('shop-id') || false;

    if (!store_check_open()) {
        $('#store_warning_modal').find('.modal-title > span').html('Unavailable for online order.');
        $('#store_warning_modal').modal('show');
    }

    if (store_photo_shop_id) {
        zth.API({
            query: 'business_item/finder_category',
            data: {
                shop: store_photo_shop_id,
                show_item: 1
            },
            callback: function (resp) {
                if (resp.success && resp.data) {
                    store_menu_render(resp.data);
                } else {
                    $('#store_menu_item_list').html('<div class="alert alert-warning">Not found menu items.</div>');
                }
            }
        });
    }

    if (win.width() > 767) {
        $('#store_menu_cate_md').stick_in_parent({
            parent: $('body'),
            offset_top: 70,
            bottoming: true
        });
    }

    $('#store_menu_cate_xs').change(function () {
        var selected_id = $(this).children('option:selected').val() || false;

        if (!selected_id) {
            return;
        }

        store_menu_cate_selected(selected_id);
    });

});

$(window).resize(function () {

    if (win.width() > 767) {
        if (!$('#store_menu_cate_md').hasClass('is_stuck')) {
            $('#store_menu_cate_md').stick_in_parent({
                parent: $('body'),
                offset_top: 70,
                bottoming: true
            });
        }
    } else {
        if ($('#store_menu_cate_md').hasClass('is_stuck')) {
            $('#store_menu_cate_md').trigger("sticky_kit:unstick");
        }
    }

});

function store_menu_render(data) {
    var cate_list = {};

    var item_template = $('#show_menu_item_template').html();

    Mustache.parse(item_template);

    $.each(data, function (i, v) {
        var c_id, c_name;

        if (v.category) {
            c_id = parseInt(v.category.id) || false;
            c_name = v.category.name || null;

            if (c_id) {
                cate_list[c_id] = c_name;
            }

            $('#store_menu_cate_list').append('<a class="btn btn-secondary" onclick="store_menu_cate_selected(\'' + c_id + '\');" rel="' + c_id + '">' + c_name + '</a>');
            $('#store_menu_cate_xs').append('<option value="' + c_id + '">' + c_name + '</option>');
        }

        if (v.item && v.item.length > 0) {
            var c_card = $('<div class="card store-menu-cate-item" rel="' + c_id + '"><div class="card-header">' + c_name + '</div><div class="card-block"></div></div>');

            $.each(v.item, function (i_item, v_item) {
                //console.log(v_item);

                var oo = parseInt(v_item.online_order) || 0;

                if (oo < 1) {
                    v_item.online_order = false;
                } else {
                    v_item.online_order = true;
                }

                store_menu_list_json[v_item.id] = v_item;

                var item_render = Mustache.render(item_template, v_item);

                c_card.find('.card-block').append(item_render);
            });

            $('#store_menu_item_list').append(c_card);
        }

    });
}

function store_menu_cate_selected(id) {
    var get_id = id || 'all';

    $('#store_menu_cate_list').find('.btn')
            .removeClass('bg-pink')
            .addClass('btn-secondary');

    $('#store_menu_cate_list').find('.btn[rel="' + get_id + '"]')
            .removeClass('btn-secondary')
            .addClass('bg-pink');

    if (get_id === 'all') {
        $('#store_menu_item_list').find('.store-menu-cate-item').show(0, function () {
            if (win.width() > 767) {
                $('html, body').animate({scrollTop: ($('#store_menu_list').offset().top - 70)}, 300);
            }
        });

        return;
    }

    $('#store_menu_item_list').find('.store-menu-cate-item').hide();

    var c_elm = $('#store_menu_item_list').find('.store-menu-cate-item[rel="' + get_id + '"]')

    c_elm.show(0, function () {
        if (win.width() > 767) {
            $('html, body').animate({scrollTop: (c_elm.offset().top - 70)}, 300);
        }
    });

}
