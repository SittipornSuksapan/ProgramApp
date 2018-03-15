
var finder_page = 1;
var finder_page_next = 0;

$(function () {
    
    foods_reviews_load();

    // Each time the user scrolls
    win.scroll(function () {
        // End of the document reached?
        var chk_scroll_point = ($(document).height() - win.height());
        var end_scroll_point = (win.scrollTop() + 240);

        if (win.width() < 767) {
            end_scroll_point = (win.scrollTop() + 120);
        }

        if (chk_scroll_point < end_scroll_point) {
            if (finder_page_next > 0) {
                foods_reviews_load(finder_page_next);
            }
        }
    });

});


function foods_reviews_load(p) {

    var shop_id = parseInt($('#store_show').data('store-id')) || false;
    var set_page = parseInt(p) || finder_page;

    if (set_page == 0) {
        return;
    }

    if (!shop_id) {
        return;
    }

    zth.API({
        query: 'reviews/finder',
        data: {
            shop: shop_id,
            page: set_page,
            page_limit: 10,
            sort_by: 'desc',
            order_by: 'review_create'
        },
        callback: function (resp) {
            var get_data = resp.data || null;

            if (!get_data) {
                return;
            }

            finder_page_next = parseInt(get_data.page.next) || 0;

            if (set_page === 1) {
                $('#show_review_content').html('');
            }

            var get_template = $('#show_review_template').html();

            Mustache.parse(get_template);

            $.each(get_data.data, function (i, v) {
                var item_render = Mustache.render(get_template, v);

                $('#show_review_content').append(item_render);
            });

            $('#show_review').fadeIn();

        }
    });

}
