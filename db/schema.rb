# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.
ActiveRecord::Schema.define(version: 2019_01_11_105620) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'
  create_table 'account', force: :cascade do |t|
    t.string 'email'
    t.string 'password'
  end
  create_table 'space', force: :cascade do |t|
    t.string 'name'
    t.string 'description'
    t.float 'rate'
  end
<<<<<<< HEAD

  create_table "user", force: :cascade do |t|
    t.string "email"
    t.string "password"
  end

=======
>>>>>>> 18c2f11b6c8ec7326a39e4510d89163d15f563a1
end
