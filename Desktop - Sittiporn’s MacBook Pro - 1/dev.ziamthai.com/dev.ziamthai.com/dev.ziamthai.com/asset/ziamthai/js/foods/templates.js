
var store_buyer_data;
var store_buyer_modal_reset = false;

if (typeof (Storage) !== "undefined") {
    var store_buyer_save = localStorage.getItem('store_buyer_info') || false;

    if (store_buyer_save) {
        store_buyer_data = JSON.parse(store_buyer_save);
    }
}

$(function () {

    tpl_navbar_sticky();

    $("a[href='#top']").click(function () {
        $("html, body").animate({scrollTop: 0}, "slow");
        return false;
    });

});

$(window).scroll(function () {

    tpl_navbar_sticky();

});

$(window).resize(function () {
    if (win.width() > 767) {
        tpl_navbar_menu_toggle('hide');
    }
});

$(document).click(function (e) {
    var target = e.target;
    if (win.width() < 768) {
        if (!$(target).is('#tpl_navbar') && !$(target).parents().is('#tpl_navbar')) {
            tpl_navbar_menu_toggle('hide');
        }
    }
});

function tpl_navbar_sticky() {

    var scrolled_val = $(document).scrollTop().valueOf();
    //console.log(scrolled_val + ' = scroll value');

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

