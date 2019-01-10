class User < ActiveRecord::Migration[5.2]
  def change
    create_table :user do |t|
      t.string :email
      t.string :password
    end
  end
end
