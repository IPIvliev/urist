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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160203094232) do

  create_table "apeals", force: :cascade do |t|
    t.string   "who",        limit: 255
    t.integer  "user_id",    limit: 4
    t.string   "phone",      limit: 255
    t.text     "text",       limit: 65535
    t.text     "result",     limit: 65535
    t.text     "term",       limit: 65535
    t.string   "street",     limit: 255
    t.string   "house",      limit: 255
    t.string   "korpus",     limit: 255
    t.string   "how",        limit: 255
    t.boolean  "finish",     limit: 1,     default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "articles", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.text     "text",       limit: 65535
    t.integer  "user_id",    limit: 4
    t.string   "image",      limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "equip_houses", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "equipname",   limit: 255
    t.integer  "idequip",     limit: 4
    t.string   "street",      limit: 255
    t.string   "housenumber", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "ctp",         limit: 255
  end

  create_table "equip_values", force: :cascade do |t|
    t.integer  "equip_id",   limit: 4
    t.float    "t1",         limit: 24, default: 0.0
    t.float    "t2",         limit: 24, default: 0.0
    t.float    "t3",         limit: 24, default: 0.0
    t.float    "t4",         limit: 24, default: 0.0
    t.float    "w1",         limit: 24, default: 0.0
    t.float    "w2",         limit: 24, default: 0.0
    t.float    "w3",         limit: 24, default: 0.0
    t.float    "w4",         limit: 24, default: 0.0
    t.float    "m1",         limit: 24, default: 0.0
    t.float    "m2",         limit: 24, default: 0.0
    t.float    "m3",         limit: 24, default: 0.0
    t.float    "m4",         limit: 24, default: 0.0
    t.datetime "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pages", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.text     "text",        limit: 65535
    t.string   "file",        limit: 255
    t.integer  "category_id", limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rails_admin_histories", force: :cascade do |t|
    t.text     "message",    limit: 65535
    t.string   "username",   limit: 255
    t.integer  "item",       limit: 4
    t.string   "table",      limit: 255
    t.integer  "month",      limit: 2
    t.integer  "year",       limit: 8
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rails_admin_histories", ["item", "table", "month", "year"], name: "index_rails_admin_histories", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name",                   limit: 255
    t.string   "role",                   limit: 255
    t.string   "surname",                limit: 255
    t.string   "secondname",             limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.string   "phone",                  limit: 255
    t.string   "avatar",                 limit: 255
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
