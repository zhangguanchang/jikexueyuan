define(function(require, exports, module) {
    exports.doSomething = function() {
        $(window).on("load", function() {
            var left = $(".companysBtnleft");
            var right = $(".companysBtnright");
            var list = $(".companyList");
            var box = $(".companyBox")
            var index = 1;
            var moved = false;


            function move(num) {
                moved = true;
                var newLeft = parseInt(list.css("left")) + num;
                var time = 300; //位移总时间
                var interval = 10; //位移间隔时间
                var speed = num / (time / interval); //每次位移量
                function go() {
                    if ((speed < 0 && parseInt(list.css("left")) > newLeft) || (speed > 0 && parseInt(list.css("left")) < newLeft)) {
                        list.css("left", parseInt(list.css("left")) + speed + 'px');
                        setTimeout(go, interval);
                    } else {
                        moved = false;
                        list.css("left", newLeft + 'px');
                        if (newLeft > -160) {
                            list.css("left", -3360 + 'px');
                        }
                        if (newLeft < -3520) {
                            list.css("left", -320 + 'px');
                        }
                    }
                };
                go();
            }
            left.click(function() {
                if (!moved) {
                    move(160);
                };
            })
            right.click(function() {
                if (!moved) {
                    move(-160);
                };
            })

            box.mousemove(function() {
                left.fadeIn(500);
                right.fadeIn(500);
            });
            box.mouseleave(function() {
                left.fadeOut(500);
                right.fadeOut(500);
            })
        })
    }
});
