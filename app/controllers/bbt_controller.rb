class BbtsController < ApplicationController
  get '/bbts' do
    if !logged_in?
      redirect '/login'
    else
      @btts = Bbt.all
      erb :'btts/index'
    end
  end

  post '/bbts' do
   if logged_in?
     if params[:bbt] == ""
       # redirect to 'bbt/new'
       "Hello"
     else
       @bbt = current_user.bbt.build(bbt: params[:bbt])
       @bbt.save
       if @bbt.save
         redirect to "/bbts/#{@bbt.id}"
       else
         redirect '/bbts/new'
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
      erb :"btts/new"
    end
  end

  get '/bbts/:id' do
    if logged_in?
      @bbt = Bbt.find(params[:id])
      erb :'btts/show'
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
