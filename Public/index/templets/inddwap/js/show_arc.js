
d_import('head');

o.run('#div-arc', function(divId, that) {

    //设置来源

    var set_from = function() {
        var dEl = jQuery(divId + ' .row-item .c-from');
        var textEl = dEl.find('u');

        if (textEl.text() == '未知' || !textEl.text()) {
            //未赋值来源

            dEl.remove();

            return false;
        }

        var formUri = dEl.attr('data-uri');

        if (formUri) {
            //设置来源链接

            textEl.wrapInner('<a href="' + formUri + '" target="_blank"></a>');
        }
    };

    set_from();

    //获取文章浏览数

    var get_view = function() {
        var aid = jQuery(divId).attr('data-id');
        var mid = jQuery(divId).attr('data-mid');

        var sieUrl = SITE_URL.replace(/(https?:\/\/)[0-9a-z]+\./i, '$1www.');

        var viewUrl = sieUrl + 'plus/count.php?view=yes&aid=' + aid + '&mid=' + mid;
        var viewId = jQuery(divId + ' .row-item .c-view small');

        that.obj('submit').ajax(viewUrl, '', function(value, data) {
            if (!value) {
                return false;
            }

            var viewCount = o.init_var(value.replace(/[^\d]+/, ''));

            viewId.text(viewCount);
        });
    };

    get_view();

    //设置相关产品

    var set_relate = function() {
        var dId = jQuery(divId + ' .row-relate');

        if (!jQuery.trim(dId.find('.ul ul').text())) {
            dId.hide();
        }
    };

    set_relate();
});
