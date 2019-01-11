require 'sinatra'
require 'sinatra/activerecord'
require './models/space.rb'

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
    session[:space] = Spaces.create(name: params[:name], description: params[:description], rate: params[:price])
    redirect '/property/:id'
  end

  get '/properties' do
    @spaces = Spaces.all
    erb :properties
  end

  post '/properties/:id' do
    p params[:id]
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
