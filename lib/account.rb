require 'sinatra'
require 'sinatra/activerecord'

class Account < ActiveRecord::Base
  self.table_name = "account"

    

    validates :email, :presence => true
    validates :email, :uniqueness => { :message => "This email already exists" }
    validates :password, :presence => true

end
