
var shop_info_json;
var shop_gallery_photo_json = [];

$(function () {

    /*$('#store_show_photo_content').on('focusin', function () {
     $('a.fancybox2-gallery').fancybox({
     'type': 'image'
     });
     });*/

    var shop_id = parseInt($('#store_show').data('store-id')) || false;

    zth.API({
        query: 'business_shop/data',
        data: {shop: shop_id},
        callback: function (resp) {
            $('.store_show_hour_indicator').hide();

            if (resp.data) {
                store_show_data(resp.data);
            }
        }
    });

    if (win.width() > 767) {
        $('#store_show_sidebar').stick_in_parent({
            parent: $('body'),
            offset_top: 80,
            bottoming: true
        });
    }/* else {
     $('#store_show_header_xs').stick_in_parent({
     parent: $('body'),
     offset_top: 50,
     bottoming: false
     });
     }*/


    //--media marketing
    $('#sidebar_555').stick_in_parent({
        parent: $('body'),
        offset_top: 80,
        bottoming: true
    });

});

$(window).resize(function () {
    if (win.width() > 767) {
        if (!$('#store_show_sidebar').hasClass('is_stuck')) {
            $('#store_show_sidebar').stick_in_parent({
                parent: $('body'),
                offset_top: 80,
                bottoming: true
            });
        }

        /*if ($('#store_show_header_xs').hasClass('is_stuck')) {
         $('#store_show_header_xs').trigger("sticky_kit:unstick");
         }*/
    } else {
        if ($('#store_show_sidebar').hasClass('is_stuck')) {
            $('#store_show_sidebar').trigger("sticky_kit:unstick");
        }

        /*if (!$('#store_show_header_xs').hasClass('is_stuck')) {
         $('#store_show_header_xs').stick_in_parent({
         parent: $('body'),
         offset_top: 50,
         bottoming: false
         });
         }*/
    }
});

function store_check_open() {
    if(!shop_info_json){
        return false;
    }
    
    var today = shop_info_json.work_hour_today || false;

    if (!today) {
        return false;
    }

    var check_opening = today.now_opening || false;

    var store_force_online = parseInt(shop_info_json.info.force_online) || 0;

    if (store_force_online > 0) {
        return true;
    }

    return check_opening;
}

function store_show_data(data) {
    shop_info_json = data;

    if (data.info) {
        store_show_info(data.info);
    }

    if (data.work_hour_today) {
        store_work_hour_today(data.work_hour_today);
    }

    if (data.rating_now) {
        var review_score = data.rating_now.review_score || 3;
        $('#rateYo_store_rates,#rateYo_store_rates2').hide();
        $('#rateYo_store_rate,#rateYo_store_rate2').rateYo({
            rating: review_score,
            readOnly: true,
            starWidth: "24px",
            numStars: 5,
            fullStar: true
        }).fadeIn();
    }

    if (data.work_hour_list) {
        //console.log(data.work_hour_list);

        var work_hour_li = '';
        var d_o_w_p = null;
        var d = new Date();
        var n = d.getDay();

        $.each(data.work_hour_list, function (i, v) {
            var active_cls = '';
            var d_o_w = v.day_name_short;

            if (n == v.day_of_week) {
                active_cls = 'text-primary time-active';
            }

            if (d_o_w_p == v.day_of_week) {
                d_o_w = '&nbsp;';
                if (active_cls.length > 0) {
                    active_cls += ' ';
                }
                active_cls += 'time-only';
            } else {
                d_o_w_p = parseInt(v.day_of_week) || null;
            }

            work_hour_li += '<li class="' + active_cls + '"><strong>' + d_o_w + '</strong><label>' + v.opening + ' - ' + v.closing + '</label></li>';
        });

        $('#store_work_hours_list > ul').html(work_hour_li);

        $('#store_work_hours_list').show();
    }

    if (data.img_environment) {
        $.each(data.img_environment, function (i, v) {
            var get_ii = parseInt(shop_gallery_photo_json.length) || 0;

            shop_gallery_photo_json[get_ii] = v.img;

            //$('#store_show_photo_content').append('<div class="mkt-image-item col-xs-6"><a href="' + v.img + '" class="fancybox2-gallery" rel="store-gallery-show"><img class="img-fluid" src="' + v.img_thumb + '"></a></div>');

        });
    }

    if (data.img_menu) {
        $.each(data.img_menu, function (i, v) {
            var get_ii = parseInt(shop_gallery_photo_json.length) || 0;

            shop_gallery_photo_json[get_ii] = v.img;

            //$('#store_show_photo_content').append('<div class="mkt-image-item col-xs-6"><a href="' + v.img + '" class="fancybox2-gallery" rel="store-gallery-show"><img class="img-fluid" src="' + v.img_thumb + '"></a></div>');
        });
    }

    /*if ($('#store_show_photo_content').children('.mkt-image-item').length > 0) {
     if (win.width() > 750) {
     $('#store_show_photo_content').masonry({
     itemSelector: '.mkt-image-item',
     percentPosition: true
     });
     }
     }*/

}

