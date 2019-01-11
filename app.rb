require 'sinatra'
require 'sinatra/activerecord'

class App < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  get '/signup' do
    erb :signup
  end

  post '/signup' do
    session[:email] = params[:email]
    session[:password] = params[:password]
    redirect '/profile'
  end

  get '/log_in' do
    erb :login
  end

  post '/log_in' do
    session[:email] = params[:email]
    redirect '/profile'
  end

  get '/profile' do
    @email = session[:email]
    @password = session[:password]
    erb :profile
  end

  get '/list' do
    erb :list
  end

  post '/list' do
    session[:name] = params[:name]
    session[:description] = params[:description]
    session[:price] = params[:price]
    redirect '/properties'
  end
  get '/properties' do
    @name = session[:name]
    @description = session[:description]
    @price = session[:price]
    erb :properties
  end

  get '/properties/:id' do
    @name = session[:name]
    @description = session[:description]
    @price = session[:price]
    # @property = Space.find(params[:id])
    erb :property
  end

  get '/request' do
    erb :request
  end
end
