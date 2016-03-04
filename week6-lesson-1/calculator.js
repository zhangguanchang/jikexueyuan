var objscreen = document.getElementById("screen");

function getNum(num) {
    objscreen.value += num;
}

function getresult() {
    objscreen.value = eval(objscreen.value);
}

function sin() {
    objscreen.value = Math.sin(objscreen.value * Math.PI / 180.0);
}

function cos() {
    objscreen.value = Math.cos(objscreen.value * Math.PI / 180.0);
}

function tan() {
    objscreen.value = Math.tan(objscreen.value * Math.PI / 180.0);
}
