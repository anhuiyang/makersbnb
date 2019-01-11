class Spaces < ActiveRecord::Migration[5.2]
  def change
    create_table :space do |t|
      t.string :name
      t.string :description
      t.float :rate
    end
  end
end
