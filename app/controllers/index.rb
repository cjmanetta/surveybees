get '/' do
  erb :index
end

post '/users' do
  p params
  @user = User.new(params[:user])
  if @user.save
    session[:id] = @user.id
    erb :"users/dashboard"
  else
    redirect '/'
  end
end

post '/login' do
  @user = User.authenticate(params[:username], params[:password])
  if @user
    session[:id] = @user.id
    erb :"users/dashboard"
  end
end

get '/logout' do
  session[:user_id] = nil
  redirect '/'
end

get '/login' do
  erb :"users/_login"
end
