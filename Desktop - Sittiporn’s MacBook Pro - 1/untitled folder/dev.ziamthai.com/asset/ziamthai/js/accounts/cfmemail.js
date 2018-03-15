
$(function () {

    $('#cfmemail_resend').click(function () {

        $('#cfmemail_result').html(icon_loader).show();
        $('#cfmemail_form').find('button[type=submit]').prop('disabled', true);
        $('#cfmemail_form').find('[data-toggle="tooltip"]').removeAttr('title').removeAttr('data-original-title');

        $.ajax({
            type: 'POST',
            url: site_url + 'api/accounts/cfmemail_resend',
            data: $('#cfmemail_form').serialize(),
            dataType: 'JSON',
            error: function (jqXHR, textStatus, errorThrown) {
                var err_display = ajax_error_return(jqXHR, textStatus, errorThrown) || textStatus;
                $('#cfmemail_result').html(err_display);
            },
            success: function (resp) {
                $('#cfmemail_form').find('button[type=submit]').prop('disabled', false);

                if (resp.error) {
                    $('#cfmemail_result').removeClass('alert-success').addClass('alert-danger');
                }

                if (resp.success) {
                    $('#cfmemail_result').removeClass('alert-danger').addClass('alert-success');
                }

                if (resp.focus) {
                    var focus_elm = $('#cfmemail_form').find('input[name=' + resp.focus + ']');

                    focus_elm
                            .attr('data-toggle', 'tooltip')
                            .attr('data-original-title', resp.message)
                            .attr('title', resp.message);
                    focus_elm.tooltip('show');
                }

                $('#cfmemail_result').html(resp.message);
            }
        });
    });

    $('#cfmemail_form').submit(function (e) {
        e.preventDefault();

        $('#cfmemail_result').html(icon_loader).show();
        $('#cfmemail_form').find('button[type=submit]').prop('disabled', true);
        $('#cfmemail_form').find('[data-toggle="tooltip"]').removeAttr('title').removeAttr('data-original-title');

        $.ajax({
            type: 'POST',
            url: site_url + 'api/accounts/cfmemail',
            data: $(this).serialize(),
            dataType: 'JSON',
            error: function (jqXHR, textStatus, errorThrown) {
                var err_display = ajax_error_return(jqXHR, textStatus, errorThrown) || textStatus;
                $('#cfmemail_result').html(err_display);
            },
            success: function (resp) {
                $('#cfmemail_form').find('button[type=submit]').prop('disabled', false);

                if (resp.error) {
                    $('#cfmemail_result').removeClass('alert-success').addClass('alert-danger');
                }

                if (resp.success) {
                    $('#cfmemail_form').find('button[type=submit]').prop('disabled', true);
                    $('#cfmemail_form').hide();

                    $('#cfmemail_result').removeClass('alert-danger').addClass('alert-success');

                    location.href = site_url + 'accounts/pages/login';
                }

                if (resp.focus) {
                    var focus_elm = $('#cfmemail_form').find('input[name=' + resp.focus + ']');

                    focus_elm
                            .attr('data-toggle', 'tooltip')
                            .attr('data-original-title', resp.message)
                            .attr('title', resp.message);
                    focus_elm.tooltip('show');
                }

                $('#cfmemail_result').html(resp.message);
            }
        });

    });

});
