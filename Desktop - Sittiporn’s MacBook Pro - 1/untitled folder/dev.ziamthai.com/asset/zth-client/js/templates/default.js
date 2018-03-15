
var base_url = (typeof window.location.origin === 'undefined') ? window.location.protocol + '//' + window.location.host + '/' : window.location.origin + '/';

var site_url = base_url + 'index.php/';
var api_url = base_url + 'api.php/v1_client/';

var loading_icon = '<i class="fa fa-circle-o-notch fa-spin fa-2x fa-fw" style="color:#0275d8;"></i>';

var now_date = new Date();
var tz_data = Intl.DateTimeFormat().resolvedOptions().timeZone;
var tz_offset = (now_date.getTimezoneOffset() / 60);

/*console.log(now_date + '\r\n' + tz_data + '\r\n' + tz_offset);*/

var win = $(window);

$(function () {

    tpl_sidebar_adjust();

});

$(window).resize(function () {

    tpl_sidebar_adjust();

});

function tpl_sidebar_adjust() {

    var sidebar_l = $('#tpl_sidebar').css('left') || 0;

    var sidebar_w = $('#tpl_sidebar').width() || 0;

    if (sidebar_l < 0) {
        sidebar_w = 0;
    }

    //$('#tpl_content').css('left', sidebar_w);

}
