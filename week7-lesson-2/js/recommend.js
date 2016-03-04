define(function(require, exports, module) {
    exports.doSomething = function() {
        $(window).on("load", function() {
            $("#hotRecommend li").each(function(index) {
                $(this).mouseover(function() {
                    $("div.toplesson").removeClass("toplesson");
                    $(".paperlesson").eq(index).addClass("toplesson");
                })
            })
        })
    }
});
