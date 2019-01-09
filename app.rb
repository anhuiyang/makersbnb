require 'sinatra'
require 'sinatra/activerecord'

class App < Sinatra::Base

  get '/' do
    "Hello world!"
  end

end
