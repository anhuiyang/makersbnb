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
    session[:space] = Spaces.create(name: params[:name], description: params[:description], rate: params[:price])
    redirect '/property/:id'
  end

  get '/properties' do
    @spaces = Spaces.all
    erb :properties
  end

  post '/properties/:id' do
    session[:space] = Spaces.find(params[:id])
    redirect '/property/:id'
  end

  get '/property/:id' do
    @id = session[:space].id
    @space = Spaces.find(@id)
    erb :property
  end

  get '/request' do
    erb :request
  end
end
