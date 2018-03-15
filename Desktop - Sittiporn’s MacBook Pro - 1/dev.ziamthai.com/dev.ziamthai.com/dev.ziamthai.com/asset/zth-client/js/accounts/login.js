
var login_complete_go = site_url + 'client/home';

function workspace_selection(workspace) {

    var get_workspace = parseInt(workspace) || false;

    if (!get_workspace) {
        return;
    }

    $('#workspace_result').html(loading_icon).show();

    $.ajax({
        type: 'POST',
        url: base_url + 'index.php/client/login/set_workspace',
        data: {workspace: get_workspace},
        dataType: 'JSON',
        error: function (jqXHR, textStatus, errorThrown) {
            var err_text = ajax_error_return(jqXHR, textStatus, errorThrown);

            $('#workspace_result').html(err_text);
        },
        success: function (resp) {
            if (resp.error) {
                $('#workspace_result').html(resp.message);
            }

            if (resp.success) {
                $('#workspace_result').html(loading_icon);

                window.location.href = login_complete_go;
            }
        }
    });

}
