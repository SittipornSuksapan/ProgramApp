var table_blog_datatable = null;

$(function () {

    table_blog_datatable = $('#blog_datatable').DataTable({
        "processing": true,
        "serverSide": true,
        "ajax": {
            url: api_url + 'blog/datatable',
            type: "post",
            error: function () {
                $(".employee-grid-error").html("");
                $("#blog_datatable").append('<tbody class="employee-grid-error"><tr><th colspan="3">No data found in the server</th></tr></tbody>');
                $("#blog_datatable").css("display", "none");
            }
        },
        "order": [[3, "desc"]],
        "columns": [
            {
                "name": "id",
                "data": null,
                "render": function (data, type, row) {
                    var get_id = parseInt(data.id) || 0;
                    var get_public = parseInt(data.public) || 0;

                    var btn_edit = '<a class="btn btn-sm btn-secondary" href="' + site_url + 'client/blog/writing/?blog_id=' + get_id + '"><i class="fa fa-edit"></i></a>';
                    var btn_public_class = 'btn-secondary';

                    if (get_public > 0) {
                        btn_public_class = 'btn-success';
                    }

                    var btn_public = '<a class="btn btn-sm ' + btn_public_class + '" href="javascript:blog_public_toggle(' + get_id + ',' + get_public + ');"><i class="fa fa-globe"></i></a>';
                    return '<div class="btn-group">' + btn_public + btn_edit + '</div>';
                    //return data.id + ' ' + data.title;
                },
                "orderable": false
            },
            {"name": "title", "data": "title"},
            {"name": "highlight", "data": "highlight", "orderable": false},
            {"name": "c_date", "data": "c_date"},
            {"name": "m_date", "data": "m_date"}
        ]
    });


});


function blog_public_toggle(set_id, set_value) {
    var get_id = parseInt(set_id) || false;
    var ori_value = parseInt(set_value) || 0;
    var new_value = 1;

    if (!get_id) {
        return;
    }

    if (ori_value > 0) {
        new_value = 0;
    }

    $.ajax({
        type: 'POST',
        url: api_url + 'blog/set_public',
        data: {id: get_id, value: new_value},
        dataType: 'JSON',
        error: function () {
            alert('Bad request!');
        },
        success: function (resp) {
            if (resp.error) {
                alert(resp.message);
            }

            if (resp.success) {
                table_blog_datatable.ajax.reload(null, true);
            }
        }
    });
}
    