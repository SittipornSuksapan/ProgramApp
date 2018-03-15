
$(function () {

    zth.API({
        query: 'timeline/feed',
        data: {
            limit: 10,
            posts_type: 'review'
        },
        callback: function (resp) {
            if (resp.data) {
                homepage_last_review_render(resp.data);
            } else {
                $('#homepage_lastreview').hide();
            }
        }
    });

});

function homepage_last_review_render(data) {
    var set_template = $('#homepage_lastreview_template').html() || '';
        
    Mustache.parse(set_template);

    $.each(data, function (i, v) {  
        v.media_total = parseInt(v.media.length) || 0;
        v.post.highlight = v.post.highlight.replace(/\n/g, "<br>") || '';

        var review_score = parseInt(v.post.review_score) || 0;

        v.post.review_score_star = '';

        if (review_score > 0) {
            for (var s_r = 0; s_r < review_score; s_r++) {
                v.post.review_score_star += '<i class="fa fa-star"></i>';
            }
        }

        if (v.media_total > 0) {
            v.media = v.media.slice(0, 5);

            $.each(v.media, function (m_i, m_v) {
                m_v.media_overlay = false;
                m_v.media_photo = false;
                m_v.media_video = false;

                if (m_v.media_type === 'photo') {
                    m_v.media_photo = true;
                }

                if (m_v.media_type === 'video') {
                    m_v.media_video = true;
                }

                if ((m_i + 1) < v.media_total) {
                    m_v.media_overlay = true;

                    m_v.media_more = (v.media_total - m_i);
                }
            });
        }

        var item_render = Mustache.render(set_template, v);

        $('#homepage_lastreview_content').append(item_render);
    });

    $('#homepage_lastreview').fadeIn();
}
