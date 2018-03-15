
$(function () {

    if (typeof (Storage) !== "undefined") {
        var cur_geo_addr = sessionStorage.getItem("current_geo_address") || null;

        $('#modal_location_geo_address').show();
        $('#modal_location_geo_address').children('label').text(cur_geo_addr);
    }

    if (tpl_mnu_loc.length > 0) {
        tpl_location_render(tpl_mnu_loc);

        loading_panel(false);
    } else {
        $.ajax({
            type: 'POST',
            url: api_url + 'locations/finder',
            dataType: 'JSON',
            success: function (resp) {
                if (resp.data) {
                    tpl_mnu_loc = resp.data

                    if (typeof (Storage) !== "undefined") {
                        sessionStorage.setItem('zrestaurant_tpl_loc', JSON.stringify(tpl_mnu_loc));
                    }

                    tpl_location_render(tpl_mnu_loc);
                }
            }
        });
    }

});

function tpl_location_render(data) {
    var list_c = 0;
    var list_print = '';

    $.each(data, function (i, v) {
        if (list_c < 1) {
            list_print += '<div class="col-sm-6"><div class="modal-location-group btn-group-vertical">';
        }

        var shop_count = '';

        if (v.shop_count) {
            shop_count = '<span class="tag tag-default">' + v.shop_count + '</span>';
        }

        //var lll = site_url + 'restaurant/find/?state=' + v.code;

        list_print += '<a href="javascript:tpl_location_selected(\'' + v.code + '\');" class="modal-location-btn btn btn-secondary" style="text-align:left;"><span>' + v.name + '</span>' + shop_count + '</a>';

        list_c++;

        if ((list_c % 5) == 0) {
            list_c = 0;
            list_print += '</div></div>';
        }
    });

    $('#modal_location_list').html(list_print);
}

function tpl_location_selected(loc) {
    var state = loc || false;

    if (!state) {
        return;
    }

    var form_finder = $('body').find('#tpl_store_finder_form');
    form_finder.find('input[name=state]').val(state);
    form_finder.submit();
}

function foods_store_nearme_geoip() {
    var get_data = geo_freegeoip(false);
    var lat = get_data.latitude || 0;
    var lng = get_data.longitude || 0;
    var set_pos = lat.toFixed(5) + ',' + lng.toFixed(5);
    foods_store_nearme_data(set_pos);
}

function foods_store_nearme() {
    if (location.protocol !== "https:") {
        foods_store_nearme_geoip();
        return;
    }

    if (!navigator && !navigator.geolocation) {
        foods_store_nearme_geoip();
        return;
    }

    navigator.geolocation.getCurrentPosition(foods_store_nearme_geo);
}

function foods_store_nearme_geo(position) {
    var lat = 0;
    var lng = 0;
    
    loading_panel(true);
    
    if (!position) {
        var get_data = geo_freegeoip(false);

        lat = get_data.latitude || 0;
        lng = get_data.longitude || 0;
    } else {
        if (position.coords.latitude && position.coords.longitude) {
            lat = position.coords.latitude || 0;
            lng = position.coords.longitude || 0;

            geo_address(lat, lng);
        } else {
            var get_data = geo_freegeoip(false);

            lat = get_data.latitude || 0;
            lng = get_data.longitude || 0;
        }
    }

    var set_pos = lat.toFixed(5) + ',' + lng.toFixed(5);

    foods_store_nearme_data(set_pos);
}

function foods_store_nearme_data(set_pos) {
    loading_panel(false);

    if (typeof (Storage) !== "undefined") {
        sessionStorage.setItem("current_geo_location", set_pos);

        var cur_geo_addr = sessionStorage.getItem("current_geo_address") || null;

        if (cur_geo_addr) {
            $('#store_finder_address').children('label').text(cur_geo_addr);
            $('#store_finder_address').show();

            $('#modal_location_geo_address').children('label').text(cur_geo_addr);
            $('#modal_location_geo_address').show();
        }
    }

    $('#tpl_store_finder_form').find('input[name=q]').val('');
    $('#tpl_store_finder_form').find('input[name=state]').val('');
    $('#tpl_store_finder_form').find('input[name=map_position]').val(set_pos);
    $('#tpl_store_finder_form').submit();

    $('#location_modal').modal('hide');
}
    