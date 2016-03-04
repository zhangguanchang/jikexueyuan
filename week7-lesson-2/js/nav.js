define(function(require, exports, module) {
    exports.doSomething = function() {
        $(window).on("load", function() {
            $("#pNav li").each(function(index) {
                $(this).mouseover(function() {
                    $("div.pnavShow").removeClass("pnavShow");
                    $(".pnavContent").eq(index).addClass("pnavShow");
                    $(".papernav").addClass("papernavshow");
                    $(".pnavMain").css("z-index", "3");
                }).mouseout(function() {
                    $(".papernavshow").removeClass("papernavshow");
                    $(".pnavShow").removeClass("pnavShow");
                    $(".pnavMain").css("z-index", "2");
                })
            })
        })
    }
});
