get '/' do
  if logged_in?
    erb :"users/dashboard"
  else
    erb :index
  end
end

get '/users/:id' do
  @surveys = Survey.all
  @your_surveys = Survey.where(author_id: current_user.id)
  erb :"users/dashboard"
end


post '/users' do
  @user = User.new(params[:user])
  if @user.save
    session[:id] = @user.id
    redirect "/users/#{@user.id}"
  else
    redirect '/'
  end
end

post '/login' do
  @user = User.authenticate(params[:username], params[:password])
  if @user
    session[:id] = @user.id
    redirect "/users/#{@user.id}"
  else
    p "Please enter a valid username and password"
    redirect "/"
  end
end

get '/logout' do
  session[:id] = nil
  redirect '/'
end

get '/login' do
  erb :"users/_login"
end
