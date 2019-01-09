require 'sinatra'
require 'sinatra/activerecord'

class App < Sinatra::Base
  enable :sessions

  get '/' do

    erb :index
  end

  get '/log_in' do
    erb :login
  end

  post '/log_in' do
    p params
    session[:email] = params[:email]
    redirect '/profile'
  end

  get '/profile' do
    @email = session[:email]
    erb :profile
  end
end
