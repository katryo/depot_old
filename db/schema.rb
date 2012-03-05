# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

<<<<<<< HEAD
ActiveRecord::Schema.define(:version => 20110711000006) do

  create_table "carts", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
=======
ActiveRecord::Schema.define(:version => 20110711000004) do

  create_table "carts", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
>>>>>>> 570b355f06b7113634febe12746ca231cc0e3928
  end

  create_table "line_items", :force => true do |t|
    t.integer  "product_id"
    t.integer  "cart_id"
<<<<<<< HEAD
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
    t.integer  "quantity",   :default => 1
    t.decimal  "price"
=======
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "quantity",   :default => 1
>>>>>>> 570b355f06b7113634febe12746ca231cc0e3928
  end

  create_table "products", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "image_url"
    t.decimal  "price",       :precision => 8, :scale => 2
<<<<<<< HEAD
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
=======
    t.datetime "created_at"
    t.datetime "updated_at"
>>>>>>> 570b355f06b7113634febe12746ca231cc0e3928
  end

end
