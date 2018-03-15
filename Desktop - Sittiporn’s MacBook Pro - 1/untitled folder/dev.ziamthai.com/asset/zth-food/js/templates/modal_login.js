
$(function () {

    $('#login_form').submit(function (e) {
        e.preventDefault();

        var form_elm = $('#login_form');
        var form_result = $('#login_result');

        form_result.html(loading_icon).show();
        form_result.find('button[type=submit]').prop('disabled', true);
        form_result.find('[data-toggle="tooltip"]').removeAttr('title').removeAttr('data-original-title');

        var login_return_url = form_elm.find('input[name=login_return_url]').val() || false;

        zth.API({
            query: 'accounts/login',
            data: form_elm.serialize(),
            callback: function (resp) {
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

    });


});
