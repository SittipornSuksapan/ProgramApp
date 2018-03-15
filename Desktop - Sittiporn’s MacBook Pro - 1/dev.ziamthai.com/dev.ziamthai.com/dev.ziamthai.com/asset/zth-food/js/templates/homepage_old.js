
$(function () {

    $('#homepage_newrelease_content').slick({
        arrows: true,
        centerMode: true,
        centerPadding: '0px',
        slidesToShow: 1,
        autoplay: true,
        autoplaySpeed: 3000
    });

    find_last_store();

    find_last_review();
});

$(window).resize(function () {

    masonry_review_init();

});

function masonry_review_init() {

    if (win.width() > 750) {
        $('#homepage_lastreview_content').masonry({
            itemSelector: '.masonry-grid-review-item',
            percentPosition: true
        });
    }

}

function find_last_review() {
    zth.API({
        query: 'reviews/finder',
        data: {
            limit: 10,
            sort_by: 'desc',
            order_by: 'review_create'
        },
        callback: function (resp) {
            $('#homepage_lastreview_content').html('');

            if (!resp.data) {
                return;
            }

            var get_template = $('#homepage_lastreview_template').html();

            Mustache.parse(get_template);

            $.each(resp.data, function (i, v) {
                var item_render = Mustache.render(get_template, v);

                $('#homepage_lastreview_content').append(item_render);
            });

            $('#homepage_lastreview').fadeIn();

            masonry_review_init();

        }
    });
}

function find_last_store() {

    zth.API({
        query: 'restaurant/finder',
        data: {
            limit: 10,
            sort_by: 'desc',
            order_by: 'shop_create'
        },
        callback: function (resp) {
            if (!resp.data) {
                return;
            }

            var old_slick_items = $('#homepage_newrelease_content').find('.shls-box');

            if (old_slick_items.length > 0) {
                $.each(old_slick_items, function (i, v) {
                    $('#homepage_newrelease_content').slick('slickRemove', i);
                });
            }

            $.each(resp.data, function (i, v) {
                var slide_content = '<div class="shls-box">' +
                        '<div class="photo" style="background-image:url(' + v.img_cover + ');"><a href="' + base_url + 'index.php/restaurant/store/show/' + v.id + '/' + encodeURIComponent(v.name) + '" title="' + v.name + '" target="_blank">' +
                        '<h4 class="title">' + v.name + '</h4>' +
                        '</a></div>' +
                        '</div>';
                $('#homepage_newrelease_content').slick('slickAdd', slide_content);
            });

            $('#homepage_newrelease').fadeIn();

        }
    });

}
