
d_import('head');


o.run('#div-goods', function(divId, that) {
    var listId = jQuery(divId + ' .row-list .slide');

    that.obj('tab', {
        btnId: divId + ' .row-menu li',
        liId: listId,
        type: 'right'
    });

    listId.each(function() {
        var tempid = that.create_id();
        var me = jQuery(this);

        me.prop('id', tempid);

        that.obj('tab', {
            pageId: 1,
            liId: '#' + tempid + ' li',
            type: 'right'
        });
    });
});

o.run('#div-cont', function(divId, that) {
    that.obj('tab', {
        btnId: divId + ' .row-nav li',
        liId: divId + ' .row-list .ul',
        action: 'click'
    });
});


o.run('#div-anli', function(divId, that) {
    that.obj('tab', {
        pageId: 1,
        liId: divId + ' .row-list li',
        type: 'right'
    });
});

d_import('foot');