class BbtsController < ApplicationController
  get '/bbts' do
    # binding.pry
    if !logged_in?
      redirect '/login'
    else
      @bbts = current_user.bbts
      erb :'bbts/index'
    end
  end

  post '/bbts' do
   if logged_in?
     @bbt = current_user.bbts.build(name: params[:name], bubble: params[:bubble], brand: params[:brand], sugar_amount: params[:sugar_amount], size: params[:size], temp: params[:temp])
     @bbt.save
     if @bbt.save
       redirect to "/bbts/#{@bbt.id}"
     else
       redirect '/bbts/new'
     end
   else
     redirect "/login"
   end
  end

  get '/bbts/new' do
    if !logged_in?
      redirect '/login'
    else
      erb :"bbts/new"
    end
  end

  get '/bbts/:id' do
    if logged_in?
      @bbt = current_user.bbts.find(params[:id])
      if @bbt
        erb :'bbts/show'
      else
        redirect '/bbts'
      end
    else
      redirect to '/login'
    end
  end

  get '/bbts/:id/edit' do
    if logged_in?
      @bbt = current_user.bbts.find_by_id(params[:id])
      if @bbt
        erb :'bbts/edit'
      else
        redirect '/bbts'
      end
    else
      redirect "/login"
    end
  end

  patch '/bbts/:id' do
    if logged_in?
      @bbt = current_user.bbts.find_by_id(params[:id])
      if @bbt
        if @bbt.update(bubble: params[:bubble], brand: params[:brand], sugar_amount: params[:sugar_amount], size: params[:size], temp: params[:temp])
          redirect to "/bbts/#{@bbt.id}"
        else
          redirect to "/bbts/#{@bbt.id}/edit"
        end
      else
        redirect '/bbts'
      end 
    else
      redirect '/login'
    end
  end

  delete '/bbts/:id' do
    if logged_in?
      @bbt = current_user.bbts.find(params[:id])
      if @bbt
        @bbt.destroy
        redirect to '/bbts'
      else
        redirect '/bbts'
      end
    else
      redirect to '/login'
    end
  end
end
