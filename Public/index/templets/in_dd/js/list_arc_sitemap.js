
o.run('#main', function(divId, that) {
    //设置本页搜索

    var set_search_current = function() {
        var searchId = jQuery('#head .row-search form');
        var listId = jQuery('#div-list .row-list');
        var onCss = 'on-key';

        searchId.submit(function() {
            var value = jQuery.trim(jQuery(this).find('[name="q"]').val());
            var fisrtLinkId = null;//找到的第一个链接索引ID

            if (!value) {
                that.obj('window').alert('请输入关键词');
                
                return false;
            }

            listId.find('a').each(function() {
                var me = jQuery(this);
                var tempText = jQuery.trim(me.text());

                if (tempText.indexOf(value) > -1) {
                    //链接中有关键词

                    me.addClass(onCss);

                    if (!fisrtLinkId) {
                        fisrtLinkId = me;
                    }
                } else {
                    me.removeClass(onCss);
                }
            });

            if (fisrtLinkId) {
                that.obj('browser').go2top({id: fisrtLinkId, step: -50});
            }
        });
    };

    set_search_current();
});

d_import('foot');