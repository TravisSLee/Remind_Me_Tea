class SessionsController < ApplicationController
  get '/signup' do
    if !logged_in?
      erb :'/users/signup'
    else
      redirect to '/bbts'
    end
  end

  post '/signup' do
    if params[:username] == "" || params[:email] == "" || params[:password] == ""
     redirect '/signup'
    else
     @user = User.create(username: params[:username], email: params[:email], password: params[:password])
     @user.save
     session[:user_id] = @user.id
     # binding.pry
     redirect '/bbts'
    end
   end

   get '/logout' do
     if logged_in?
       session.clear
       redirect '/login'
     else
       redirect '/'
     end
   end
end
