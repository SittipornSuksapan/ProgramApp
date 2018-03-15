
var tlp_page_next = 0;

$(function () {

    posts_data_loader();

    // Each time the user scrolls
    win.scroll(function () {
        // End of the document reached?
        var chk_scroll_point = ($(document).height() - win.height());
        var end_scroll_point = (win.scrollTop() + 240);

        if (win.width() < 767) {
            end_scroll_point = (win.scrollTop() + 120);
        }

        if (chk_scroll_point < end_scroll_point) {
            if (tlp_page_next > 0) {
                posts_data_loader(tlp_page_next);
            }
        }
    });

    //-- fancybox2 handler
    $('#store_show,#posts_show_list').on('focusin touchstart', function () {

        $('.fancybox2-gallery').fancybox({
            'type': 'image'
        });

        $('.fancybox2-videos').fancybox({
            'type': 'html',
            'afterLoad': function () {
                var get_url = $(this.element).data('url') || null;
                var get_id = $(this.element).data('id') || null;
                var get_img = $(this.element).data('img') || null;

                this.content = '<div class="video-player" data-video="' + get_id + '"><video class="video-embed" poster="' + get_img + '" data-fancybox-gallery="true"><source src="' + get_url + '"></video><div class="video-controls"><div class="fullscreen"><i class="fa fa-expand"></i></div><div class="play-pause"><i class="fa fa-play"></i></div></div></div>';
            },
            afterShow: function () {
                $('body').find('.play-pause').trigger('click');
            }
        });

    });

});

$(window).resize(posts_item_masonry);

/*----- Handler Posts data loader -----*/
function posts_data_loader(page) {
    var get_page = parseInt(page) || 1;
    var get_shop = parseInt($('body').find('#posts_show_list').data('shop')) || '';
    var get_posts_type = $('body').find('#posts_show_list').data('posts-type') || '';

    if (get_page === 1) {
        $('body').find('#posts_show_list').html('');
    }

    var not_found_txt = 'Not found data.';

    if (get_posts_type == 'review' || get_posts_type == '') {
        not_found_txt = 'Please help us write reviews.';
        not_found_txt += '<br><a href="#" class="btn btn-link" data-toggle="modal" data-target="#login_modal"><i class="fa fa-user-circle"></i><span>Log In</span></a>';
    }

    zth.API({
        query: 'timeline/feed',
        data: {
            page: get_page,
            shop: get_shop,
            posts_type: get_posts_type
        },
        callback: function (resp) {
            if (resp.data) {
                tlp_page_next = parseInt(resp.data.page.next) || 0;

                posts_data_render(resp.data);
            } else {
                $('body').find('#posts_show_list').html('<div align="center" class="alert alert-warning">' + not_found_txt + '</div>');
            }
        }
    });

}

function posts_data_render(data) {
    var template = {
        'blog': $('body').find('#posts_template_blog').html() || null,
        'review': $('body').find('#posts_template_review').html() || null,
        'posts': $('body').find('#posts_template_posts').html() || null
    };

    //console.log(data);

    $.each(data.data, function (i, v) {
        var get_type = v.post.type || 'posts';
        var set_template = template[get_type] || '';

        v.media_total = parseInt(v.media.length) || 0;
        v.grid_class = 'posts--masonry-grid-50';

        v.post.highlight = v.post.highlight.replace(/\n/g, "<br>") || '';

        var item_class_prev = '';
        var shop_rating = parseInt(v.shop.rating) || 0;

        v.shop.rating_star = '';

        if (shop_rating > 0) {
            for (var s_r = 0; s_r < shop_rating; s_r++) {
                v.shop.rating_star += '<i class="fa fa-star"></i>';
            }
        }

        if (v.media_total > 0) {

            //v.media = v.media.slice(0, 5);

            if (v.media_total < 2) {
                v.grid_class = 'posts--masonry-grid';
            }

            if (v.media_total > 4) {
                v.grid_class = 'posts--masonry-grid-16';
            }

            $.each(v.media, function (m_i, m_v) {
                v.media[m_i].media_overlay = false;
                v.media[m_i].media_more = 0;

                v.media[m_i].media_photo = false;
                v.media[m_i].media_video = false;
                v.media[m_i].item_class = posts_item_class(v.media_total, m_i, m_v);

                if (v.media_total === 2) {//2column
                    var h2 = item_class_prev.indexOf("h-2") || 0;

                    if (h2 > 0) {
                        v.media[m_i].item_class = 'grid-item--2-' + (m_i + 1) + ' grid-item--h-2';
                    }
                }

                item_class_prev = v.media[m_i].item_class;

                if (v.media[m_i].media_type === 'photo') {
                    v.media[m_i].media_photo = true;
                }

                if (v.media[m_i].media_type === 'video') {
                    v.media[m_i].media_video = true;
                }

                if ((m_i + 1) < v.media_total) {
                    v.media[m_i].media_overlay = true;
                    v.media[m_i].media_more = (v.media_total - m_i);
                }
            });
        }

        Mustache.parse(set_template);

        var item_render = Mustache.render(set_template, v);

        $('body').find('#posts_show_list').append(item_render);
    });

    // init Masonry
    posts_item_masonry();

}


function posts_item_class(total, index, data) {
    if (total < 1) {
        return '';
    }

    if (total === 1) {
        return 'grid-item--1';
    }

    var get_index = parseInt(index) + 1 || false;

    if (total === 2) {
        var grid = 'grid-item--2-' + get_index;

        if (data.media_height > data.media_width) {
            return grid + ' grid-item--h-2';
        }

        return grid;
    }

    if (total >= 5) {
        var grid = 'grid-item--5-' + get_index;
        
        if(get_index <6){
            return grid;
        }

        return 'hidden';
    }

    var grid = 'grid-item--' + total + '-' + get_index;

    return grid;
}


function posts_item_masonry() {
    $('.posts--masonry-grid').masonry({
        itemSelector: '.grid-item',
        columnWidth: '.grid-sizer',
        percentPosition: true
    });

    $('.posts--masonry-grid-16').masonry({
        itemSelector: '.grid-item',
        columnWidth: '.grid-sizer',
        percentPosition: true
    });

    $('.posts--masonry-grid-33').masonry({
        itemSelector: '.grid-item',
        columnWidth: '.grid-sizer',
        percentPosition: true
    });

    $('.posts--masonry-grid-50').masonry({
        itemSelector: '.grid-item',
        columnWidth: '.grid-sizer',
        percentPosition: true
    });
}


