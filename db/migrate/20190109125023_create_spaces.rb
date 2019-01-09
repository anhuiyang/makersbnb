class CreateSpaces < ActiveRecord::Migration[5.2]
  def change
    create_table :spaces do |space|
      space.string :name
    end
  end
end
