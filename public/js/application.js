$(document).ready(function() {
  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them

  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()
  bindEvents();

});


function bindEvents() {

  newSurveyListener();



}



function newSurveyListener() {
  $('#create-survey').on('submit', function(event) {
      event.preventDefault();

      var path = $("#create-survey").attr('action');
      var method = $("#create-survey").attr('method');
      var surveyData = $(this).serialize();
      console.log(path + " | " + method + " | " + surveyData);

      var request = $.ajax({
        url: path,
        type: method,
        data: surveyData,
        dataType: "JSON"
      });

      request.done(function(server_data){
        $("#survey-creator").remove();
        $("#survey-main").append(server_data);
      });

      request.fail(function(server_data){
        console.log("fail");
      });
    });
}

function questionListener() {
  $('#add-question').on('submit' function(event) {
    event.preventDefault();
    console.log('adding a question now using ajax')

      var path = $("#add-question").attr('action');
      var method = $("#add-question").attr('method');
      var surveyData = $('question-text').val();

      var request = $.ajax({
        url: path,
        type: method,
        data: surveyData,
        dataType: "JSON"
      });

      request.done(function(response){
        $("#add-question").remove();
        $("#survey-main").append(response); // .questions-list
      });

      request.fail(function(response){
        console.log("fail");
      });
    });
  });







}
