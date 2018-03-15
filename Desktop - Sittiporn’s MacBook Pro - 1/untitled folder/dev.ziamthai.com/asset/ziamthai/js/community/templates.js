

$(document).mouseup(function (e) {
    var nav_search_elm = $("#cmt_nav_search_form");
    if (nav_search_elm.hasClass('active')) {
        if (!nav_search_elm.is(e.target) && nav_search_elm.has(e.target).length === 0) {
            cmt_nav_search('hide');
        }
    }
});

$(function () {

    $(".ads_sidebar").stick_in_parent({
        bottoming: false
    });

    $("a[href='#top']").click(function () {
        $("html, body").animate({scrollTop: 0}, "slow");
        return false;
    });


    $(".dropdown").hover(
            function () {
                if ($(window).width() > 767) {
                    $('.dropdown-menu', this).stop(true, true).fadeIn("fast");
                    $(this).toggleClass('open');
                    $('b', this).toggleClass("caret caret-up");
                }
            },
            function () {
                if ($(window).width() > 767) {
                    $('.dropdown-menu', this).stop(true, true).fadeOut("fast");
                    $(this).toggleClass('open');
                    $('b', this).toggleClass("caret caret-up");
                }
            });

});

$(window).resize(function () {
    var win_w = $(window).width();

    if (win_w > 767) {
        $(".ads_sidebar").stick_in_parent({
            bottoming: false
        });
    } else {
        $(".ads_sidebar").trigger("sticky_kit:detach");
    }
});

function cmt_nav_search(set) {
    var action = set || 'toggle';
    var nav_search_elm = $("#cmt_nav_search_form");

    if (action === 'show') {
        nav_search_elm.addClass('active').addClass('bg-primary');
        $('#cmt_nav_search_open').hide();
        $('#cmt_nav_search_close').show();
        return;
    }

    if (action === 'hide') {
        nav_search_elm.removeClass('active').removeClass('bg-primary');
        $('#cmt_nav_search_open').show();
        $('#cmt_nav_search_close').hide();
        return;
    }

    if (nav_search_elm.hasClass('active')) {
        cmt_nav_search('hide');
    } else {
        cmt_nav_search('show');
    }
}


