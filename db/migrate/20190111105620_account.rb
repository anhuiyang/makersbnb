class Account < ActiveRecord::Migration[5.2]
    def change
      create_table :account do |t|
        t.string :email
        t.string :password
      end
    end
  end
