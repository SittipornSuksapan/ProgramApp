
var base_url = (typeof window.location.origin === 'undefined') ? window.location.protocol + '//' + window.location.host + '/' : window.location.origin + '/';

//base_url += 'ziamthai-com/';

var site_url = base_url + 'index.php/';
var api_url = base_url + 'api.php/v1/';

var loading_icon = '<i class="fa fa-circle-o-notch fa-spin fa-2x fa-fw" style="color:#0275d8;"></i>';

var now_date = new Date();
var tz_data = Intl.DateTimeFormat().resolvedOptions().timeZone;
var tz_offset = (now_date.getTimezoneOffset() / 60);

/*console.log(now_date + '\r\n' + tz_data + '\r\n' + tz_offset);*/

var win = $(window);

var tpl_mnu_nav = {xs: null, md: null};
var tpl_mnu_loc = [];

var store_buyer_data;
var store_buyer_modal_reset = false;

if (typeof (Storage) !== "undefined") {
    var store_buyer_save = localStorage.getItem('store_buyer_info') || false;
    var zrestaurant_tpl_nav = localStorage.getItem('zrestaurant_tpl_nav') || false;
    var zrestaurant_tpl_loc = sessionStorage.getItem('zrestaurant_tpl_loc') || false;

    if (store_buyer_save) {
        store_buyer_data = JSON.parse(store_buyer_save);
    }

    if (zrestaurant_tpl_nav) {
        tpl_mnu_nav = JSON.parse(zrestaurant_tpl_nav);
    }

    if (zrestaurant_tpl_loc) {
        tpl_mnu_loc = JSON.parse(zrestaurant_tpl_loc);
    }
}

$(function () {
    tpl_navbar_sticky();

    $('#tpl_go_to_top').click(function () {
        $("html, body").animate({scrollTop: 0}, "slow");
        return false;
    });

    $('#tpl_store_finder_form').submit(function (e) {
        if ($('body').find('#store_finder_form').length > 0) {
            e.preventDefault();

            var q = $(this).find('input[name=q]').val() || '';
            var state = $(this).find('input[name=state]').val() || '';
            var map_position = $(this).find('input[name=map_position]').val() || '';

            $('#store_finder_form').find('input[name=q]').val(q);
            $('#store_finder_form').find('input[name=state]').val(state);
            $('#store_finder_form').find('input[name=map_position]').val(map_position);

            foods_store_load();
        }
    });

    $('.dropdown-hover').hover(function () {
        $(this).find('.dropdown-menu').stop(true, true).delay(60).fadeIn();
    }, function () {
        $(this).find('.dropdown-menu').stop(true, true).delay(60).fadeOut();
    });

});

$(window).scroll(function () {

    tpl_navbar_sticky();

    if (win.scrollTop() > 100) {
        $('#tpl_go_to_top').show();
    } else {
        $('#tpl_go_to_top').fadeOut();
    }

});

$(window).resize(function () {

    if (win.width() > 750) {
        tpl_navbar_menu_toggle('hide');
    }

});

$(document).click(function (e) {
    var target = e.target;
    if (win.width() < 751) {
        if (!$(target).is('#tpl_navbar') && !$(target).parents().is('#tpl_navbar')) {
            tpl_navbar_menu_toggle('hide');
        }
    }
});

function tpl_navbar_sticky() {
    var scrolled_val = $(document).scrollTop().valueOf();

    if (scrolled_val > 20) {
        $('#tpl_navbar').addClass('sticky-active');
    } else {
        $('#tpl_navbar').removeClass('sticky-active');
    }
}

function tpl_navbar_menu_toggle(act) {
    var action = act || 'toggle';

    var menu_elm = $('#tpl_navbar_menu');
    var menu_hide = $('#tpl_navbar_menu_hide');

    if (action === 'hide') {
        menu_elm.removeClass('show-menu');
        menu_hide.removeClass('show-menu');
        $('body').removeClass('show-menu');

        return;
    }

    if (action === 'show') {
        menu_elm.addClass('show-menu');
        menu_hide.addClass('show-menu');
        $('body').addClass('show-menu');

        return;
    }

    if (menu_elm.hasClass('show-menu')) {
        tpl_navbar_menu_toggle('hide');

        return;
    }

    tpl_navbar_menu_toggle('show');
}
