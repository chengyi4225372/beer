
d_import('head');

o.run('#div-cont', function(divId, that) {
    that.obj('tab', {
        btnId: divId + ' .row-nav li',
        liId: divId + ' .row-list .ul',
        action: 'click'
    });
});

o.run('#div-slidex', function(divId, that) {
    that.obj('tab', {
        pageId: 1,
        barId: 1,
        liId: divId + ' .row-slide li',
        type: 'fade',
        isDrag: true,
        isAuto: true
    });
});
d_import('foot');