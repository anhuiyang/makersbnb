require 'sinatra'
require 'sinatra/activerecord'

class Spaces < ActiveRecord::Base
  self.table_name = "space"
  # attr_accessor :name, :description, :rate
  validates :name, :uniqueness => true

end
