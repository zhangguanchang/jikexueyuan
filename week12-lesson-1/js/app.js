// 单例模式
$(document).ready(function() {
    var manyHover = {
        init: function() {
            var me = this;
            me.render();
            me.bind();
        },
        render: function() {
            var me = this;
            me.btn = $(".li-pro");
        },
        bind: function() {
            var me = this;
            me.btn.hover(function() {
                $(".more-product").slideDown()
            }, function() {
                $(".more-product").slideUp()
            })
        }
    }
    var showatten = {
        init: function() {
            this.render();
            this.bind();
        },
        render: function() {
            this.btn = $(".menu-span-1");
        },
        bind: function() {
            var me = this;
            me.btn.click(function() {
                $(".span-attention").css('display', 'block');
                $(".span-recommend").css('display', 'none');
                $(".menu-span-2").removeClass("lbtm-span-click");
            })
        }
    }
    var showrecom = {
        init: function() {
            this.render();
            this.bind();
        },
        render: function() {
            this.btn = $(".menu-span-2");
        },
        bind: function() {
            var me = this;
            me.btn.click(function() {
                $(".span-attention").css('display', 'none');
                $(".span-recommend").css('display', 'block');
                $(".menu-span-1").removeClass("lbtm-span-click");
            })
        }
    }
    var hoverInput = {
        init: function() {
            this.render();
            this.bind();
        },
        render: function() {
            var me = this;
            me.ho = $("#two-input");
        },
        bind: function() {
            var a = 0;
            var me = this;
            me.ho.focus(function() {
                a = 1;
                me.ho.css("border", "1px solid #3385FF")
            });
            me.ho.blur(function() {
                a = 0;
                me.ho.css("border", "1px solid #ddd")
            });
            me.ho.hover(function() {
                if (a == 1) {

                } else {
                    me.ho.css("border", "1px solid #c5c1c1");
                }
            }, function() {
                if (a == 1) {
                    me.ho.css("border", "1px solid #3385FF");
                } else {
                    me.ho.css("border", "1px solid #ddd");
                }
            })
        }
    }
    hoverInput.init();
    showrecom.init();
    showatten.init();
    manyHover.init();

})
