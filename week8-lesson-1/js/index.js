$(window).on('load', function() { //页面加载时的默认请求数据
    $.ajax({ //创建新的ajax
        type: 'post', //请求方式
        data: { //发往服务器的数据
            newsclass: 'tuijian',
            action: 'select',
            newstitle: '',
            newsimg: '',
            newscontent: '',
            newslink: '',
            newsdate: ''
        },

        url: 'connection.php', //服务器名称
        success: function(data) { //连接成功后执行的方法，将会使用到从服务器传回来的数据
            $.each(data, function(index) { //遍历服务器回传的数组，并且将回传的数据通过html页面进行展现
                var newsbox = $('<div class="row news"></div>').appendTo('#newsarea');
                var newslink = $('<a class="col-xs-12 " target=“_self”></a>').attr({
                    href: data[index].newslink
                }).appendTo(newsbox);
                var newsimg = $('<img>').attr({
                    src: data[index].newsimg
                }).appendTo(newslink);
                var newstitle = $('<h3>').text(data[index].newstitle).appendTo(newslink);
                var newscontent = $('<p>').text(data[index].newscontent).appendTo(newslink);
                var newsdate = $('<span>').text(data[index].newsdate).appendTo(newslink);
            })
        },

    })
})


$("#navigation span").on("click", function() { //为每个导航标题绑定点击事件
    $("#navigation span").removeClass("selecteditem"); //导航标签焦点切换
    $(this).addClass("selecteditem");
    $('#newsarea').empty(); //清空新闻展示区内的内容
    var newsClass = $(this).attr('title'); //获取标题的title，用于数据库数据类别判定
    $.ajax({ //创建新的ajax
        type: 'post', //请求方式
        data: { //发往服务器的数据
            newsclass: newsClass,
            action: 'select',
            newstitle: '',
            newsimg: '',
            newscontent: '',
            newslink: '',
            newsdate: ''
        },

        url: 'connection.php', //服务器名称
        success: function(data) { //连接成功后执行的方法，将会使用到从服务器传回来的数据
            $.each(data, function(index) { //遍历服务器回传的数组，并且将回传的数据通过html页面进行展现
                var newsbox = $('<div class="row news"></div>').appendTo('#newsarea');
                var newslink = $('<a class="col-xs-12 " target=“_self”></a>').attr({
                    href: data[index].newslink
                }).appendTo(newsbox);
                var newsimg = $('<img>').attr({
                    src: data[index].newsimg
                }).appendTo(newslink);
                var newstitle = $('<h3>').text(data[index].newstitle).appendTo(newslink);
                var newscontent = $('<p>').text(data[index].newscontent).appendTo(newslink);
                var newsdate = $('<span>').text(data[index].newsdate).appendTo(newslink);
            })
        },

    })
})
