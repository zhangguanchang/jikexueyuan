define(function(require, exports, module) {
    exports.doSomething = function() {

        $(window).on("load", function() {
            var left = $(".collegesBtnleft");
            var right = $(".collegesBtnright");
            var list = $(".collegeList");
            var box = $(".college");
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
                        if (newLeft > -137) {
                            list.css("left", -1507 + 'px');
                        }
                        if (newLeft < -1507) {
                            list.css("left", -137 + 'px');
                        }
                    }
                };
                go();
            }
            left.click(function() {
                if (!moved) {
                    move(137);
                };
            })
            right.click(function() {
                if (!moved) {
                    move(-137);
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
