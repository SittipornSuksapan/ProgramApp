
CKEDITOR.replace('blog_content', {
    removeButtons: 'Styles,Format,Scayt',
    removePlugins: 'wsc,scayt',
    height: '360px'
});

$(document).ready(function () {

    blog_tags_select2();

    $('#blog_form').submit(function () {
        $(this).find('.form-error-result').remove();

        $('#blog_btn_submit').hide();
        $('#blog_btn_indicator').show();
    });

    $('#blog_img_cover').change(function (e) {
        img_preview(e.target, '#blog_img_cover_preview');
    });

    $('label[for="blog_author_false"]').click(function () {
        $('.form-author-info').slideUp();
    });

    $('label[for="blog_author_true"]').click(function () {
        $('.form-author-info').show(300, function () {
            $('#blog_form').find('input[name="author_name"]').select();
        });
    });

});

function blog_tags_select2() {
    var tags_list = $('#blog_tags_list').val() || null;

    var $select2_tags_list = $('#blog_tags').select2({
        tags: true,
        minimumInputLength: 2,
        multiple: true
    });

    if (tags_list) {
        var tags_list_arr = tags_list.split('||') || [];

        if (tags_list_arr.length > 0) {
            $select2_tags_list.val(tags_list_arr).trigger("change");
        }
    }
}

function blog_writing_result(resp) {

    $('#blog_btn_indicator').hide();
    $('#blog_btn_submit').show();

    if (resp.focus) {
        var focus_elm = $('#blog_form').find('[name=' + resp.focus + ']');

        if (focus_elm.length > 0) {
            focus_elm.focus().select();

            $('<div class="form-error-result alert alert-danger">' + resp.message + '</div>').appendTo(focus_elm.parent());
        }
    }

    if (resp.success) {
        window.location.href = site_url + 'client/blog';
    }

}
