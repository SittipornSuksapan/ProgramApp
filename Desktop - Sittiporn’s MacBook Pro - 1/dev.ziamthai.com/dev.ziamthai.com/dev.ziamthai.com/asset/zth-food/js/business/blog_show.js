
$(function () {

    $('#blog_show_content').on('focusin', function () {
        $('a.fancybox2-gallery').fancybox({
            'type': 'image'
        });
    });

    var blog_id = parseInt($('#blog_show').data('review-id')) || null;

    if (blog_id) {
        zth.API({
            query: 'blog/show',
            data: {
                blog: blog_id
            },
            callback: function (resp) {
                //console.log(resp);

                if (resp.data) {
                    var get_template = $('#blog_show_template').html();

                    var value = resp.data;

                    if (value.public > 0) {
                        value.public = true;
                    } else {
                        value.public = false;
                    }

                    Mustache.parse(get_template);

                    var item_render = Mustache.render(get_template, value);

                    $('#blog_show_content').html(item_render);

                }

            }
        });
    }


});

