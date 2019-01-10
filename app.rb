require 'sinatra'
require 'sinatra/activerecord'

class App < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index, :layout => :layout)
  end

  get '/signup' do
    erb(:signup, :layout => :layout)
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
    erb(:profile, :layout => :layout)
  end
end
