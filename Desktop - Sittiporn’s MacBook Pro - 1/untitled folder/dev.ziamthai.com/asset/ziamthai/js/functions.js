
var now_date = new Date();
var tz_data = Intl.DateTimeFormat().resolvedOptions().timeZone;
var tz_offset = (now_date.getTimezoneOffset() / 60);

console.log(now_date + '\r\n' + tz_data + ' -- ' + tz_offset);

function loading_panel(active) {
    var set_active = active || false;

    if (!set_active) {
        $('.loader').removeClass('active');
    } else {
        $('.loader').addClass('active');
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
function img_preview(input, preview) {
    var url = input.value;
    var ext = url.substring(url.lastIndexOf('.') + 1).toLowerCase();
    
    if(!url){
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

    var reader = new FileReader();

    var preview_elm;

    if (typeof preview === 'string') {
        preview_elm = $(preview);
    } else {
        preview_elm = preview;
    }

    reader.onload = function (e) {
        preview_elm.html('<img src="' + e.target.result + '">');
    };

    reader.readAsDataURL(input.files[0]);

    return true;
}



