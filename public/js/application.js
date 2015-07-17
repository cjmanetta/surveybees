$(document).ready(function() {
  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them

  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()
  bindEvents();

});


function bindEvents() {
  $('#create-survey').on('submit', function(event) {
    var surveyName = $('#survey-name').val();
    console.log(surveyName)
    event.preventDefault();

    var path = $("#create-survey").attr('action');
    var method = $("#create-survey").attr('method');
    var surveyData = $(this).serialize();
    console.log(path + " | " + method + " | " + surveyData);

    var request = $.ajax({
      url: this.path,
      type: this.method,
      data: surveyData,
      dataType: "JSON"
    })

    request.done(function(server_data){
      console.log("success");
    }

    request.fail(function(server_data){
      console.log("fail" + errorThrown);
    }

  });

  // $('#add-question').on('click' function(event) {
  //   event.preventDefault();
  //   console.log('adding a question now using ajax')
  // });

}
