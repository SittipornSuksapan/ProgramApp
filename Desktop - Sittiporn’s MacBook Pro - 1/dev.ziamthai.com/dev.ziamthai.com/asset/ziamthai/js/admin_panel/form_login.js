
$(function () {

    $('#login_form').submit(function (e) {
        e.preventDefault();

        var login_url = $(this).attr('data-login-url') || false;

        if (!login_url) {
            return;
        }

        $('#login_form').find('button[type=submit]').prop('disabled', true);
        $('#login_result').html(icon_loader).show();

        $.ajax({
            type: 'POST',
            url: login_url,
            data: $(this).serialize(),
            dataType: 'JSON',
            success: function (resp) {
                $('#login_form').find('button[type=submit]').prop('disabled', false);

                if (resp.error) {
                    $('#login_result').html(resp.message);
                }

                if (resp.success) {
                    location.href = apps_url + 'home';
                }
            }
        });
    });

});
