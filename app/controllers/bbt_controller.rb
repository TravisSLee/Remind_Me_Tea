class BbtsController < ApplicationController
  get '/bbts' do
    if !logged_in?
      redirect '/login'
    else
      @btts = Bbt.all
      erb :'friends/index'
    end
  end

  post '/bbts' do
   if logged_in?
     if params[:bbt] == ""
       redirect to 'bbt/new'
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

 get '/bbts/new' do
    if !logged_in?
      redirect '/login'
    else
      erb :"tweets/new"
    end
  end

  get '/bbts/:id' do
    if logged_in?
      @bbt = Bbt.find(params[:id])
      erb :'btt/show'
    else
      redirect to '/login'
    end
  end

  get '/btts/:id/edit' do
    if logged_in?
      @bbt = Bbt.find(params[:id])
      erb :'bbts/edit'
    else
      redirect "/login"
    end
  end
end
