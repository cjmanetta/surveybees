
post '/users/:id/surveys/create' do
  p params
  @survey = Survey.new(name: params[:name], expiration: params[:expiration])

  if request.xhr?
    (erb :_create_survey, layout: false).to_json
  else

  end
end
