var base_url = (typeof window.location.origin === 'undefined') ? window.location.protocol + '//' + window.location.host + '/' : window.location.origin + '/';

//base_url += 'ziamthai-com/';

var site_url = base_url + 'index.php/';
var api_url = site_url + 'api/';
var apps_url = site_url + 'admin_panel/';
var icon_loader = '<i class="fa fa-circle-o-notch fa-spin fa-2x fa-fw" style="color:#0275d8;"></i>';

var win = $(window);

var foods_finder_active = false;


function geo_location(reload) {
    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(function (position) {
            var lat = position.coords.latitude || false;
            var lng = position.coords.longitude || false;
            if (lat && lng) {
                var set_pos = lat.toFixed(5) + ',' + lng.toFixed(5);

                if (typeof (Storage) !== "undefined") {
                    sessionStorage.setItem("current_geo_location", set_pos);
                }

                var set_reload = reload || false;

                geo_address(lat, lng, set_reload);
            }
        }, function (failure) {
            if (failure.message.indexOf("Only secure origins are allowed") == 0) {
                // Secure Origin issue.
            }
        });
    }
}

function geo_address(lat, lng, reload) {

    var set_reload = reload || false;

    $.ajax({
        type: 'GET',
        url: 'https://maps.googleapis.com/maps/api/geocode/json',
        data: {key: 'AIzaSyAR4VzKhm4IQJULWzW37SLFG6y_NKMsVcI', 'latlng': lat + ',' + lng},
        dataType: 'JSON',
        success: function (resp) {
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

    return null;
}

function ajax_error_return(jqXHR, textStatus, errorThrown) {
    var err_title = '<h4>' + textStatus + '</h4>';
    var err_display = errorThrown;

    if (jqXHR.status) {
        err_title += ' [ ' + jqXHR.status + ' ]';
    }

    if (jqXHR.responseText) {
        err_display += jqXHR.responseText;
    }

    return err_title + '<div>' + err_display + '</div>';
}

function tpl_replace(html, data) {
    var t, key, reg;

    if (!html && !data) {
        return;
    }

    for (key in data) {
        reg = new RegExp('{{' + key + '}}', 'ig');
        t = (t || html).replace(reg, data[key]);
    }

    return t;
}
