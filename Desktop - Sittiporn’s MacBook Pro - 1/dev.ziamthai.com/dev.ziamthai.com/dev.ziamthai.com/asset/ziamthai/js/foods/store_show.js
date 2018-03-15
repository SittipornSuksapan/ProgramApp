

var review_page = 1;
var review_page_next = 0;

$(function () {

    /*$("a[href=#store_review_info]").click(function () {
     $('html, body').animate({
     scrollTop: $("#store_review_info").offset().top - 80
     }, 600);
     });*/

    $(".fancybox-button").fancybox({
        helpers: {
            title: {type: 'inside'}
        }
    });


    store_review_load();

    // Each time the user scrolls
    win.scroll(function () {
        // End of the document reached?
        if ($(document).height() - win.height() == win.scrollTop()) {
            if (review_page_next > 0) {
                $('#review_data_loader').show();
                store_review_load(review_page_next);
            }
        }
    });

});

function initFindusMap() {

    /*new google.maps.Marker({
     position: marker_loc,
     animation: google.maps.Animation.DROP,
     map: map
     });*/

    //var store_title = $('#store_show').data('store-title');
    var store_loc = decodeURIComponent($('#store_show').data('store-location')) || null;
    var store_loc_arr = store_loc.split(",");
    var store_loc_lat = parseFloat(store_loc_arr[0]) || 0;
    var store_loc_lng = parseFloat(store_loc_arr[1]) || 0;
    var store_loc_marker = {lat: store_loc_lat, lng: store_loc_lng};

    var store_map = new google.maps.Map(document.getElementById('store_map'), {
        zoom: 18,
        center: store_loc_marker
    });

    var store_marker = new google.maps.Marker({
        position: store_loc_marker,
        animation: google.maps.Animation.DROP,
        icon: base_url + 'asset/ziamthai/img/icon-boom-64.png',
        map: store_map
    });

    /*var infowin = new google.maps.InfoWindow({
     content: '<div style="padding:10px;font-size:1.3em;font-weight:bold;">' + store_title + '</div>'
     });*/

    store_marker.addListener('click', function () {
        //infowin.open(store_map, infowin);
        //https://www.google.com/maps/place/40.7028722+-73.9868281/@40.7028722,-73.9868281,15z
        window.open('https://www.google.com/maps/place/' + store_loc_lat + '+' + store_loc_lng + '/@' + store_loc + ',22z');
        //window.open('http://maps.google.com/?q=' + decodeURIComponent(store_loc) + '&ll=' + decodeURIComponent(store_loc) + '&z=18');
    });
}

function online_order(id) {
    var get_id = parseInt(id) || false;

    if (!get_id) {
        return;
    }

    $('body').find('#online_order_store_id').val(get_id);

    $('#store_online_order_modal').modal('show');

}

function store_review_load(p) {
    var set_page = parseInt(p) || review_page;
    /*var geo_pos = sessionStorage.getItem("current_geo_location") || '';
     var set_q = $('#store_review_finder_form').find('input[name=q]').val() || '';
     var set_loc = $('#store_review_finder_form').find('input[name=loc]').val() || '';
     var set_pos = $('#store_review_finder_form').find('input[name=pos]').val() || '';*/
    //var set_data = $('#store_review_finder_form').serialize();

    var id = parseInt($('#store_show').attr('data-store-id')) || false;

    if (!id) {
        return;
    }

    if (set_page == 0) {
        $('#review_data_loader').hide();
        return;
    }

    $('#review_data_loader').show();

    $.ajax({
        type: 'GET',
        url: api_url + 'business_shop_review/get_data',
        data: 'shop=' + id + '&page=' + set_page,
        dataType: 'JSON',
        success: function (resp) {
            $('#review_data_loader').hide();

            if (resp.page) {
                review_page_next = parseInt(resp.page.next) || 0;
            }

            if (resp.data) {
                if (set_page == 1) {
                    $('#store_review_datatable').html('');
                }

                store_review_datatable(resp.data);
            }

            if (resp.total) {
                var page_total = resp.page.total || 1;
                var page_current = resp.page.current || 1;
                $('#store_review_pager').show();
                $('#store_review_pager').children('label[rel=d_total]').text(parseFloat(resp.total));
                $('#store_review_pager').children('label[rel=p_current]').text(parseFloat(page_current));
                $('#store_review_pager').children('label[rel=p_total]').text(parseFloat(page_total));
            } else {
                $('#store_review_pager').hide();
                $('#store_review_pager').children('label[rel=d_total]').text('0');
                $('#store_review_pager').children('label[rel=p_current]').text('0');
                $('#store_review_pager').children('label[rel=p_total]').text('0');
            }
        }
    });
}

function store_review_datatable(data) {
    var win_w = win.width();

    $.each(data, function (i, v) {
        var html_template = $('#store_review_data_item').html();

        if (win_w < 768) {
            html_template = html_template.replace(/target=\"_blank\"/g, "");
        }

        /*v.link_show = base_url + 'index.php/foods/store/show/' + parseInt(v.bssh_id) + '/' + encodeURIComponent(v.bssh_title);
         v.link_location = '';
         v.show_distance = '';
         v.bssh_score = parseFloat(v.bssh_score) || 0;
         
         if (v.bssh_distance) {
         v.show_distance = '-&nbsp;' + v.bssh_distance + '&nbsp;miles';
         }
         
         if (v.bssh_loc1) {
         v.link_location = '<a href="' + base_url + 'foods/store/?loc=' + v.bssh_loc1 + '">' + v.bssh_loc1 + '</a>';
         }
         
         if (v.bssh_loc2) {
         if (v.bssh_loc1) {
         v.link_location += '&nbsp;,&nbsp;';
         }
         
         v.link_location += '<a href="' + base_url + 'foods/store/?loc=' + v.bssh_loc2 + '">' + v.bssh_loc2 + '</a>';
         }*/

        var set_content = tpl_replace(html_template, v);

        $('#store_review_datatable').append(set_content);
    });
}
