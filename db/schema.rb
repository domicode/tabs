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

ActiveRecord::Schema.define(version: 20141023060550) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "table_tabs", force: true do |t|
    t.string   "location"
    t.datetime "date"
    t.string   "paid_by"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "table_id"
  end

  add_index "table_tabs", ["table_id"], name: "index_table_tabs_on_table_id", using: :btree

  create_table "tables", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "table_tabs_id"
  end

  add_index "tables", ["table_tabs_id"], name: "index_tables_on_table_tabs_id", using: :btree

  create_table "user_tables", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "table_tab_id"
    t.integer  "table_id"
  end

  add_index "user_tables", ["table_id"], name: "index_user_tables_on_table_id", using: :btree
  add_index "user_tables", ["table_tab_id"], name: "index_user_tables_on_table_tab_id", using: :btree
  add_index "user_tables", ["user_id"], name: "index_user_tables_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email",                           null: false
    t.string   "crypted_password",                null: false
    t.string   "salt",                            null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_me_token"
    t.datetime "remember_me_token_expires_at"
    t.string   "reset_password_token"
    t.datetime "reset_password_token_expires_at"
    t.datetime "reset_password_email_sent_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["remember_me_token"], name: "index_users_on_remember_me_token", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", using: :btree

end
