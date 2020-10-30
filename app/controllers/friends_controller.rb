class FriendsController < ApplicationController

  get '/friends' do
    if !logged_in?
      redirect '/login'
    else
      @tweets = Tweet.all
      erb :'friends/index'
    end
  end

  post '/friends' do
   if logged_in?
     if params[:bbt] == ""
       redirect to 'friends/new'
     else
       @bbt = current_user.bbt.build(bbt: params[:bbt])
       @bbt.save
       if @bbt.save
         redirect to "/bbt/#{@bbt.id}"
       else
         redirect '/bbt/new'
       end
     end
   else
     redirect "/login"
   end
 end
end
