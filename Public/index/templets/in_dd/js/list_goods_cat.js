
d_import('head');

o.run('#div-cont', function(divId, that) {
    that.obj('tab', {
        btnId: divId + ' .row-nav li',
        liId: divId + ' .row-list .ul',
        action: 'click'
    });
});

o.run('#div-goods', function(divId, that) {
    that.obj('tab', {
        btnId: divId + ' .row-menu li',
        liId: divId + ' .goods-list .ul'
    });
});

d_import('foot');