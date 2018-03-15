var base_url = (typeof window.location.origin === 'undefined') ? window.location.protocol + '//' + window.location.host + '/' : window.location.origin + '/';

//base_url += 'ziamthai-com/';

var site_url = base_url + 'index.php/';

var api_url = site_url + 'api/';

var icon_loader = '<i class="fa fa-circle-o-notch fa-spin fa-2x fa-fw" style="color:#0275d8;"></i>';

var win = $(window);

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

function tpl_nav_ussb(set) {
    var action = set || 'toggle';
    var nav_search_elm = $("#tpl_nav_ussb_box");

    if (action === 'show') {
        nav_search_elm.addClass('active');
        $('#tpl_nav_ussb_menu').removeClass('dropdown-menu dropdown-menu-right');
        $('#tpl_nav_ussb_head').show();
        return;
    }

    if (action === 'hide') {
        nav_search_elm.removeClass('active');
        $('#tpl_nav_ussb_menu').addClass('dropdown-menu dropdown-menu-right');
        $('#tpl_nav_ussb_head').hide();
        return;
    }

    if (nav_search_elm.hasClass('active')) {
        rst_nav_search('hide');
    } else {
        rst_nav_search('show');
    }
}

$(document).mouseup(function (e) {
    var nav_usmnu_elm = $("#tpl_nav_ussb_box");
    if (nav_usmnu_elm.hasClass('active')) {
        if (!nav_usmnu_elm.is(e.target) && nav_usmnu_elm.has(e.target).length === 0) {
            tpl_nav_ussb('hide');
        }
    }
});

$(window).resize(function () {
    var tpl_nav_ussb_elm = $("#tpl_nav_ussb_box");
    var win_w = $(window).width();

    if (win_w > 767 && tpl_nav_ussb_elm.hasClass('active')) {
        tpl_nav_ussb('hide');
    }
});

/*-- Facebook --*/
window.fbAsyncInit = function () {
    FB.init({
        appId: '779004135581742',
        xfbml: true,
        version: 'v2.8'
    });
    FB.AppEvents.logPageView();
};

(function (d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) {
        return;
    }
    js = d.createElement(s);
    js.id = id;
    js.src = "//connect.facebook.net/en_US/sdk.js";
    fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));

/*-- Google Analytics --*/
(function (i, s, o, g, r, a, m) {
    i['GoogleAnalyticsObject'] = r;
    i[r] = i[r] || function () {
        (i[r].q = i[r].q || []).push(arguments)
    }, i[r].l = 1 * new Date();
    a = s.createElement(o),
            m = s.getElementsByTagName(o)[0];
    a.async = 1;
    a.src = g;
    m.parentNode.insertBefore(a, m)
})(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga');

ga('create', 'UA-82638947-1', 'auto');
ga('send', 'pageview');

