
$(function () {

    search_submit(1);

    $('#search_form').submit(function (e) {
        e.preventDefault();

        search_submit(1);
    });

});

function search_submit(p) {
    var set_page = parseInt(p) || 1;

    $('#search_form').find('[type=submit]').prop('disabled', true);
    $('#search_result').html(icon_loader).show();

    var data_send = $(this).serialize();

    $.ajax({
        type: 'GET',
        url: apps_url + $('#search_form').attr('data-url-search'),
        data: data_send + '&page=' + set_page,
        dataType: 'JSON',
        error: function (jqXHR, textStatus, errorThrown) {
            var err_msg = ajax_error_return(jqXHR, textStatus, errorThrown);
            $('#search_form').find('[type=submit]').prop('disabled', false);
            $('#search_result').html(err_msg);
        },
        success: function (resp) {
            $('#search_form').find('[type=submit]').prop('disabled', false);

            if (resp.error) {
                $('#search_result').html(resp.message);
            }

            if (resp.success) {
                $('#search_result').html(icon_loader);
                $('#search_data').html('');
                $('#search_page').html('');
            }

            if (resp.data) {
                search_data(resp.data);
            }

            if (resp.page) {
                search_page(resp.page);
            }
        }
    });

}

function search_data(data) {

}

function search_page(page) {

}
