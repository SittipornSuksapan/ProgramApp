
$(function () {


    $('#exchange_rate_form').submit(function (e) {
        e.preventDefault();

        $('#exchange_rate_result').html(loading_icon).show();

        $.ajax({
            type: 'POST',
            url: api_url + 'reward/update_exchange_rate',
            data: $(this).serialize(),
            dataType: 'JSON',
            success: function (resp) {
                $('#exchange_rate_result').html(resp.message);
            }
        });

    });


});

