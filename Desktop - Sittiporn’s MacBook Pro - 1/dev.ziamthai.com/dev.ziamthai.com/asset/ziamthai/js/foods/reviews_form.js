


$(function () {

    $("#rateYo_reviews").rateYo({
        rating: rateyo_reviews_score,
        ratedFill: "#fa0",
        fullStar: true,
        onChange: function (rating, rateYoInstance) {
            if (rating > 0) {
                      $('#rateYo_counter').text(rating);
            } else {
                $('#rateYo_counter').html(rateyo_reviews_score);
            }
            },
        onSet: function (rating, rateYoInstance) {
            $('#reviews_writing_form input[name=score]').val(rating);
        }
    });

    $("#rateYo_price").rateYo({
        rating: 1,
        ratedFill: "#E74C3C",
        fullStar: true,
        starSvg: '<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"><path d="M12 2c5.514 0 10 4.486 10 10s-4.486 10-10 10-10-4.486-10-10 4.486-10 10-10zm0-2c-6.627 0-12 5.373-12 12s5.373 12 12 12 12-5.373 12-12-5.373-12-12-12zm0 3c-4.971 0-9 4.029-9 9s4.029 9 9 9 9-4.029 9-9-4.029-9-9-9zm1 13.947v1.053h-1v-.998c-1.035-.018-2.106-.265-3-.727l.455-1.644c.956.371 2.229.765 3.225.54 1.149-.26 1.385-1.442.114-2.011-.931-.434-3.778-.805-3.778-3.243 0-1.363 1.039-2.583 2.984-2.85v-1.067h1v1.018c.725.019 1.535.145 2.442.42l-.362 1.648c-.768-.27-1.616-.515-2.442-.465-1.489.087-1.62 1.376-.581 1.916 1.711.804 3.943 1.401 3.943 3.546.002 1.718-1.344 2.632-3 2.864z"/></svg>',
        onChange: function (rating, rateYoInstance) {
            var set_rate = rateyo_reviews_price[rating - 1];
            if (rating > 0) {
                      $('#rateYo_price_rate').text(set_rate);
            } else {
                $('#rateYo_price_rate').html(set_rate);
            }
            },
        onSet: function (rating, rateYoInstance) {
            $('#reviews_writing_form input[name=price]').val(rating);
        }
    });

    $('select#reviews_menu_list').select2({
        /*tags: true,*/
        allowClear: true,
        minimumInputLength: 2,
        maximumSelectionLength: 5,
        /*createTag: function (params) {
         var term = $.trim(params.term);
         
         if (term == '') {
         return null;
         }
         
         return {
         id: term,
         name: term,
         newTag: true // add additional parameters
         };
         },*/
        ajax: {
            dataType: 'json',
            quietMillis: 100,
            url: api_url + 'business_item/finder_combobox',
            data: function (params) {
                var get_q = params.term || '';
                var get_shop = parseInt($('#reviews_writing_form').find('input[name=shop]').val()) || 0;
                return {
                    q: get_q,
                    shop: get_shop
                };
            },
            processResults: function (data) {
                /*if (data.length < 1) {
                 return null;
                 }*/
                return {
                    results: data
                };
            }
        },
        templateResult: set_select2_menu_show,
        templateSelection: set_select2_menu_select
    });


    $('#reviews_writing_form').submit(function (e) {
        e.preventDefault();

        $('#reviews_writing_result_content').html('<i class="fa fa-refresh fa-spin fa-2x fa-fw"></i>');
        $('#reviews_writing_result_modal').modal('show');
        $('#reviews_writing_submit').attr('disabled', true);

        $.ajax({
            type: 'POST',
            url: api_url + 'reviews/writing_save',
            data: $(this).serialize(),
            dataType: 'JSON',
            error: function () {
                $('#reviews_writing_result_content').html('Error loading...');
                $('#reviews_writing_submit').attr('disabled', false);
            },
            success: function (resp) {
                $('#reviews_writing_result_content').html(resp.message);
                $('#reviews_writing_submit').attr('disabled', false);

                if (resp.focus) {
                    $('#reviews_writing_form').find('input[name=' + resp.focus + ']').focus();
                }

                if (resp.success) {

                    form_reviews_photos = [];

                    if (typeof (Storage) !== "undefined") {
                        localStorage.removeItem('form_reviews_photos');
                    }

                }

                if (resp.data) {
                    var reviews_id = parseInt(resp.data.bsrh_id) || false;

                    if (reviews_id) {
                        $('#reviews_writing_result_content').append('<i class="fa fa-refresh fa-spin fa-2x fa-fw"></i>');

                        location.href = base_url + 'index.php/foods/reviews/show/' + reviews_id
                    }
                }
            }
        });

    });
});

function set_select2_menu_show(data) {
    if (!data.id) {
        return data.name;
    }

    var set_photo = '';
    var set_price = '';

    if (data.photo) {
        set_photo = '<div class="col-xs-4 col-md-3 col-lg-2"><img class="img-fluid" src="' + data.photo + '" style="max-height:64px;"></div>';
    }

    if (data.price) {
        set_price = '<div style="font-size:0.9em;color:#070;">' + data.price + '</div>';
    }

    var $content = $('<div class="container"><div class="row">' + set_photo + '<div class="col-xs-8 col-md-9 col-lg-10"><strong>' + data.name + '</strong>' + set_price + '</div></div></div>');

    return $content;
}

function set_select2_menu_select(data) {
    return data.name;
}
