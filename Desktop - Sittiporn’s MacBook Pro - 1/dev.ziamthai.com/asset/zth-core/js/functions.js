
var touchClick = false;

$(document).on('touchstart', function() {
    touchClick = true;
});

$(document).on('touchmove', function() {
    touchClick = false;
});

$(document).ajaxStart(function () {
    loading_panel(true);
});

$(document).ajaxStop(function () {
    loading_panel(false);
});

function loading_panel(active) {
    var set_active = active || false;

    if (!set_active) {
        $('body').find('.loading-panel').fadeOut();
    } else {
        if ($('body').find('.loading-panel').css('display') != 'block') {
            $('body').find('.loading-panel').show();
        }
    }
}

function ajax_error_return(jqXHR, textStatus, errorThrown) {
    var err_title = '<h4>' + textStatus + '</h4>';
    var err_display = errorThrown;

    if (jqXHR.status) {
        err_title += ' [ ' + jqXHR.status + ' ]';
    }

    if (jqXHR.responseText) {
        err_display += jqXHR.responseText;
    }

    return err_title + '<div>' + err_display + '</div>';
}

/*-- Layout 2 Columns --*/
function layout_2col(active_col, layout_elm, callback_fn) {
    var set_active = active_col || 'toggle';
    var set_layout = layout_elm || '[data-layout="2col"]';

    if (!set_layout) {
        return;
    }

    if (typeof layout_elm === 'string') {
        set_layout = $('body').find(layout_elm);
    }

    if (set_active === 'toggle') {
        if (set_layout.find('[data-layout-2col="one"]').hasClass('deactive')) {
            layout_2col('one', layout_elm, callback_fn);
        } else {
            layout_2col('two', layout_elm, callback_fn);
        }
        return;
    }

    if (set_active === 'one') {
        set_layout.find('[data-layout-2col="one"]').removeClass('deactive');
        set_layout.find('[data-layout-2col="two"]').removeClass('active');
    }

    if (set_active === 'two') {
        set_layout.find('[data-layout-2col="one"]').addClass('deactive');
        set_layout.find('[data-layout-2col="two"]').addClass('active');
    }

    if (typeof callback_fn === "function") {
        callback_fn();
    }
}

/*-- template replace --*/
function tpl_replace(html, data) {
    var t, key, reg;

    if (!html && !data) {
        return;
    }

    for (key in data) {
        reg = new RegExp('{{' + key + '}}', 'ig');
        t = (t || html).replace(reg, data[key]);
    }

    return t;
}

/*-- Image Preview --*/
function img_preview(input, preview, item_elm) {
    var url = input.value;
    var ext = url.substring(url.lastIndexOf('.') + 1).toLowerCase();
    var $preview_item = item_elm || false;

    if (!url) {
        return false;
    }

    if (ext != "png" && ext != "jpeg" && ext != "jpg") {
        alert('Allowed File Types. [ ".jpg" , ".png" ]');
        return false;
    }

    if (!input.files && !input.files[0]) {
        alert('Please select files again.');

        return false;
    }

    var preview_elm;

    if (typeof preview === 'string') {
        preview_elm = $(preview);
    } else {
        preview_elm = preview;
    }

    /*if (input.files.length < 2) {
     
     var reader = new FileReader();
     reader.onload = function (e) {
     preview_elm.html('<img src="' + e.target.result + '" class="img-fluid">');
     };
     
     reader.readAsDataURL(input.files[0]);
     
     return true;
     }*/

    var files_total = input.files.length;

    preview_elm.html('');

    for (i = 0; i < files_total; i++) {
        var reader = new FileReader();

        reader.onload = function (event) {
            var $img = $('<img>').attr('src', event.target.result);

            if (!$preview_item) {
                preview_elm.append($img);
            } else {
                $preview_item = $($.parseHTML(item_elm));

                var $img_elm = $preview_item.html($img);

                preview_elm.append($img_elm);
            }
        };

        reader.readAsDataURL(input.files[i]);
    }

    return true;

}

//Helper function for calculation of progress
function formatFileSize(bytes) {
    if (typeof bytes !== 'number') {
        return '';
    }

    if (bytes >= 1000000000) {
        return (bytes / 1000000000).toFixed(2) + ' GB';
    }

    if (bytes >= 1000000) {
        return (bytes / 1000000).toFixed(2) + ' MB';
    }
    return (bytes / 1000).toFixed(2) + ' KB';
}



