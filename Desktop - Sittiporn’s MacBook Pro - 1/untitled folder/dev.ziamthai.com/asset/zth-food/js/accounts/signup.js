
$(function () {

    $('#signup_form').submit(function (e) {
        e.preventDefault();

        $('#signup_result').html(loading_icon).show();
        $('#signup_form').find('button[type=submit]').prop('disabled', true);
        $('#signup_form').find('[data-toggle="tooltip"]').removeAttr('title').removeAttr('data-original-title');

        $.ajax({
            type: 'POST',
            url: api_url + 'accounts/signup',
            data: $(this).serialize(),
            dataType: 'JSON',
            error: function (jqXHR, textStatus, errorThrown) {
                var err_display = ajax_error_return(jqXHR, textStatus, errorThrown) || textStatus;
                $('#signup_result').html(err_display);
            },
            success: function (resp) {
                $('#signup_form').find('button[type=submit]').prop('disabled', false);

                if (resp.error) {
                    $('#signup_result').removeClass('alert-success').addClass('alert-danger');
                }

                if (resp.success) {
                    $('#signup_form').find('button[type=submit]').prop('disabled', true);
                    $('#signup_form').hide();

                    $('#signup_result').removeClass('alert-danger').addClass('alert-success');

                    location.href = site_url + 'accounts/pages/login';
                }

                if (resp.focus) {
                    var focus_elm = $('#signup_form').find('input[name=' + resp.focus + ']');

                    focus_elm
                            .attr('data-toggle', 'tooltip')
                            .attr('data-original-title', resp.message)
                            .attr('title', resp.message);
                    focus_elm.tooltip('show');
                }

                $('#signup_result').html(resp.message);
            }
        });

    });

});
