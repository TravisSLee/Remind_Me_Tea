class UserController < ApplicationController
  get "/" do
    @user = current_user if logged_in?
   erb :index
  end


end
