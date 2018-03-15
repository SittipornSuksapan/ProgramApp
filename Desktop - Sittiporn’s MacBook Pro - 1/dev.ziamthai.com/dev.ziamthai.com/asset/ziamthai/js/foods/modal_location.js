
$(function () {

    if (typeof (Storage) !== "undefined") {
        var cur_geo_addr = sessionStorage.getItem("current_geo_address") || null;

        $('#modal_location_geo_address').show();
        $('#modal_location_geo_address').children('label').text(cur_geo_addr);
    }

});

function foods_store_nearme_geoip() {
    var get_data = geo_freegeoip(false);
    var lat = get_data.latitude || 0;
    var lng = get_data.longitude || 0;
    var set_pos = lat.toFixed(5) + ',' + lng.toFixed(5);
    foods_store_nearme_data(set_pos);
}

function foods_store_nearme() {
    var lat = 0;
    var lng = 0;

    if (location.protocol !== "https:") {
        foods_store_nearme_geoip();
        return;
    }

    if (!navigator && !navigator.geolocation) {
        foods_store_nearme_geoip();
        return;
    }

    tpl_icon_loader(true);

    navigator.geolocation.getCurrentPosition(function (position) {
        if (position.coords.latitude && position.coords.longitude) {
            lat = position.coords.latitude || 0;
            lng = position.coords.longitude || 0;
            geo_address(lat, lng);
        } else {
            var get_data = geo_freegeoip(false);
            lat = get_data.latitude || 0;
            lng = get_data.longitude || 0;
        }

        var set_pos = lat.toFixed(5) + ',' + lng.toFixed(5);

        foods_store_nearme_data(set_pos);
    });

}

function foods_store_nearme_data(set_pos) {
    
    tpl_icon_loader(false);

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

    $('#foods_store_finder_form').find('input[name=q]').val('');
    $('#foods_store_finder_form').find('input[name=loc]').val('');
    $('#foods_store_finder_form').find('input[name=pos]').val(set_pos);
    $('#foods_store_finder_form').submit();
    
    $('#myLocationModal').modal('hide');
}
    