
get '/users/:id/surveys/new' do
  erb :'/surveys/create_survey'
end

post '/users/:id/surveys/create' do
  @survey = Survey.create(name: params[:name], author_id: params[:id], expiration: params[:expiration])
  if request.xhr?
    (erb :'/surveys/_create_survey', layout: false).to_json
  else
    redirect '/'
  end
end

# post '/users/:id/surveys/question/create' do
#   @survey = Survey.create(name: params[:name], author_id: params[:id], expiration: params[:expiration])
#   if request.xhr?
#         (erb :'/surveys/_create_survey', layout: false).to_json
#   else

#   end
# end

post '/users/:id/question/create' do
  @question = Question.create(survey_id: params[:survey_id], text: params[:text])

  if request.xhr?
    (erb :'/surveys/_question', layout: false).to_json
  else
    redirect '/'
  end
end

get '/users/:id/surveys/:id' do
  @survey = Survey.find(params[:id])
  @questions = @survey.questions
  erb :take_survey
end
