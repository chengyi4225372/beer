
o.run('#call', function(divId, that) {
    var dEl = jQuery(divId);
    var btnEl = jQuery(divId + ' .row-btn a');
    var closeEl = jQuery(divId + ' .row-info .c-close');
    var formEl = jQuery(divId + ' .row-info form');
    var telEl = jQuery(divId + ' .row-info form .c-input');
    var onCss = 'on-show';

    btnEl.click(function() {
        dEl.addClass(onCss);
    });

    closeEl.click(function() {
        dEl.removeClass(onCss);
    });

/*    //设置回拨

    var set_call = function() {
        formEl.submit(function() {
            var tel = telEl.val();
            var lxbPhoneEl = jQuery('#LXB_CONTAINER input[name="phone"]');
            var lxbBtnEl = jQuery('#LXB_CONTAINER .lxb-cb-input-btn');

            if (!that.obj('submit').check(tel, 'mobile')) {
                that.obj('window').alert('请输入正确的11位手机号码');
            } else {
                that.obj('window').alert('正在回拨，请稍后');

                try {
                    lxbPhoneEl.val(tel);
                    lxbBtnEl.trigger('click');
                } catch (e) {
                    console.log('离线宝电话提交失败');
                }
            }
        });
    };

    set_call();*/

});
