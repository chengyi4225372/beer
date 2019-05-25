
d_import('head');

o.run('#div-goods', function(divId, that) {
    that.obj('tab', {
        btnId: divId + ' .row-menu li',
        liId: divId + ' .row-list .ul',
        action: 'click',
    });
});

o.run('#div-tj', function(divId, that) {
    that.obj('tab', {
        preId: divId + ' .row-list .c-pre',
        nextId: divId + ' .row-list .c-next',
        liId: divId + ' .row-list li',
        type: 'right',
        isAuto: true
    });
});
