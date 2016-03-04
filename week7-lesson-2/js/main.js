define(function(require, exports, module) {
    // 通过 require 引入依赖
    require('jquery');
    // //在纵向导航栏进行标签切换
    var nav = require('nav');
    nav.doSomething();
    //在热门推荐一栏进行标签切换
    var recommend = require('recommend');
    recommend.doSomething();
    //对papaertop中的焦点图进行按钮切换设置
    var image = require('image')
    image.doSomething();
    // 对战略合作企业进行焦点轮播图播放
    var company = require('company');
    company.doSomething();
    // 对合作院校进行焦点轮播图播放
    var college = require('college');
    college.doSomething();
    // 对媒体报道进行焦点轮播图播放
    var media = require('media');
    media.doSomething();
});

