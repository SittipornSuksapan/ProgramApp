
$(function () {

    $('#forgotpwd_form').submit(function (e) {
        e.preventDefault();

        $('#forgotpwd_result').html(loading_icon).show();
        $('#forgotpwd_form').find('button[type=submit]').prop('disabled', true);

        $.ajax({
            type: 'POST',
            url: api_url + 'accounts/pwd_request',
            data: $(this).serialize(),
            dataType: 'JSON',
            error: function (jqXHR, textStatus, errorThrown) {
                var err_display = ajax_error_return(jqXHR, textStatus, errorThrown) || textStatus;
                $('#forgotpwd_result').html(err_display);
            },
            success: function (resp) {
                $('#forgotpwd_form').find('button[type=submit]').prop('disabled', false);

                if (resp.error) {
                    $('#forgotpwd_result').removeClass('alert-success').addClass('alert-danger');
                }

                if (resp.success) {
                    $('#forgotpwd_form').find('button[type=submit]').prop('disabled', true);
                    $('#forgotpwd_form').hide();

                    $('#forgotpwd_result').removeClass('alert-danger').addClass('alert-success');
                }

                if (resp.focus) {
                    $('#forgotpwd_form').find('input[name=' + resp.focus + ']').select().focus();
                }

                $('#forgotpwd_result').html(resp.message);
            }
        });

    });

});
