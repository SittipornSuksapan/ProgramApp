
foods_finder_active = true;

var finder_map;
var finder_marker = [];
var finder_infowin = [];
var finder_infowin_active = null;
var finder_page_next = 0;

$(function () {

    finder_adjust_elm();

    foods_store_load();

    if (typeof (Storage) !== "undefined") {
        if (!sessionStorage.getItem("current_user_id")) {
            //-- show marketing popup
        }
    }

    if (typeof (Storage) !== "undefined") {
        var cur_geo_addr = sessionStorage.getItem("current_geo_address") || null;
        if (cur_geo_addr) {
            $('#store_finder_address').children('label').text(cur_geo_addr);
            $('#store_finder_address').show();
        }
    }

    $('#find-bssh-loadmore').click(function () {
        if (finder_page_next > 0) {
            $('#find-bssh-loadmore').hide();

            foods_store_load(finder_page_next);
        }
    });

    // Each time the user scrolls
    win.scroll(function () {
        // End of the document reached?
        var chk_scroll_point = ($(document).height() - win.height());
        var end_scroll_point = (win.scrollTop() + 240);

        if (win.width() < 767) {
            end_scroll_point = (win.scrollTop() + 120);
        }

        if (chk_scroll_point < end_scroll_point) {
            $('#find-bssh-loadmore').click();
        }
    });

});

$(window).resize(function () {

    finder_adjust_elm();

});

function finder_adjust_elm() {
    if (win.width() < 1024) {
        $('#store_finder_sidebar').insertBefore('#store_finder_content');

        if ($('#store_finder_aside').hasClass('is_stuck')) {
            $('#store_finder_aside').trigger("sticky_kit:unstick");
        }
    } else {
        $('#store_finder_sidebar').insertAfter('#store_finder_content');

        if (!$('#store_finder_aside').hasClass('is_stuck')) {
            $('#store_finder_aside').stick_in_parent({
                parent: $('body'),
                offset_top: 80,
                bottoming: false
            });
        }
    }
}

function initFinderMap() {
    var cur_geo_loc = sessionStorage.getItem("current_geo_location") || null;
    var loc_arr = [0, 0];
    if (cur_geo_loc) {
        loc_arr = cur_geo_loc.split(",", 2);
    }
    var lat = parseFloat(loc_arr[0]) || 0;
    var lng = parseFloat(loc_arr[1]) || 0;

    var marker_loc = {lat: lat, lng: lng};

    finder_map = new google.maps.Map(document.getElementById('store_finder_gmap'), {
        zoom: 11,
        center: marker_loc
    });

    new google.maps.Marker({
        position: marker_loc,
        map: finder_map
    });
}

function foods_store_load(p) {
    var set_page = parseInt(p) || 1;
    var set_data = $('body').find('#store_finder_form').serialize();

    if (set_page === 0) {
        $('#find-bssh-loadmore').hide();

        return;
    }

    $('#find-bssh-loadmore').hide();

    var map_position = $('#store_finder_form input[name=map_position]').val() || false;
    var order_by = '';
    var sort_by = '';

    if (map_position) {
        order_by = 'distance';
        sort_by = 'ASC';
    }

    if ($('#location_modal').length > 0) {
        $('#location_modal').modal('hide');
    }

    zth.API({
        query: 'restaurant/finder',
        data: set_data + '&page_limit=10&page=' + set_page + '&order_by=' + order_by + '&sort_by=' + sort_by,
        dataType: 'JSON',
        callback: function (resp) {

            var get_data = resp.data || null;

            if (!get_data) {
                return null;
            }

            finder_page_next = parseInt(get_data.page.next) || 0;

            if (set_page === 1) {
                $('#find-bssh').html('');
            }

            initFinderMap();

            foods_store_datatable(get_data.data);

            $('#find-bssh-loadmore').show();

            var p_current = parseInt(get_data.page.current) || 0;
            var p_total = parseInt(get_data.page.total) || 0;

            if (p_current === p_total) {
                $('#find-bssh-loadmore').hide();
            }

            if (get_data.total) {
                var page_total = get_data.page.total || 1;
                var page_current = get_data.page.current || 1;
                $('#find-bssh-result').show();
                $('#find-bssh-result').children('label[rel=d_total]').text(parseFloat(get_data.total));
                $('#find-bssh-result').children('label[rel=p_current]').text(parseFloat(page_current));
                $('#find-bssh-result').children('label[rel=p_total]').text(parseFloat(page_total));
            } else {
                $('#find-bssh-result').hide();
                $('#find-bssh-result').children('label[rel=d_total]').text('0');
                $('#find-bssh-result').children('label[rel=p_current]').text('0');
                $('#find-bssh-result').children('label[rel=p_total]').text('0');
            }

        }
    });

}

