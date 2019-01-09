require 'sinatra'
require 'sinatra/activerecord'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/log_in' do
    erb :login
  end

  post '/log_in' do
    'Hi user@email.com'
  end
end
