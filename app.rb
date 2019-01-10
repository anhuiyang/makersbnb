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

  get '/properties' do
    erb :properties
  end

  get '/properties/:id' do
    @property_name = 'Jonestown'
    @property_info = 'A great place to take the kids, try the cool aid'
    #@property = Space.find(params[:id])
    erb :property
  end

  get '/request' do
    erb :request
  end
end
