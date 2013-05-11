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

ActiveRecord::Schema.define(:version => 20130510143737) do

  create_table "clients", :force => true do |t|
    t.string   "first_name",      :limit => 50,                  :null => false
    t.string   "last_name",       :limit => 50,                  :null => false
    t.string   "email",           :limit => 100, :default => "", :null => false
    t.string   "username",        :limit => 100,                 :null => false
    t.string   "hashed_password", :limit => 50,                  :null => false
    t.datetime "created_at",                                     :null => false
    t.datetime "updated_at",                                     :null => false
  end

  create_table "products", :force => true do |t|
    t.string   "name",          :limit => 50
    t.text     "description"
    t.integer  "quantity"
    t.decimal  "selling_price",               :precision => 10, :scale => 0
    t.decimal  "buying_price",                :precision => 10, :scale => 0
    t.string   "category"
    t.datetime "created_at",                                                 :null => false
    t.datetime "updated_at",                                                 :null => false
  end

end
