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

ActiveRecord::Schema.define(:version => 20141213113323) do

  create_table "apeals", :force => true do |t|
    t.string   "who"
    t.integer  "user_id"
    t.string   "phone"
    t.text     "text"
    t.text     "result"
    t.string   "term"
    t.string   "street"
    t.string   "house"
    t.string   "korpus"
    t.string   "how"
    t.boolean  "finish",     :default => false
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  create_table "articles", :force => true do |t|
    t.string   "name"
    t.text     "text"
    t.integer  "user_id"
    t.string   "image"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "equip_houses", :force => true do |t|
    t.string   "name"
    t.string   "equipname"
    t.integer  "idequip"
    t.string   "street"
    t.string   "housenumber"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "ctp"
  end

  create_table "equip_values", :force => true do |t|
    t.integer  "equip_id"
    t.float    "t1",         :default => 0.0
    t.float    "t2",         :default => 0.0
    t.float    "t3",         :default => 0.0
    t.float    "t4",         :default => 0.0
    t.float    "w1",         :default => 0.0
    t.float    "w2",         :default => 0.0
    t.float    "w3",         :default => 0.0
    t.float    "w4",         :default => 0.0
    t.float    "m1",         :default => 0.0
    t.float    "m2",         :default => 0.0
    t.float    "m3",         :default => 0.0
    t.float    "m4",         :default => 0.0
    t.datetime "date"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  create_table "pages", :force => true do |t|
    t.string   "name"
    t.text     "text"
    t.string   "file"
    t.integer  "category_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "rails_admin_histories", :force => true do |t|
    t.text     "message"
    t.string   "username"
    t.integer  "item"
    t.string   "table"
    t.integer  "month",      :limit => 2
    t.integer  "year",       :limit => 8
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  add_index "rails_admin_histories", ["item", "table", "month", "year"], :name => "index_rails_admin_histories"

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "role"
    t.string   "surname"
    t.string   "secondname"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,  :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "phone"
    t.string   "avatar"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
