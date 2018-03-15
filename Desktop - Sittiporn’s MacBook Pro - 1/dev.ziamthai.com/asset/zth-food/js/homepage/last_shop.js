
$(function () {

    $('#homepage_last_shop_content').slick({
        arrows: true,
        centerMode: true,
        centerPadding: '0px',
        slidesToShow: 1,
        autoplay: true,
        autoplaySpeed: 3000
    });

    find_last_store();

});

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

            var old_slick_items = $('#homepage_last_shop_content').find('.shls-box');

            if (old_slick_items.length > 0) {
                $.each(old_slick_items, function (i, v) {
                    $('#homepage_last_shop_content').slick('slickRemove', i);
                });
            }

            $.each(resp.data, function (i, v) {
                var slide_content = '<div class="shls-box">' +
                        '<div class="photo" style="background-image:url(' + v.img_cover + ');"><a href="' + base_url + 'index.php/food/store/show/' + v.id + '/' + encodeURIComponent(v.name) + '" title="' + v.name + '" target="_blank">' +
                        '<h4 class="title">' + v.name + '</h4>' +
                        '</a></div>' +
                        '</div>';
                $('#homepage_last_shop_content').slick('slickAdd', slide_content);
            });

            $('#homepage_last_shop').fadeIn();

        }
    });

}


