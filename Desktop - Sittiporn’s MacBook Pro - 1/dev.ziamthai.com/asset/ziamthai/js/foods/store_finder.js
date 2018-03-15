
foods_finder_active = true;

var finder_map;
var finder_marker = [];
var finder_infowin = [];
var finder_infowin_active = null;
var finder_page = 1;
var finder_page_next = 0;

$(function () {

    if (typeof (Storage) !== "undefined") {
        if (!sessionStorage.getItem("current_user_id")) {
            //-- show marketing popup
        }
    }

    $(".map_aside").stick_in_parent({
        parent: $('body'),
        offset_top: 80,
        bottoming: false
    });

    if (typeof (Storage) !== "undefined") {
        var cur_geo_addr = sessionStorage.getItem("current_geo_address") || null;
        if (cur_geo_addr) {
            $('#store_finder_address').children('label').text(cur_geo_addr);
            $('#store_finder_address').show();
        }
    }

    foods_store_load();

    // Each time the user scrolls
    win.scroll(function () {
        // End of the document reached?
        if ($(document).height() - win.height() == win.scrollTop()) {
            if (finder_page_next > 0) {
                $('#find-bssh-loader').show();
                foods_store_load(finder_page_next);
            }
        }
    });

});

$(window).resize(function () {
    if (win.width() > 767) {
        $(".map_aside").trigger("sticky_kit:stick");
    } else {
        $(".map_aside").trigger("sticky_kit:unstick");
    }
});

function initFinderMap() {
    var cur_geo_loc = sessionStorage.getItem("current_geo_location") || null;
    var loc_arr = [0, 0];
    if (cur_geo_loc) {
        loc_arr = cur_geo_loc.split(",", 2);
    }
    var lat = parseFloat(loc_arr[0]) || 0;
    var lng = parseFloat(loc_arr[1]) || 0;

    var marker_loc = {lat: lat, lng: lng};

    finder_map = new google.maps.Map(document.getElementById('map'), {
        zoom: 18,
        center: marker_loc
    });

    new google.maps.Marker({
        position: marker_loc,
        map: finder_map
    });
}

function foods_store_load(p) {
    var set_page = parseInt(p) || finder_page;
    /*var geo_pos = sessionStorage.getItem("current_geo_location") || '';
     var set_q = $('#foods_store_finder_form').find('input[name=q]').val() || '';
     var set_loc = $('#foods_store_finder_form').find('input[name=loc]').val() || '';
     var set_pos = $('#foods_store_finder_form').find('input[name=pos]').val() || '';*/
    var set_data = $('#foods_store_finder_form').serialize();

    if (set_page == 0) {
        $('#find-bssh-loader').hide();
        return;
    }

    $('#find-bssh-loader').show();

    $.ajax({
        type: 'GET',
        url: api_url + 'foods_store/finder',
        data: set_data + '&page=' + set_page,
        dataType: 'JSON',
        success: function (resp) {
            $('#find-bssh-loader').hide();

            finder_page_next = parseInt(resp.page.next) || 0;

            if (resp.data) {
                if (set_page == 1) {
                    $('#find-bssh').html('');
                }

                foods_store_datatable(resp.data);
            }

            if (resp.total) {
                var page_total = resp.page.total || 1;
                var page_current = resp.page.current || 1;
                $('#find-bssh-result').show();
                $('#find-bssh-result').children('label[rel=d_total]').text(parseFloat(resp.total));
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
    
    $.each(data, function (i, v) {
        var html_template = $('#find-bssh-item').html();

        if (win_w < 768) {
            html_template = html_template.replace(/target=\"_blank\"/g, "");
        }

        v.link_show = base_url + 'index.php/foods/store/show/' + parseInt(v.bssh_id) + '/' + encodeURIComponent(v.bssh_title);
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
        }

        var set_content = tpl_replace(html_template, v);

        $('#find-bssh').append(set_content);

        foods_store_marker(v);
    });

    foods_store_rateyo();
}

function foods_store_mapview(id, pos) {
    if (!pos) {
        return;
    }

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
        foods_store_itemactive(set_active);

        finder_infowin_active = set_active;

        //finder_infowin[set_active].open(finder_map, finder_marker[set_active]);
    }

}

function foods_store_marker(v) {
    var cur_geo_loc = v.bssh_maps || null;

    if (!cur_geo_loc) {
        return;
    }

    var loc_arr = cur_geo_loc.split(",");
    var lat = parseFloat(loc_arr[0]) || 0;
    var lng = parseFloat(loc_arr[1]) || 0;

    var marker_loc = {lat: lat, lng: lng};
    finder_marker[v.bssh_id] = new google.maps.Marker({
        position: marker_loc,
        map: finder_map,
        animation: google.maps.Animation.DROP,
        icon: base_url + 'asset/ziamthai/img/icon-boom-64.png',
        title: v.bssh_title
    });

    var show_phone = '';
    var show_website = '<a href="' + base_url + 'foods/show/' + v.bssh_id + '" target="_blank">Show info</a>';

    if (v.bssh_phone) {
        show_phone = '<div style="margin-top:10px;"><a href="tel:' + v.bssh_phone + '">' + v.bssh_phone + '</a></div>';
    }

    if (v.bssh_website) {
        show_website = '<a href="' + v.bssh_website + '" target="_blank">' + v.bssh_website + '</a>';
    }

    //<hr size="1">' + show_phone + '<div style="margin-top:10px;">' + show_website + '</div>

    finder_infowin[v.bssh_id] = new google.maps.InfoWindow({
        content: '<div style="width:100%;padding:10px;"><img src="' + v.bssh_imgfront + '" style="margin-bottom:10px;width:100%;height:auto;border-radius:4px;border:solid 1px #444;box-shadow:0px 1px 3px #333;"><h1 style="font-size:1.3em;">' + v.bssh_title + '</h1>' + show_phone + '<div style="margin-top:10px;">' + show_website + '</div></div>'
    });

    finder_marker[v.bssh_id].addListener('click', function () {
        finder_infowin_active = parseInt(v.bssh_id);
        finder_infowin[finder_infowin_active].open(finder_map, finder_marker[finder_infowin_active]);

        foods_store_itemactive(v.bssh_id);
    });
}

function foods_store_itemactive(id) {
    var get_id = parseInt(id) || false;

    if (!get_id) {
        return;
    }

    var bssh_item_elm = $("#finder-bssh-item-" + get_id);

    $('html, body').animate({
        scrollTop: bssh_item_elm.offset().top - 70
    }, 800);

    $('.finder-bssh-item').css('background-color', '#fff');
    bssh_item_elm.css('background-color', '#ffb');
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


