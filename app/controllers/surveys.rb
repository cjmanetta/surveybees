
get '/users/:id/surveys/new' do
  erb :'/surveys/create_survey'
end

post '/users/:id/surveys/create' do
  p params
  @survey = Survey.create(name: params[:name], author_id: params[:id], expiration: params[:expiration])
  p @survey
  if request.xhr?
    (erb :'/surveys/_create_survey', layout: false).to_json
  else
    redirect '/'
  end
end
