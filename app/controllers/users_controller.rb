class UsersController < ApplicationController
  get '/signup' do
    if !logged_in?
      erb :'/users/signup'
    else
      redirect to '/bbts'
    end
  end
  
  post '/signup' do
    if params[:password] == ""
     redirect '/signup'
    else
     @user = User.create(username: params[:username], email: params[:email], password: params[:password])
      if @user.save
        session[:user_id] = @user.id
        redirect '/bbts'
      else
        redirect '/signup'
      end
    end
  end
end
