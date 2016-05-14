get '/login' do
  if logged_in?
    redirect '/'
  else
    erb :'/sessions/login'
  end
end

post '/login' do
  @user = User.find_by( email: params[ :user ][ :email ] )
  if @user && @user.authenticate( params[ :user ][ :password ] )
      session[ :id ] = @user.id
      redirect '/'
  elsif @user
    @errors = "You have entered either an incorrect username or password. Please try again!"
    erb :'/sessions/login'
  else
    erb :'/sessions/register'
  end
end

get '/register' do
  if logged_in?
    redirect '/'
  else
    erb :'/sessions/register'
  end
end

post '/register' do
  new_user = User.new( params[:user] )
  if new_user.save
    session[ :id ] = new_user.id
    redirect '/'
  else
    @errors = new_user.errors.full_messages
    erb :'/sessions/register'
  end
end

get '/logout' do
  session.clear
  redirect '/'
end
