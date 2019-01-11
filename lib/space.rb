require 'sinatra'
require 'sinatra/activerecord'

<<<<<<< HEAD:models/space.rb
class Spaces < ActiveRecord::Base
  self.table_name = "space"
  # attr_accessor :name, :description, :rate
  validates :name, :uniqueness => true

=======
class Space < ActiveRecord::Base
>>>>>>> 2dd6b1391271af518508b099e06b9db7bcad89b6:lib/space.rb
end
