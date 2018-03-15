
$(function () {

    $('#review_show_content').on('focusin', function () {
        $('a.fancybox2-gallery').fancybox({
            'type': 'image'
        });
    });

    var review_id = parseInt($('#review_show').data('review-id')) || null;

    if (review_id) {
        zth.API({
            query: 'reviews/show',
            data: {
                review: review_id
            },
            callback: function (resp) {
                //console.log(resp);

                if (resp.data) {
                    var get_template = $('#review_show_template').html();

                    Mustache.parse(get_template);

                    var item_render = Mustache.render(get_template, resp.data);

                    $('#review_show_content').html(item_render);

                }

            }
        });
    }


});

