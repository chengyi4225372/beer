
o.run('#nav', function(divId, that) {
    var dEl = jQuery(divId + ' .row-list');
    var onCss = 'on-show';
    var isShow = false;
    var btnEl = jQuery(divId + ' .row-list .c-more');

    btnEl.click(function() {
        if (isShow) {
            dEl.removeClass(onCss);
            btnEl.find('i').text('+');
        } else {
            dEl.addClass(onCss);
            btnEl.find('i').text('-');
        }

        isShow = !isShow;
    });
});