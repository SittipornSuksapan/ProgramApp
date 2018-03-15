

$(function () {

    var bar = $('.bar');
    var percent = $('.percent');
    var status = $('#status');

    $("select#posts_tags").select2({
        tags: true,
        tokenSeparators: [',']
    });

    $('#posts_img_browse').change(function (e) {
        img_preview(this, '#posts_img_preview');
    });



    $('#posts_form').submit(function (e) {
        e.preventDefault();

        $('#posts_form').find('[type=submit]').prop('disabled', true);
        $('#posts_result').html(icon_loader).show();

        $(this).ajaxSubmit({
            target: '#posts_iframe',
            beforeSubmit: function () {
                status.empty();
                var percentVal = '0%';
                bar.width(percentVal);
                percent.html(percentVal);
                $('.progress').show();
            },
            uploadProgress: function (event, position, total, percentComplete) {
                var percentVal = percentComplete + '%';
                bar.width(percentVal);
                percent.html(percentVal);
            },
            dataType: 'JSON',
            error: function (jqXHR, textStatus, errorThrown) {
                var err_msg = ajax_error_return(jqXHR, textStatus, errorThrown);
                $('#posts_form').find('[type=submit]').prop('disabled', false);
                $('#posts_result').html(err_msg);
            },
            success: function (resp) {
                $('#posts_form').find('[type=submit]').prop('disabled', false);

                if (resp.error) {
                    $('#posts_result').html(resp.message);
                }

                if (resp.success) {
                    $('#posts_result').html(icon_loader);

                    location.href = $('#posts_form').attr('data-url-complete') + parseInt(resp.data.news_id);
                }
            },
            complete: function (xhr) {
                //status.html(xhr.responseText);
                $('.progress').hide();
            },
            resetForm: true
        });
        /*
         $.ajax({
         type: 'POST',
         url: apps_url + $('#posts_form').attr('data-url-save'),
         data: $(this).serialize(),
         dataType: 'JSON',
         error: function (jqXHR, textStatus, errorThrown) {
         var err_msg = ajax_error_return(jqXHR, textStatus, errorThrown);
         $('#posts_form').find('[type=submit]').prop('disabled', false);
         $('#posts_result').html(err_msg);
         },
         success: function (resp) {
         $('#posts_form').find('[type=submit]').prop('disabled', false);
         
         if (resp.error) {
         $('#posts_result').html(resp.message);
         }
         
         if (resp.success) {
         $('#posts_result').html(icon_loader);
         
         location.reload();
         }
         }
         });
         */
    });


});


CKEDITOR.replace('content', {
    //removeButtons : 'Save,Print,Preview,About,Newpage,Templates,Maximize,ShowBlocks'
    toolbar: [
        {name: 'document', groups: ['mode', 'document', 'doctools'], items: ['Source'/*, '-', 'Save', 'NewPage', 'Preview', 'Print', '-', 'Templates'*/]},
        {name: 'clipboard', groups: ['clipboard', 'undo'], items: ['Cut', 'Copy', 'Paste', 'PasteText', 'PasteFromWord', '-', 'Undo', 'Redo']},
        {name: 'editing', groups: ['find', 'selection', 'spellchecker'], items: ['Find', 'Replace', '-', 'SelectAll', '-', 'Scayt']},
        /*{name: 'forms', items: ['Form', 'Checkbox', 'Radio', 'TextField', 'Textarea', 'Select', 'Button', 'ImageButton', 'HiddenField']},
         '/',*/
        {name: 'basicstyles', groups: ['basicstyles', 'cleanup'], items: ['Bold', 'Italic', 'Underline', 'Strike', 'Subscript', 'Superscript', '-', 'RemoveFormat']},
        {name: 'paragraph', groups: ['list', 'indent', 'blocks', 'align', 'bidi'], items: ['NumberedList', 'BulletedList', '-', 'Outdent', 'Indent', '-', 'Blockquote', 'CreateDiv', '-', 'JustifyLeft', 'JustifyCenter', 'JustifyRight', 'JustifyBlock', '-', 'BidiLtr', 'BidiRtl', 'Language']},
        {name: 'links', items: ['Link', 'Unlink', 'Anchor']},
        {name: 'insert', items: ['Image', 'Flash', 'Table', 'HorizontalRule', 'Smiley', 'SpecialChar', 'PageBreak'/*, 'Iframe'*/]},
        '/',
        {name: 'styles', items: ['Styles', 'Format', 'Font', 'FontSize']},
        {name: 'colors', items: ['TextColor', 'BGColor']},
        {name: 'tools', items: ['Maximize', 'ShowBlocks']},
        {name: 'others', items: ['-']},
        {name: 'about', items: ['About']}
    ]
});
