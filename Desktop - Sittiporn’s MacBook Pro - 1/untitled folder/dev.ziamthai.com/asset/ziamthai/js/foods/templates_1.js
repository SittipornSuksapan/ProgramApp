
var store_buyer_data;
var store_buyer_modal_reset = false;

if (typeof (Storage) !== "undefined") {
    var store_buyer_save = localStorage.getItem('store_buyer_info') || false;

    if (store_buyer_save) {
        store_buyer_data = JSON.parse(store_buyer_save);
    }
}

$(document).mouseup(function (e) {
    var nav_search_elm = $("#rst_nav_search_form");
    if (nav_search_elm.hasClass('active')) {
        if (!nav_search_elm.is(e.target) && nav_search_elm.has(e.target).length === 0) {
            rst_nav_search('hide');
        }
    }
});

function rst_nav_search(set) {
    var action = set || 'toggle';
    var nav_search_elm = $("#rst_nav_search_form");

    if (action === 'show') {
        nav_search_elm.addClass('active').addClass('bg-primary');
        $('#rst_nav_search_open').hide();
        $('#rst_nav_search_close').show();
        return;
    }

    if (action === 'hide') {
        nav_search_elm.removeClass('active').removeClass('bg-primary');
        $('#rst_nav_search_open').show();
        $('#rst_nav_search_close').hide();
        return;
    }

    if (nav_search_elm.hasClass('active')) {
        rst_nav_search('hide');
    } else {
        rst_nav_search('show');
    }
}


$(function () {

    $("a[href='#top']").click(function () {
        $("html, body").animate({scrollTop: 0}, "slow");
        return false;
    });

});

