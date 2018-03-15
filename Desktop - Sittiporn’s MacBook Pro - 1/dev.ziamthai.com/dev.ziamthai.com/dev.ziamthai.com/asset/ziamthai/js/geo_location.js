
$(function () {

    if (typeof (Storage) !== "undefined") {
        if (!sessionStorage.getItem("current_geo_location")) {
            geo_location();
        }
    }

});

function geo_location(reload) {
    var set_reload = reload || false;

    if (location.protocol != "https:") {
        geo_freegeoip(set_reload);
        return;
    }

    if (!navigator && !navigator.geolocation) {
        geo_freegeoip(set_reload);
        return;
    }

    loading_panel(true);

    navigator.geolocation.getCurrentPosition(function (position) {
        var lat = position.coords.latitude || false;
        var lng = position.coords.longitude || false;
        if (lat && lng) {
            var set_pos = lat.toFixed(5) + ',' + lng.toFixed(5);

            if (typeof (Storage) !== "undefined") {
                sessionStorage.setItem("current_geo_location", set_pos);
            }

            geo_address(lat, lng, set_reload);
        }
    }, function (failure) {
        geo_freegeoip(set_reload);
    });

}

function geo_freegeoip(reload) {
    var set_reload = reload || false;

    var geo_data = (function () {
        var geo_data = null;
        $.ajax({
            'async': false,
            'global': false,
            'url': "//freegeoip.net/json/",
            'dataType': "json",
            'cache': false,
            success: function (data) {
                geo_data = data;
            },
            error: function () {
                geo_data = null;
            }
        });
        return geo_data;
    })();

    if (!geo_data) {
        loading_panel(false);

        return null;
    }

    if (geo_data.latitude && geo_data.longitude) {
        if (typeof (Storage) !== "undefined") {
            var set_pos = geo_data.latitude.toFixed(5) + ',' + geo_data.longitude.toFixed(5);
            sessionStorage.setItem("current_geo_location", set_pos);
        }

        geo_address(geo_data.latitude.toFixed(5), geo_data.longitude.toFixed(5), set_reload);
    }

    loading_panel(false);

    return geo_data;
}

function geo_address(lat, lng, reload) {
    var set_reload = reload || false;

    if (!lat && !lng) {
        if (set_reload === true) {
            location.reload();
        }

        loading_panel(false);

        return null;
    }

    $.ajax({
        type: 'GET',
        url: 'https://maps.googleapis.com/maps/api/geocode/json',
        data: {key: 'AIzaSyAR4VzKhm4IQJULWzW37SLFG6y_NKMsVcI', 'latlng': lat + ',' + lng},
        dataType: 'JSON',
        success: function (resp) {
            loading_panel(false);
            var format_address = '';

            if (resp.results[1]) {
                format_address = resp.results[1].formatted_address || null;
            }

            if (resp.results[0] && !format_address) {
                format_address = resp.results[0].formatted_address || null;
            }

            if (!format_address) {
                return;
            }

            if (typeof (Storage) !== "undefined") {
                sessionStorage.setItem("current_geo_address", format_address);
            }

            if (set_reload === true) {
                location.reload();
            }

            return format_address;
        }
    });

    loading_panel(false);

    return null;
}
