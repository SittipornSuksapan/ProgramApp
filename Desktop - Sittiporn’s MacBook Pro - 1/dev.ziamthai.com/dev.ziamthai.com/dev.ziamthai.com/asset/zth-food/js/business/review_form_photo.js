
var form_reviews_photos = [];

$(function () {

    if (typeof (Storage) !== "undefined") {
        var ss_photos = localStorage.getItem('form_reviews_photos') || false;

        if (ss_photos) {
            form_reviews_photos = JSON.parse(ss_photos);
        }

        if (form_reviews_photos && form_reviews_photos.length > 0) {
            $.each(form_reviews_photos, function (i, v) {
                if (form_reviews_photos[i]) {
                    reviews_photo_add(form_reviews_photos[i]);
                }
            });
        }
    }

    $("#reviews_photo_list").on("click", ".photo_item_btn", function () {
        var photo_id = parseInt($(this).attr('rel')) || false;

        if (!photo_id) {
            return;
        }

        if (!form_reviews_photos[photo_id]) {
            return;
        }

        var set_img_url = site_url + 'uploads/reviews_img/thumb/' + photo_id + '/?_=' + (new Date().getTime());
        var img_type = form_reviews_photos[photo_id].type || 0;
        var img_caption = form_reviews_photos[photo_id].caption || '';

        $('#reviews_photo_edit').val(photo_id);
        $('#reviews_photo_caption').val(img_caption);
        $('#reviews_photo_type').val(img_type);
        $('#reviews_photo_preview').html('<img src="' + set_img_url + '">');

        $('#reviews_photo_result').html('').hide();
        $('#reviews_photo_modal').modal('show');
    });

    $('#reviews_photo_browse').change(function () {
        var file_val = $('#reviews_photo_browse').val() || false;

        if (!file_val) {
            return;
        }

        var result = img_preview(this, '#reviews_photo_preview');

        if (result) {
            $('#reviews_photo_result').html('').hide();
            $('#reviews_photo_modal').modal('show');
        }
    });

    $('#reviews_photo_form').submit(function () {
        $('#reviews_photo_result').html('<i class="fa fa-refresh fa-spin fa-2x fa-fw"></i>').show();

        if ($('#reviews_photo_modal').find('#reviews_photo_iframe').length < 1) {
            $('#reviews_photo_modal').append('<iframe id="reviews_photo_iframe" name="reviews_photo_iframe"></iframe>');
        }
    });


});

function reviews_photo_upload_result(resp) {

    if (resp.error) {
        $('#reviews_photo_result').html(resp.message);
    }

    if (resp.success) {
        $('#reviews_photo_modal').modal('hide');

        $('#reviews_photo_form').find('input[name=photo]').val('');
        $('#reviews_photo_form').find('input[name=caption]').val('');
        $('#reviews_photo_browse').val('');
    }

    if (resp.data) {
        reviews_photo_add(resp.data);
    }

}

function reviews_photo_del(id) {
    var get_id = parseInt(id) || false;
    var shop_id = parseInt($('#reviews_photo_shop').val()) || false;

    if (!get_id) {
        return;
    }

    $('#review_form').children('.photo_item_' + get_id).remove();
    $('#reviews_photo_list').children('.photo_item[rel=' + get_id + ']').remove();

    delete form_reviews_photos[id];

    if (typeof (Storage) !== "undefined") {
        localStorage.setItem('form_reviews_photos', JSON.stringify(form_reviews_photos));
    }

    $.post(api_url + 'reviews/photo_remove', {photo: get_id, shop: shop_id});
}

function reviews_photo_add(data) {
    var photo_id = parseInt(data.id) || false;

    if (!photo_id) {
        return;
    }

    var set_img_url = site_url + 'uploads/reviews_img/thumb/' + photo_id + '/?_=' + (new Date().getTime());

    //console.log($('#reviews_photo_list').length);

    if ($('#reviews_photo_list').children('.photo_item[rel=' + photo_id + ']').length < 1) {
        $('#review_form').prepend('<input class="photo_item_' + photo_id + '" type="hidden" name="photo[]" value="' + photo_id + '">');

        $('#reviews_photo_list').append('<div class="photo_item col-xs-6 col-md-3 col-xl-2" rel="' + photo_id + '"><a href="javascript:void(0);" class="photo_item_btn btn btn-secondary" rel="' + photo_id + '" style="background-image:url(' + set_img_url + ');"></a><a href="javascript:reviews_photo_del(\'' + photo_id + '\');" class="photo_item_del btn btn-sm btn-danger"><i class="fa fa-close"></i></a></div>');
    } else {
        $('#reviews_photo_list').children('.photo_item[rel=' + photo_id + ']').find('.photo_item_btn').css('background-image', 'url(' + set_img_url + ')');
    }

    form_reviews_photos[photo_id] = data;

    if (typeof (Storage) !== "undefined") {
        localStorage.setItem('form_reviews_photos', JSON.stringify(form_reviews_photos));
    }
}
