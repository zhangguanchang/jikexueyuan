function find() {
    var str = 'axbdmakmpja';
    var y = 0;
    var x;
    for (i = 0; i < str.length; i++) {
        var z = str[i];
        var t = str.split(z).length - 1;
        if (y < t) {
            y = t;
            x = i;
            document.write("出现次数最多的字母为" + str.charAt(x) + "共" + y + "次")
        };
        if (str.charAt(x) == str[i]) {
            document.write("第" + (i + 1) + "个")
        };
    };
}
