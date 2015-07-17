$(document).ready(function() {
    bindEvents();
});


$("#login_button").click(function(){
    $("#modal").show();
});

function bindEvents() {
    $("#signup").on("submit", function(e) {
        event.preventDefault();
        var url = '/users'
        var superRequest = $.ajax({
            type: "post",
            url: url,
            data: $(this).serialize(),
        })
        superRequest.done({

        })
    })
};
