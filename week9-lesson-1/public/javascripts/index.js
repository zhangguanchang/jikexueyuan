$(function() {

    // 绑定导航条的点击事件
    $(".nav-btn").bind('click', function() {
        $(this).find('span');
        navClick($(this).attr('value'));
    });
});

// 点击对应条目时加载数据
function navClick(tableName) {
    $("#content").empty();
    $.ajax({
        url: '/select',
        type: 'post',
        dataType: "json",
        data: {
            "classfy": tableName
        },
        success: function(data) {
            for (var i = 0; i < data.length; i++) {
                var conDiv = $("<div class='container index-list'></div>")
                var h5 = $("<h5></h5>");
                h5.text(data[i]['title']);
                conDiv.append(h5);

                var col4Div = $("<div class='col-xs-4 fit'></div>");
                var img = $("<img>");
                img.attr('src', data[i]['img']);
                var span = $("<span></span>");
                span.text(data[i]['time'].substring(0, 10));
                col4Div.append(img);
                col4Div.append(span);
                conDiv.append(col4Div);

                var col8Div = $("<div class='col-xs-8 fit'></div>");
                var pCon = $("<p></p>");
                pCon.text(data[i]['content']);
                col8Div.append(pCon);
                conDiv.append(col8Div);
                $("#content").append(conDiv);
            }
        }
    });
}
