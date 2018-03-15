
window.zth || (zth = {});

zth.base_url = (typeof window.location.origin === 'undefined') ? window.location.protocol + '//' + window.location.host + '/' : window.location.origin + '/';

zth.API = function (option) {
    var opt = $.extend({}, {
        version: 'v1',
        query: null,
        type: 'POST',
        data: '',
        dataType: 'JSON',
        callback: null
    }, option);

    if (!opt.query) {
        var resp = {'error': true, 'message': 'Undefined query command.'};
        if (typeof opt.callback === 'function') {
            opt.callback(resp);
            return;
        }
        return resp;
    }
    
    var api_url = zth.base_url + 'api.php/';

    var result = (function () {
        var get_result = null;
        $.ajax({
            'async': false,
            'global': true,
            'url': api_url + opt.version + '/' + opt.query,
            'type': opt.type,
            'data': opt.data,
            'dataType': opt.dataType,
            'error': function (jqXHR, textStatus, errorThrown) {
                var err_display = ajax_error_return(jqXHR, textStatus, errorThrown) || textStatus;
                get_result = {'error': true, 'message': err_display};
            },
            'success': function (data) {
                get_result = data;
            }
        });
        return get_result;
    })();

    if (typeof opt.callback === 'function') {
        opt.callback(result);
        return;
    }

    return result;
};


