
$(function () {

    $('#resetpass_form').submit(function (e) {
        e.preventDefault();

        $('#resetpass_result').html(loading_icon).show();
        $('#resetpass_form').find('button[type=submit]').prop('disabled', true);

        $.ajax({
            type: 'POST',
            url: api_url + 'accounts/pwd_reset',
            data: $(this).serialize(),
            dataType: 'JSON',
            error: function (jqXHR, textStatus, errorThrown) {
                var err_display = ajax_error_return(jqXHR, textStatus, errorThrown) || textStatus;
                $('#resetpass_result').html(err_display);
            },
            success: function (resp) {
                $('#resetpass_form').find('button[type=submit]').prop('disabled', false);

                if (resp.error) {
                    $('#resetpass_result').removeClass('alert-success').addClass('alert-danger');
                }

                if (resp.success) {
                    $('#resetpass_form').find('button[type=submit]').prop('disabled', true);
                    $('#resetpass_form').hide();

                    $('#resetpass_result').removeClass('alert-danger').addClass('alert-success');

                    location.href = site_url + 'accounts/pages/login';
                }

                if (resp.focus) {
                    $('#resetpass_form').find('input[name=' + resp.focus + ']').select().focus();
                }

                $('#resetpass_result').html(resp.message);
            }
        });

    });

});
