$("#login_button").click(function(){
    $("#modal").show();
});

$("#signup").on("click", function(e) {
    event.preventDefault();
    var url = '/users'
    var superRequest = $.ajax({
        type: "post",
        url: url,
        data: formData
    })
    superRequest.done({

    })
})
