
var finder_page = 1;
var finder_page_next = 0;

$(function () {

    foods_reviews_load();

    // Each time the user scrolls
    win.scroll(function () {
        // End of the document reached?
        if ($(document).height() - win.height() == win.scrollTop()) {
            if (finder_page_next > 0) {
                $('#find-bsrh-loader').show();
                foods_reviews_load(finder_page_next);
            }
        }
    });


});


function foods_reviews_load(p) {
    var set_page = parseInt(p) || finder_page;
    var set_q = $('#foods_reviews_finder_form').find('input[name=q]').val() || '';

    if (set_page == 0) {
        $('#find-bsrh-loader').hide();
        return;
    }

    $('#find-bsrh-loader').show();

    $.ajax({
        type: 'GET',
        url: api_url + 'business_shop_review/get_data',
        data: 'q=' + set_q + '&page=' + set_page,
        dataType: 'JSON',
        success: function (resp) {
            $('#find-bsrh-loader').hide();

            finder_page_next = parseInt(resp.page.next) || 0;

            if (resp.data) {
                if (set_page == 1) {
                    $('#find-bsrh').html('');
                }

                foods_reviews_datatable(resp.data);
            }

            if (resp.total) {
                var page_total = resp.page.total || 1;
                var page_current = resp.page.current || 1;
                $('#find-bsrh-result').show();
                $('#find-bsrh-result').children('label[rel=d_total]').text(parseFloat(resp.total));
                $('#find-bsrh-result').children('label[rel=p_current]').text(parseFloat(page_current));
                $('#find-bsrh-result').children('label[rel=p_total]').text(parseFloat(page_total));
            } else {
                $('#find-bsrh-result').hide();
                $('#find-bsrh-result').children('label[rel=d_total]').text('0');
                $('#find-bsrh-result').children('label[rel=p_current]').text('0');
                $('#find-bsrh-result').children('label[rel=p_total]').text('0');
            }
        }
    });
}

function foods_reviews_datatable(data) {
    $.each(data, function (i, v) {
        var html_template = $('#find-bsrh-item').html();

        v.link_show = base_url + 'foods/store/show/' + parseInt(v.bsrh_id) + '/' + encodeURIComponent(v.bsrh_title);
        v.link_location = '';
        v.show_distance = '';
        v.bsrh_score = parseFloat(v.bsrh_score) || 0;
        v.bssh_show_data = '';

        if (!v.bssh_id) {
            v.bssh_show_data = 'hidden-xl-down';
        }

        if (v.bsrh_distance) {
            v.show_distance = '-&nbsp;' + v.bsrh_distance + '&nbsp;miles';
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

        $('#find-bsrh').append(tpl_replace(html_template, v));
    });

    $('.grid-rv').masonry({
        itemSelector: '.grid-rv-item',
        percentPosition: true
    });
}

