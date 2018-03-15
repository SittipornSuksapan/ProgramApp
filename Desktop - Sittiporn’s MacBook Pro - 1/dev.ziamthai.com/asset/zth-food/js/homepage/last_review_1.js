
$(function () {
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
            limit: 8,
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
