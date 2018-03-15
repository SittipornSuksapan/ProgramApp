
$(function () {

    $('#foods_buyer_form').find('.foods_buyer_delivery_choose').click(function () {
        var form_elm = $('#foods_buyer_form');
        var get_delivery = parseInt(form_elm.find('input[name=buyer_delivery]:checked').val()) || 0;

        if (get_delivery > 0) {
            form_elm.find('.foods_buyer_delivery_shipping').show();
            form_elm.find('label[for=foods_buyer_pickup]')
                    .removeClass('btn-success')
                    .addClass('btn-outline-success');
            form_elm.find('label[for=foods_buyer_delivery]')
                    .removeClass('btn-outline-success')
                    .addClass('btn-success');
        } else {
            form_elm.find('.foods_buyer_delivery_shipping').hide();
            form_elm.find('.foods_buyer_delivery_shipping input[name=buyer_address]').val('');
            form_elm.find('.foods_buyer_delivery_shipping input[name=buyer_zipcode]').val('');
            form_elm.find('label[for=foods_buyer_pickup]')
                    .removeClass('btn-outline-success')
                    .addClass('btn-success');
            form_elm.find('label[for=foods_buyer_delivery]')
                    .removeClass('btn-success')
                    .addClass('btn-outline-success');
        }
    });

    $('#foods_buyer_form').submit(function (e) {
        e.preventDefault();

        store_buyer_data = {
            name: $(this).find('input[name=buyer_name]').val() || '',
            tel: $(this).find('input[name=buyer_tel]').val() || '',
            email: $(this).find('input[name=buyer_email]').val() || '',
            address: $(this).find('input[name=buyer_address]').val() || '',
            zipcode: $(this).find('input[name=buyer_zipcode]').val() || '',
            delivery: parseInt($(this).find('input[name=buyer_delivery]:checked').val()) || 0
        };

        if (typeof (Storage) !== "undefined") {
            localStorage.setItem('store_buyer_info', JSON.stringify(store_buyer_data));
        }

        $('#foods_buyer_info_modal').modal('hide');
    });

    $('#foods_buyer_info_modal').on('hidden.bs.modal', function (e) {
        if (store_buyer_modal_reset === true) {
            return;
        }

        var online_cart_form = $('body').find('#store_order_form');

        if (online_cart_form.length > 0) {
            online_cart_form.submit();
        }
    });

    $('#foods_buyer_info_modal').find('button#foods_buyer_modal_reset').click(function () {
        store_buyer_modal_reset = true;
    });

});
