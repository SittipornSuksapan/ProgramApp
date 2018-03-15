var table_review_datatable = null;

$(function () {

    table_review_datatable = $('#review_datatable').DataTable({
        "processing": true,
        "serverSide": true,
        "ajax": {
            url: api_url + 'review/datatable',
            type: "post",
            error: function () {
                $(".employee-grid-error").html("");
                $("#review_datatable").append('<tbody class="employee-grid-error"><tr><th colspan="3">No data found in the server</th></tr></tbody>');
                $("#review_datatable").css("display", "none");
            }
        },
        "order": [[6, "desc"]],
        "columns": [
            {
                "name": "review_id",
                "data": null,
                "render": function (data, type, row) {
                    var get_id = parseInt(data.review_id) || 0;
                    var get_public = parseInt(data.review_public) || 0;

                    var btn_public_class = 'btn-secondary';

                    if (get_public > 0) {
                        btn_public_class = 'btn-success';
                    }

                    var btn_public = '<a class="btn btn-sm ' + btn_public_class + '" href="javascript:review_public_toggle(' + get_id + ',' + get_public + ');"><i class="fa fa-globe"></i></a>';
                    return '<div class="btn-group">' + btn_public + '</div>';
                    //return data.review_id + ' ' + data.review_title;
                },
                "orderable": false,
                "width": 60
            },
            {
                "name": "review_title",
                "data": null,
                "render": function (data, type, row) {
                    return '<a href="' + base_url + 'index.php/food/review/show/' + data.review_id + '" target="_blank">' + data.review_title + '</a>';
                },
                "width": 320
            },
            {"name": "review_score", "data": "review_score", "width": 80},
            {"name": "review_price_rate", "data": "review_price_rate", "width": 80},
            {"name": "member_display", "data": "member_display", "width": 240},
            {"name": "review_cdate", "data": "review_cdate", "width": 160},
            {"name": "review_mdate", "data": "review_mdate", "width": 160}
        ]
    });


});

function review_public_toggle(set_id, set_value) {
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
        url: api_url + 'review/set_public',
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
                table_review_datatable.ajax.reload(null, true);
            }
        }
    });
}
    