function store_show_gallery(id) {
    var get_id = parseInt(id) || 0;
    var get_count = parseInt(shop_gallery_photo_json.length) || null;

    if (!shop_gallery_photo_json[get_id]) {
        return;
    }

    if (!get_count) {
        return;
    }

    var get_next = get_id + 1;
    var get_back = get_id - 1;

    if (get_next >= get_count) {
        get_next = 0;
    }

    if (get_back <= 0) {
        get_back = (get_count - 1);
    }

    $('#store_photo_gallery').find('.modal-body').html('<img class="img-fluid" src="' + shop_gallery_photo_json[get_id] + '">');

    $('#store_photo_gallery').find('.modal-footer').html('<button class="pull-left btn btn-secondary" onclick="store_show_gallery(\'' + get_back + '\');">Back</button><button class="pull-right btn btn-secondary" onclick="store_show_gallery(\'' + get_next + '\');">Next</button>');

    if (!$('#store_photo_gallery').hasClass('show')) {
        $('#store_photo_gallery').modal('show');
    }
}

function store_show_info(data) {

    $('#store_show_contact').show();

    if (data.detail) {
        $('#store_show_about_detail').html(data.detail);
        $('#store_show_about_us').fadeIn();
    }

    if (data.map_position) {
        store_show_map(data.map_position);
    }

    if (data.address) {
        var zipcode = '';

        if (data.zipcode) {
            zipcode = ' , ' + data.zipcode;
        }

        $('#store_contact_address > span').html(data.address + zipcode);

        if (data.map_position) {
            $('#store_contact_address').attr('href', 'https://maps.google.com/?q=' + data.map_position).attr('target', '_blank');
        }

        $('#store_contact_address').show();
    }

    if (data.phone) {
        $('#store_contact_phone > span').html(data.phone);
        $('#store_contact_phone').attr('href', 'tel: ' + data.phone).show();
    }

    if (data.email) {
        $('#store_contact_email > span').html(data.email);
        $('#store_contact_email').attr('href', 'mailto: ' + data.email).show();
    }

    if (data.website) {
        $('#store_contact_website').attr('href', data.website).attr('target', '_blank').show();
    }

}


function store_work_hour_today(data) {
    var time_show = '-';

    if (!data.now_opening) {
        $('.store_show_hour_status').children('.display_time').css({
            'color': '#f00',
            'border-color': '#f00',
            'background-color': '#fff',
            'text-shadow': 'none'
        });

        time_show = data.upcoming_open || '-';

        $('.store_show_hour_status').find('.display_status > .opening').show();
        $('.store_show_hour_status').find('.display_status > .closing').hide();
    } else {
        $('.store_show_hour_status').children('.display_time').css({
            'color': '#fff',
            'border': 'none',
            'background-color': '#2b2',
            'text-shadow': '-1px 1px 2px #030'
        });

        time_show = data.upcoming_close || '-';

        $('.store_show_hour_status').find('.display_status > .opening').hide();
        $('.store_show_hour_status').find('.display_status > .closing').show();
    }

    $('.store_show_hour_status').find('.display_time > span').html(time_show);

    if (!data.next_day_open) {
        $('.store_show_hour_status').find('.display_status > .next_day').hide();
    } else {
        $('.store_show_hour_status').find('.display_status > .next_day').show();
    }

    $('.store_show_hour_status').fadeIn();

}

function store_show_map(map_position) {
    if (!map_position) {
        return;
    }

    var loc_arr = [0, 0];
    loc_arr = map_position.split(",", 2);

    var lat = parseFloat(loc_arr[0]) || 0;
    var lng = parseFloat(loc_arr[1]) || 0;

    var marker_loc = {lat: lat, lng: lng};

    var finder_map = new google.maps.Map(document.getElementById('store_show_maps_canvas'), {
        zoom: 18,
        center: marker_loc
    });

    new google.maps.Marker({
        position: marker_loc,
        map: finder_map
    });

    $('#store_show_maps').show();
}
