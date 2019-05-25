
d_import("head");

o.run('#div-slide', function(divId, that) {
    that.obj('tab', {
        barId: 1,
        liId: divId + ' .row-slide li',
        type: 'right',
        isDrag: true,
        isAuto: true
    });
});


o.run('#div-act', function(divId, that) {
    //设置分页

    var set_pager = function() {
        var dId = jQuery(divId + ' .row-list');
        var listId = dId.find('.d-img');
        var preId = dId.find('.prev');//上一页按钮ID
        var nextId = dId.find('.next');//下一页按钮ID
        var count = listId.find('li').length;//条目总数
        var page = 1;//当前页
        var pageSize = 5;//分页行数
        var maxPage = Math.ceil(count / pageSize);//最大页
        var hideCss = 'on-hide';//隐藏时的css名

        //初始化列表

        var set_show = function() {
            if (page > maxPage) {
                page = maxPage;
                return false;
            } else if (page < 1) {
                page = 1;
                return false;
            }

            listId.find('li').removeClass(hideCss);
            var min = pageSize * (page - 1);
            var max = pageSize * page - 1;

            console.log(min + ': ' + max + ': ' + maxPage);

            listId.find('li:lt(' + min + ')').addClass(hideCss);
            listId.find('li:gt(' + max + ')').addClass(hideCss);
        };

        set_show();

        //按钮点击设置

        nextId.click(function() {
            set_show(page++);
        });

        preId.click(function() {
            set_show(page--);
        });
    };

    set_pager();
});