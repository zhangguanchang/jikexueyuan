function text() {

    var x = document.getElementById("scores").value;
    var score = parseInt(x);
    if (score <= 100 && score > 90) {
        alert("您儿子为一等生");
    } else if (score <= 90 && score > 80) {
        alert("您儿子为二等生");
    } else if (score <= 80 && score > 70) {
        alert("您儿子为三等生");
    } else if (score <= 70 && score > 60) {
        alert("您儿子为四等生");
    } else if (score <= 60 && score > 50) {
        alert("您儿子为五等生");
    } else if (score <= 50 && score > 40) {
        alert("您儿子为六等生");
    } else if (score <= 40 && score > 30) {
        alert("您儿子为七等生");
    } else if (score <= 30 && score > 20) {
        alert("您儿子为八等生");
    } else if (score <= 20 && score > 10) {
        alert("您儿子为九等生");
    } else if (score <= 10 && score > 0) {
        alert("您儿子为十等生");
    } else {
        alert("请输入1~100");
    }
}
