require 'sinatra'
require 'sinatra/activerecord'
require './lib/account'

set :database_file, 'config/database.yml'

class App < Sinatra::Base
  enable :sessions
  set :method_override, true

  get '/' do
    erb :index
  end

  get '/signup' do
    erb :signup
  end

  post '/signup' do
    session[:user] = Account.create ({:email => params[:email], :password => params[:password]})
    redirect '/profile/:id'
  end

  get '/log_in' do
    erb :login
  end

  post '/log_in' do
    session[:email] = params[:email]
    session[:user] = Account.find_by(email: session[:email])
    p session[:user]
    redirect '/profile/:id'
  end

  get '/profile/:id' do
    @id = session[:user].id
    @account = Account.find(@id)
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
