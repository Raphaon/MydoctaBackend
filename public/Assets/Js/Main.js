$(function() {
    $.ajax({
        method: 'post',
        url: "http://localhost:8100",
        data: {
            zipcode: 'bien reçu'
        },
        success: function(result) {
            console.log(result);
        }
    });
});