$(function () {


    $('#homepage_last_shop').slick({
        arrows: true,
        centerMode: true,
        centerPadding: '40px',
        slidesToShow: 3,
        autoplay: true,
        autoplaySpeed: 3000,
        responsive: [
            {
                breakpoint: 768,
                settings: {
                    arrows: true,
                    dots: false,
                    centerMode: true,
                    centerPadding: '0px',
                    slidesToShow: 1
                }
            }
        ]
    });

    if (homepage_last_shop_data.length > 0) {
        var old_slick_items = $('#homepage_last_shop').find('.shls-box');

        if (old_slick_items.length > 0) {
            $.each(old_slick_items, function (i, v) {
                $('#homepage_last_shop').slick('slickRemove', i);
            });
        }

        $.each(homepage_last_shop_data, function (i, v) {
            var slide_content = '<div class="shls-box">' +
                    '<a href="' + base_url + 'index.php/foods/store/show/' + v.bssh_id + '/' + encodeURIComponent(v.bssh_title) + '" title="' + v.bssh_title + '" target="_blank" >' +
                    '<img src="' + v.bssh_imgfront + '" class="img-fluid">' +
                    '<h4>' + v.bssh_title + '</h4>' +
                    '</a>' +
                    '</div>';
            $('#homepage_last_shop').slick('slickAdd', slide_content);
        });
    }

});