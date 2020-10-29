class UsersController < ApplicationController
  get "/" do
    # @user = current_user if logged_in?
   erb :index
  end

  # get '/signup' do
  #   if !logged_in?
  #     erb :'/users/signup'
  #   else
  #     redirect to '/friends'
  #   end
  # end
  #
  # post '/signup' do
  #   if params[:username] == "" || params[:email] == "" || params[:password] == ""
  #    redirect '/signup'
  #   else
  #    @user = User.create(username: params[:username], email: params[:email], password: params[:password])
  #     session[:user_id] = @user.id
  #     redirect '/friends'
  #   end
  #  end
  #
  # get '/login' do
  #   if !logged_in?
  #     erb :'users/login'
  #   else
  #     redirect '/friends'
  #   end
  # end
  #
  # post '/login' do
  #   @user = User.find_by(:username => params[:username])
  #   if @user && @user.authenticate(params[:password])
  #     session[:user_id] = @user.id
  #     redirect '/'
  #   else
  #     redirect '/signup'
  #   end
  # end
  #
  # get '/logout' do
  #   if logged_in?
  #     session.clear
  #     redirect '/login'
  #   else
  #     redirect '/'
  #   end
  # end

end
