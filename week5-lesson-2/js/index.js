function cal() {
    var a = document.getElementById("first").value;
    var b = document.getElementById("second").value;
    var c = document.getElementById("Algorithm").value;
    if (c === "Add") {
        result = parseFloat(a) + parseFloat(b);
    } else if (c === "Subtract") {
        result = parseFloat(a) - parseFloat(b);
    } else if (c === "Multiply") {
        result = parseFloat(a) * parseFloat(b);
    } else if (c === "Divide") {
        result = parseFloat(a) / parseFloat(b);
    }
    document.getElementById("result").value = result;
}
