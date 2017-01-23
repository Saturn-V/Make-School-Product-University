var title = document.getElementById('title');

var submit = document.getElementById('submit');

submit.addEventListener('click', function() {
    var bill = document.getElementById('bill');
    var percentage = document.getElementById('percentage');

    document.getElementById('tip').innerHTML = percentage * bill / 100;
    // tip = (percentage * bill / 100);
});
