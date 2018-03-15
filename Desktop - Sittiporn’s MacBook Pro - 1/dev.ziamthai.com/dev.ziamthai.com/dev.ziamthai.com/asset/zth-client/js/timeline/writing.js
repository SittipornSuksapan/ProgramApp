
var posts_media_files = [];

$(function () {

    //-- using web local storage
    if (typeof (Storage) !== "undefined") {
        var ss_media = localStorage.getItem('posts_media_files') || false;

        if (ss_media) {
            posts_media_files = JSON.parse(ss_media);
        }

        if (posts_media_files && posts_media_files.length > 0) {
            zthc_media_render_items('#posts_media_preview', posts_media_files);

            posts_media_selector(posts_media_files);
        }
    }

    //-- Posts form submit
    $('#posts_form').submit(function (e) {
        e.preventDefault();

        $(this).find('.form-error-result').remove();

        $('#posts_form_result').html('').hide();
        $('#posts_btn_submit').hide();
        $('#posts_btn_indicator').show();

        $.ajax({
            type: 'POST',
            url: api_url + 'timeline_posts/writing_save',
            data: $(this).serialize(),
            dataType: 'JSON',
            error: function () {
                alert('Bad request!');
            },
            success: function (resp) {
                $('#posts_btn_indicator').hide();
                $('#posts_btn_submit').show();

                if (resp.focus) {
                    var focus_elm = $('#posts_form').find('[name=' + resp.focus + ']');

                    if (focus_elm.length > 0) {
                        focus_elm.focus().select();

                        $('<div class="form-error-result alert alert-danger">' + resp.message + '</div>').appendTo(focus_elm.parent());
                    }
                }

                if (resp.error && !resp.focus) {
                    $('#posts_form_result').html(resp.message).show();
                }

                if (resp.success) {
                    if (typeof (Storage) !== "undefined") {
                        localStorage.removeItem('posts_media_files');
                    }

                    window.location.reload();
                }

            }
        });
    });


    $('#posts_media_browse').click(function () {
        zthc_media_uploader({
            progress_bar: '#posts_media_progress',
            preview_item: '#posts_media_preview',
            success: function (resp) {
                if (resp.data) {
                    posts_media_selector(resp.data, true);
                }
            }
        });
    });


    $('#posts_media_preview').delegate('.media-unselected', 'click', function () {
        var get_id = parseInt($(this).data('id')) || false;
        var ss_index = parseInt($(this).data('index')) || 0;
        var media_type = $(this).data('media-type') || null;

        if (!get_id) {
            return;
        }

        posts_media_unselector(get_id, ss_index, media_type);
    });


});


/*----- Handler Photo uploads -----*/

function posts_media_selector(data, s_add) {
    var ss_photo = posts_media_files;
    var ss_count = parseInt(ss_photo.length) || 0;
    var ss_add = s_add || false;

    $.each(data, function (i, v) {
        var chk_exists = $('#posts_media_preview').children('.item[rel="' + v.id + '"][data-media-type="' + v.media_type + '"]');
        var ss_index = i;

        if (ss_add === true) {
            ss_index = (ss_count + i);
            ss_photo.push(v);
        }

        if (chk_exists.length > 0) {
            chk_exists.attr('data-ss-index', ss_index);
            chk_exists.find('.handler-remove')
                    .addClass('media-unselected')
                    .attr('data-id', v.id)
                    .attr('data-index', ss_index)
                    .attr('data-media-type', v.media_type);
            chk_exists.find('.handler').prepend('<b class="media-unselected btn btn-sm btn-secondary" data-id="' + parseInt(v.id) + '" data-index="' + parseInt(ss_index) + '" data-media-type="' + v.media_type + '"><i class="fa fa-check-square-o"></i></b>');

            if (v.file_name) {
                if (v.media_type != 'video') {
                    v.media_duration = 0;
                }

                chk_exists.prepend('<input class="media-selected" rel="' + v.id + '" data-media-type="' + v.media_type + '" type="hidden" name="media[]" value="' + v.id + '--' + v.file_name + '--' + v.file_type + '--' + v.media_type + '--' + parseInt(v.media_width) + '--' + parseInt(v.media_height) + '--' + v.media_duration + '">');
            }
        }
    });

    posts_media_files = ss_photo;

    if (typeof (Storage) !== "undefined") {
        localStorage.setItem('posts_media_files', JSON.stringify(posts_media_files));
    }

    $("#posts_media_preview").sortable();
}

function posts_media_unselector(id, index, m_type) {
    var get_id = parseInt(id) || false;
    var ss_index = parseInt(index) || 0;
    var media_type = m_type || null;
    var ss_photo = posts_media_files;

    if (!get_id) {
        return;
    }

    var $media_item = $('#posts_media_preview').children('.item[rel="' + get_id + '"][data-media-type="' + media_type + '"]');

    if ($media_item.length > 0) {
        $media_item.remove();
    }

    if (!ss_photo[ss_index]) {
        return;
    }

    ss_photo.splice(ss_index, 1);

    posts_media_files = ss_photo;

    if (typeof (Storage) !== "undefined") {
        localStorage.setItem('posts_media_files', JSON.stringify(posts_media_files));
    }
}
