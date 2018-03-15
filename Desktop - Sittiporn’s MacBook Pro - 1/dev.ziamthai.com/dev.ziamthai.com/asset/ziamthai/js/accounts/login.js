

$(function () {

    $('#login_form').submit(function (e) {
        e.preventDefault();

        globals_accounts_login('#login_form', '#login_result');
    });

    $('#login_pg_form').submit(function (e) {
        e.preventDefault();

        globals_accounts_login('#login_pg_form', '#login_pg_result');
    });

});


function globals_accounts_login(form_target, result_target) {
    var form_elm = form_target || false;
    var form_result = result_target || false;

    if (typeof form_target === 'string') {
        form_elm = $(form_target);
    }

    if (typeof result_target === 'string') {
        form_result = $(result_target);
    }

    form_result.html(icon_loader).show();
    form_result.find('button[type=submit]').prop('disabled', true);
    form_result.find('[data-toggle="tooltip"]').removeAttr('title').removeAttr('data-original-title');

    var login_return_url = form_elm.find('input[name=login_return_url]').val() || false;

    $.ajax({
        type: 'POST',
        url: site_url + 'api/accounts/login',
        data: form_elm.serialize(),
        dataType: 'JSON',
        error: function (jqXHR, textStatus, errorThrown) {
            var err_display = ajax_error_return(jqXHR, textStatus, errorThrown) || textStatus;
            form_result.html(err_display);
        },
        success: function (resp) {

            if (resp.focus) {
                var focus_elm = form_elm.find('input[name=' + resp.focus + ']');
                focus_elm
                        .attr('data-toggle', 'tooltip')
                        .attr('data-original-title', resp.message)
                        .attr('title', resp.message);
                focus_elm.tooltip('show');
            }

            if (resp.error) {
                form_result.removeClass('alert-success').addClass('alert-danger');
            }

            if (resp.success) {
                form_result.removeClass('alert-danger').addClass('alert-success');

                if (!login_return_url) {
                    location.href = site_url;
                } else {
                    location.href = login_return_url;
                }
            }

            if (resp.confirm_email) {
                var email_accounts = form_elm.find('input[name=m_user]').val() || '';
                location.href = site_url + 'accounts/pages/confirm_email/?email=' + email_accounts;
            }

            form_result.html(resp.message);
        }
    });
}

