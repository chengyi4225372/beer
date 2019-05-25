
d_import('head');

o.run('#div-news', function(divId, that) {
    that.obj('tab', {
        btnId: divId + ' .row_nav li.col-item',
        liId: divId + ' .row-list .ul',
        action: 'click'
    });
});


o.run('#div-cpzs', function(divId, that) {
    that.obj('tab', {
        btnId: divId + ' .row-th li',
        liId: divId + ' .row-list .ul',
        type: 'right'
    });
});

o.run('#div-slide', function(divId, that) {
    that.obj('tab', {
        barId: 1,
        liId: divId + ' .row-slide li',
        type: 'right',
        isDrag: true,
        isAuto: true
    });
});

o.run('#div-about', function(divId, that) {
    jQuery(divId + ' .row-info .c-img a').click(function() {
        var imgId = jQuery(this);
        var videoId =  imgId.parent().find('video');

        imgId.hide();
        videoId.show();
        videoId[0].play();
    });
});

o.run('#div-liuyan', function(divId, that) {
    /**
     * 初始化留言提交表单
     */
    var d_init_msg = function(formId) {
        //设置提交表单

        var check_value = function(formId, confirms) {
            for (var key in confirms) {
                var row = confirms[key];
                var tempValue = formId.find('[name="' + key + '"]').val();
                var tempType = row[0];
                var tempNote = row[1];

                if (!that.obj('submit').check(tempValue, tempType)) {
                    that.obj('window').confirm({note: tempNote});

                    return false;
                }
            }

            return true;
        };

        var set_form = function(formId) {
            formId = jQuery(formId);
            var isPass = false;
            var confirms = {chenghu: ['name', '姓名格式错误'], dh: ['mobile', '手机号码格式有误，格式如：13712345678'],
                neirong: ['comment', '留言字数限制在1-500个字符内']};

            formId.submit(function() {
                isPass = check_value(jQuery(this), confirms);

                if (isPass) {
                    var key = '22ea45dc6d931a420d88f53247b6e12a';

                    formId.find('[name="time"]').val(that.obj('date').time());

                    formId.find('[name="dede_fieldshash"]').val(key);
                }

                return isPass;
            });
        };

        set_form(formId);
    };

    d_init_msg(divId + ' .row-form form');
});
