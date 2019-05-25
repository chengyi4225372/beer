
(function() {
    o.obj('ready').init_tag();
    o.obj('ready').init_drag();

    jQuery('a[href^="#"]').each(function() {
        var me = jQuery(this);
        var href = me.attr('href');//不可用prop
        var tempType = href.replace(/^\#+/, '');

        me.prop('href', 'javascript:;');
        me.attr('data-href', href);

        if ('call' == tempType) {
            me.on('click', function () {
                var tempSqBtnEl = jQuery('#nb_invite_ok');
                var tempSqPopEl = jQuery('#nb_icon_wrap');

                if (tempSqBtnEl.length > 0) {
                    tempSqBtnEl.trigger('click');
                } else if (tempSqPopEl.length > 0) {
                    tempSqPopEl.trigger('click');
                } else {
                    //商桥加载失败时的缺省设置

                    if (IS_WAP) {
                        //客服电话按钮

                        me.prop('href', 'tel:18085007237');
                    } else {
                        //客服QQ按钮

                        me.prop({href: 'http://wpa.qq.com/msgrd?v=3&uin=35439644&site=qq&menu=yes', target: '_blank'});
                    }
                }
            });
        } else if ('tel' == tempType) {
            me.prop('href', 'tel:18085007237');
        } else if ('qq' == tempType) {
            me.prop({href: 'http://wpa.qq.com/msgrd?v=3&uin=35439644&site=qq&menu=yes', target: '_blank'});
        } else if ('taobao' == tempType) {
            me.prop({href: 'https://daqianchao.1688.com/', target: '_blank'});
        }
    });
})();

function d_import(uri) {
    uri = uri || '';

    var scriptId = jQuery('script[src*="/templets/"]');
    var theme = 'default';

    if (scriptId.length > 0) {
        theme = scriptId.attr('src').replace(/^.*templets\/([^\/]+)\/.*$/i, '$1');
    }

    var jsUri = '/Public/index/templets/' + theme + '/js/';

    if (!uri) {
        return false;
    }

    document.write('<script type="text/javascript" src="' + jsUri + uri + '.js"></script>');
}

d_import('d_bdsq');//缺省地调用百度商桥
d_import('d_init_call');//资讯漂浮窗设置