function foods_store_datatable(data) {
    var win_w = win.width();

    var get_template = $('#find-bssh-item').html();
    Mustache.parse(get_template);

    $.each(data, function (i, v) {

        if (win_w < 768) {
            get_template = get_template.replace(/target=\"_blank\"/g, "");
        }

        v.link_show = 'store/show/' + parseInt(v.id) + '/' + encodeURIComponent(v.name);
        v.link_state = null;
        v.show_distance = null;

        if (v.distance) {
            v.show_distance = '-&nbsp;' + v.distance + '&nbsp;miles';
        }

        if (v.state_code) {
            v.link_state = 'find/?state=' + v.state_code;
        }

        var item_render = Mustache.render(get_template, v);

        $('#find-bssh').append(item_render);

        foods_store_marker(v);
    });

    foods_store_rateyo();
}

function foods_store_mapview(id, pos, map) {
    if (!pos) {
        return;
    }

    var show_map = map || false;

    var loc_arr = pos.split(",");
    var lat = parseFloat(loc_arr[0]) || 0;
    var lng = parseFloat(loc_arr[1]) || 0;
    var latLng = new google.maps.LatLng(lat, lng);

    finder_map.setCenter(latLng);

    if (finder_infowin_active) {
        finder_infowin[finder_infowin_active].close();
    }

    var set_active = parseInt(id) || null;

    if (set_active) {
        foods_store_itemactive(set_active, show_map);

        finder_infowin_active = set_active;

        finder_infowin[set_active].open(finder_map, finder_marker[set_active]);
    }

}

function foods_store_marker(v) {
    var cur_geo_loc = v.map_position || null;

    if (!cur_geo_loc) {
        return;
    }

    var loc_arr = cur_geo_loc.split(",");
    var lat = parseFloat(loc_arr[0]) || 0;
    var lng = parseFloat(loc_arr[1]) || 0;

    var marker_loc = {lat: lat, lng: lng};
    finder_marker[v.id] = new google.maps.Marker({
        position: marker_loc,
        map: finder_map,
        animation: google.maps.Animation.DROP,
        icon: base_url + 'asset/ziamthai/img/icon-boom-50.png?_=' + (new Date().getDate()),
        title: v.name
    });

    var show_link = base_url + 'index.php/food/' + v.link_show;
    var show_phone = '';
    var show_website = '<a href="' + show_link + '" target="_blank">Show info</a>';

    if (v.phone) {
        show_phone = '<div style="margin-top:5px;"><a href="tel:' + v.phone + '">' + v.phone + '</a></div>';
    }

    if (v.website) {
        show_website = '<a href="' + v.website + '" target="_blank">Website</a>';
    }

    //<hr size="1">' + show_phone + '<div style="margin-top:10px;">' + show_website + '</div>

    finder_infowin[v.id] = new google.maps.InfoWindow({
        content: '<div style="width:100%;padding:0px;font-size:0.9em;overflow:hidden;"><div style="float:left;width:70px;"><img src="' + v.img_logo_thumb + '" style="margin-bottom:5px;width:64px;height:auto;border-radius:4px;border:solid 1px #444;box-shadow:0px 1px 3px #333;"></div><div style="float:left;width:120px;"><a href="' + show_link + '" target="_blank"><h1 style="text-decoration:none;margin:0;font-size:1.2em;color:#000;">' + v.name + '</h1></a>' + show_phone + '<div style="margin-top:5px;">' + show_website + '</div></div></div>'
    });

    finder_marker[v.id].addListener('click', function () {
        finder_infowin_active = parseInt(v.id);
        finder_infowin[finder_infowin_active].open(finder_map, finder_marker[finder_infowin_active]);

        foods_store_itemactive(v.id);
    });
}

function foods_store_itemactive(id, map) {
    var get_id = parseInt(id) || false;

    if (!get_id) {
        return;
    }

    var show_map = map || false;

    var bssh_item_elm = $("#finder-bssh-item-" + get_id);

    var set_scroll_top = (bssh_item_elm.offset().top - 70);

    if (show_map && win.width() < 1024) {
        set_scroll_top = 0;
    }

    $('html, body').animate({scrollTop: set_scroll_top}, 800);

    $('.finder-bssh-item').removeClass('active');
    bssh_item_elm.addClass('active');
}

function foods_store_rateyo() {
    $('#find-bssh').find('.bssh-rateyo').each(function (e) {
        var get_rate = parseFloat($(this).data('rate')) || 0;
        $(this).rateYo({
            rating: get_rate,
            readOnly: true,
            starWidth: "16px",
            numStars: 5,
            fullStar: true
        });
    });
}


