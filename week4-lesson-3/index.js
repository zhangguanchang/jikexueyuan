var settingBtn = document.getElementById("settingBtn");
var settingContent = document.getElementById("setting");
var timer1 = null;
var moreBtn = document.getElementById("moreBtn");
var moreContent = document.getElementById("more");
var timer2 = null;
settingBtn.onmouseover = settingContent.onmousemove = function() {
    clearTimeout(timer1);
    settingContent.style.display = "block";
};
settingBtn.onmouseleave = settingContent.onmouseout = function() {
    timer1 = setTimeout(function() {
        settingContent.style.display = "none";
    }, 200);
};

moreBtn.onmousemove = moreContent.onmousemove = function() {
    clearTimeout(timer2);
    moreContent.style.display = "block";
};
moreBtn.onmouseleave = moreContent.onmouseout = function() {
    timer2 = setTimeout(function() {
        moreContent.style.display = "none";
    }, 200);
};
