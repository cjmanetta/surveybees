$(document).ready(function() {
  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them

  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()
  bindEvents();

});


function bindEvents() {

  newSurveyListener();
  firstQuestionListener();
  questionListener();


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
};

function firstQuestionListener() {

  $('.container').on('submit', '#survey-created', function(event){
  //$('.container').on('click', '#survey-created', function(event){
    event.preventDefault();
    console.log('adding a question now using ajax');

      var qpath = $("#survey-created").attr('action');
      var qmethod = $("#survey-created").attr('method');
      var qsurveyData = $(this).serialize();
      console.log(qpath + " | " + qmethod + " | " + qsurveyData);

      var request = $.ajax({
        url: qpath,
        type: qmethod,
        data: qsurveyData,
        dataType: "JSON"
      });

      request.done(function(response){
        console.log("success");
        $("#survey-created").remove();
        $(".container").append(response); // #survey-main .questions-list
      });

      request.fail(function(response){
        console.log("fail");
      });
  });
};

function questionListener() {

  $('.container').on('submit', '#add-question', function(event){
  //$('.container').on('click', '#add-question', function(event){
    event.preventDefault();
    console.log('adding a question now using ajax');

      var qpath = $("#add-question").attr('action');
      var qmethod = $("#add-question").attr('method');
      var qsurveyData = $(this).serialize();
      console.log(qpath + " | " + qmethod + " | " + qsurveyData);

      var request = $.ajax({
        url: qpath,
        type: qmethod,
        data: qsurveyData,
        dataType: "JSON"
      });

      request.done(function(response){
        console.log("success");
        $("#add-question").remove();
        $(".container").append(response); // #survey-main .questions-list
      });

      request.fail(function(response){
        console.log("fail");
      });
  });
};
