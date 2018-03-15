

function zthc_media_uploader(options) {
    // This is the easiest way to have default options.
    var opt = $.extend({
        // These are the defaults.
        type: 'default',
        multiple: true,
        progress_bar: null,
        preview_item: null,
        auto_upload: true,
        success: null
    }, options);

    var $form = $('body').find('#zthc_media_uploader_form');
    var $progress_bar = null;
    var $preview_item = null;
    var $url = {
        "default": 'uploads',
        "photo": 'uploads_photo',
        "video": 'uploads_video'
    };

    if (typeof opt.progress_bar === 'string') {

        $progress_bar = $(opt.progress_bar) || null;
    }

    if (typeof opt.progress_bar === 'string') {
        $preview_item = $(opt.preview_item) || null;
    }

    if ($form.length < 1) {
        var new_form = $('<form>').attr('id', 'zthc_media_uploader_form')
                .attr('method', 'POST')
                .attr('enctype', 'multipart/form-data')
                .attr('style', 'display:none;');

        $('body').append(new_form);

        $form = $('body').find('#zthc_media_uploader_form');
    }

    var input_file = $('<input>').attr('type', 'file').attr('name', 'files[]');

    if (opt.multiple === true) {
        input_file.attr('multiple', 'multiple');
    }

    $form.attr('action', base_url + 'api.php/v1_client/media/' + $url[opt.type]);
    $form.html(input_file);

    if ($progress_bar) {
        var bar = $('<div>').attr('class', 'bar');
        var elm = $('<div>').attr('class', 'progress-box').html(bar);

        $progress_bar.html(elm).hide();
    }

    input_file.trigger('click');
    input_file.change(function (e) {
        var file_count = parseInt(e.target.files.length) || 0;

        if (file_count > 0 && opt.auto_upload === true) {
            $form.submit();
        }

        return $form;
    });

    $form.ajaxForm({
        dataType: 'json',
        beforeSend: function () {

            if ($progress_bar) {
                var percentVal = '0%';
                $progress_bar.find('.bar').width(percentVal);
                $progress_bar.hide();
            }

        },
        uploadProgress: function (event, position, total, percentComplete) {

            if ($progress_bar) {
                var percentVal = percentComplete + '%';
                $progress_bar.find('.bar').width(percentVal);
                $progress_bar.show();
            }

        },
        success: function (resp) {

            if ($progress_bar) {
                var percentVal = '0%';
                $progress_bar.find('.bar').width(percentVal);
                $progress_bar.hide();
            }

            if (resp.data && $preview_item.length > 0) {
                $preview_item = zthc_media_render_items($preview_item, resp.data);
            }

            if (typeof opt.success === 'function') {
                opt.success(resp);
            }

        }
    });

}//end of function


function zthc_media_render_items(elm, data) {
    var $preview_item = elm || null;

    if (typeof elm === 'string') {
        $preview_item = $(elm) || null;
    }

    if (!$preview_item) {
        return;
    }

    if (!$preview_item.hasClass('zthc_media_item_preview')) {
        $preview_item.attr('class', 'zthc_media_item_preview');
    }

    $.each(data, function (i, v) {
        var chk_exists = $preview_item.children('.item[rel="' + v.id + '"][data-media-type="' + v.media_type + '"]');

        if (chk_exists.length < 1) {
            if (v.media_type === 'video') {
                var content_elm = '<video class="video" controls><source src="' + v.file_url + '" type="' + v.file_type + '"></video>';
            } else {
                var content_elm = '<i class="photo" style="background-image:url(' + v.file_url + ');"></i>';
            }

            $preview_item.append('<div class="item col-xs-6 col-md-4" rel="' + v.id + '" data-media-type="' + v.media_type + '">' + content_elm + '<div class="handler btn-group"><b class="handler-remove btn btn-sm btn-danger" onclick="zthc_media_remover_items(' + parseInt(v.id) + ',\'' + v.media_type + '\');"><i class="fa fa-close"></i></b></div></div>');
        }
    });

    return $preview_item;
}//end of function


function zthc_media_remover_items(file_id, media_type) {
    var id = parseInt(file_id) || false;
    var type = media_type || null;

    if (!id && !type) {
        return;
    }

    $.ajax({
        type: 'POST',
        url: base_url + 'api.php/v1_client/media/remover',
        data: {media_type: type, file_id: id},
        dataType: 'JSON',
        error: function () {
            alert('Bad request!');
        },
        success: function (resp) {

        }
    });//end remover
}

