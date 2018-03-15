
$(function () {

    $('#cate_form').find('select[name=cate_parent]').change(function () {
        var get_value = parseInt($(this).val()) || 0;

        var get_level = parseInt($(this).find('option[value=' + get_value + ']').data('level')) || 0;

        $('#cate_form').find('input[name=cate_level]').val(get_level);
    });

    $('#cate_form').submit(function (e) {
        e.preventDefault();

        $('#cate_form').find('[type=submit]').prop('disabled', true);
        $('#cate_result').html(icon_loader).show();

        $.ajax({
            type: 'POST',
            url: apps_url + $('#cate_form').attr('data-url-save'),
            data: $(this).serialize(),
            dataType: 'JSON',
            error: function (jqXHR, textStatus, errorThrown) {
                var err_msg = ajax_error_return(jqXHR, textStatus, errorThrown);
                $('#cate_form').find('[type=submit]').prop('disabled', false);
                $('#cate_result').html(err_msg);
            },
            success: function (resp) {
                $('#cate_form').find('[type=submit]').prop('disabled', false);

                if (resp.error) {
                    $('#cate_result').html(resp.message);
                }

                if (resp.success) {
                    $('#cate_result').html(icon_loader);

                    location.reload();
                }
            }
        });

    });

});

function cate_edit(data) {
    if (!data.cate_id) {
        return;
    }

    $('#cate_form').find('input[name=cate_id]').val(parseInt(data.cate_id));
    $('#cate_form').find('select[name=cate_parent]').val(parseInt(data.cate_parent)).change();
    $('#cate_form').find('input[name=cate_level]').val(parseInt(data.cate_level));
    $('#cate_form').find('input[name=cate_name]').val(data.cate_name);

    $('#cate_form').find('button[type=reset]').show();
}

function cate_edit_cancel() {
    $('#cate_form').find('input[name=cate_id]').val(0);
    $('#cate_form').find('select[name=cate_parent]').val(0).change();
    $('#cate_form').find('input[name=cate_level]').val(0);
    $('#cate_form').find('input[name=cate_name]').val('');

    $('#cate_form').find('button[type=reset]').hide();
}

function cate_delete(id, name) {
    var get_id = parseInt(id) || false;
    var get_name = decodeURIComponent(name) || '';
    var get_confirm = decodeURIComponent($('#cate_form').data('confirm-del')) || 'Are you sure you want to delete this categories?';

    if (!get_id) {
        return;
    }

    if (!confirm(get_confirm + "\r\n - " + get_name)) {
        return;
    }

    $('#cate_form').find('[type=submit]').prop('disabled', true);
    $('#cate_result').html(icon_loader).show();

    $.ajax({
        type: 'POST',
        url: apps_url + $('#cate_form').attr('data-url-del'),
        data: {id: get_id},
        dataType: 'JSON',
        error: function (jqXHR, textStatus, errorThrown) {
            var err_msg = ajax_error_return(jqXHR, textStatus, errorThrown);
            $('#cate_form').find('[type=submit]').prop('disabled', false);
            $('#cate_result').html(err_msg);
        },
        success: function (resp) {
            $('#cate_form').find('[type=submit]').prop('disabled', false);

            if (resp.error) {
                $('#cate_result').html(resp.message);
            }

            if (resp.success) {
                $('#cate_result').html(icon_loader);

                location.reload();
            }
        }
    });

}
