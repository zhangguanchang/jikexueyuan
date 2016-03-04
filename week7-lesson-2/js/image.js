define(function(require, exports, module) {
    exports.doSomething = function() {
        $(window).on("load", function() {
            var list = $(".papertopList");
            var left = $(".papertopBtnleft");
            var right = $(".papertopBtnright");
            var btns = $(".papertopBtns>span");
            var index = 1;
            var moved = false;
            var timer;

            function gbtn() {
                for (var i = 0; i < btns.length; i++) {
                    if (btns[i].className == "greenbtn") {
                        btns[i].className = "";
                        break;
                    }
                };
                btns[index - 1].className = "greenbtn";
            }

            function move(num) {
                moved = true;
                var newLeft = parseInt(list.css("left")) + num; /*常用变量做存储使用*/
                var time = 600; /*位移总时间*/
                var interval = 10; /*位移间隔时间*/
                var speed = num / (time / interval); /*每次位移量*/
                //绑定点击事件
                function go() {
                    //递归实现动画功能
                    if ((speed < 0 && parseInt(list.css("left")) > newLeft) || (speed > 0 && parseInt(list.css("left")) < newLeft)) {
                        list.css("left", parseInt(list.css("left")) + speed + 'px');
                        setTimeout(go, interval);
                    } else {
                        moved = false;
                        list.css("left", newLeft + 'px');
                        //判断是否滚动到附属图上
                        if (newLeft > -568) {
                            list.css("left", -2840 + 'px');
                        }
                        if (newLeft < -2840) {
                            list.css("left", -568 + 'px');
                        }
                    }
                };
                go();
            }

            function play() {
                timer = setInterval(function() {
                    right.click();
                }, 3000);
            }

            function stoproll() {
                timer = clearInterval(timer);
            }
            //点击时向左移动568像素
            left.click(function() {
                    if (index == 1) {
                        index = 5
                    } else {
                        index -= 1;
                    }
                    gbtn();
                    if (!moved) {
                        move(568);
                    };
                })
                //点击时向右移动568像素
            right.click(function() {
                if (index == 5) {
                    index = 1;
                } else {
                    index += 1;
                }
                gbtn();
                if (!moved) {
                    move(-568);
                };
            })
            for (var i = 0; i < btns.length; i++) {
                btns[i].onclick = function() {
                    console.log(myIndex)
                    if (this.className == "greenbtn") {
                        return;
                    }
                    var myIndex = parseInt(this.getAttribute('index'));
                    var offset = -568 * (myIndex - index);
                    if (!moved) {
                        move(offset);
                    }
                    index = myIndex;
                    gbtn()
                }
            }
            // 自动轮播
            $(".papertop-image")[0].onmouseover = stoproll;
            $(".papertop-image")[0].onmouseout = play;
            play()
        })
    }
});
