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

ActiveRecord::Schema.define(version: 20140311034427) do

  create_table "drivers", force: true do |t|
    t.string   "first_name"
    t.string   "middle_init"
    t.string   "last_name"
    t.date     "birthdate"
    t.string   "relationship"
    t.string   "vehicle"
    t.string   "job_title"
    t.string   "job_addr"
    t.string   "job_city"
    t.string   "job_state"
    t.integer  "job_zip"
    t.integer  "policy_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "job_employer"
  end

  add_index "drivers", ["policy_id"], name: "index_drivers_on_policy_id"

  create_table "policies", force: true do |t|
    t.string   "mail_addr_1"
    t.string   "mail_addr_2"
    t.string   "mail_addr_city"
    t.string   "mail_addr_state"
    t.integer  "mail_addr_zip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  add_index "policies", ["user_id"], name: "index_policies_on_user_id"

  create_table "rails_admin_histories", force: true do |t|
    t.text     "message"
    t.string   "username"
    t.integer  "item"
    t.string   "table"
    t.integer  "month",      limit: 2
    t.integer  "year",       limit: 5
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rails_admin_histories", ["item", "table", "month", "year"], name: "index_rails_admin_histories"

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "vehicles", force: true do |t|
    t.integer  "year"
    t.string   "make"
    t.string   "model"
    t.string   "vin"
    t.string   "usage"
    t.integer  "usage_miles"
    t.integer  "ann_miles"
    t.string   "grg_addr_1"
    t.string   "grg_addr_2"
    t.string   "grg_city"
    t.string   "grg_state"
    t.integer  "grg_zip"
    t.integer  "policy_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "vehicles", ["policy_id"], name: "index_vehicles_on_policy_id"

  create_table "views", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "views", ["email"], name: "index_views_on_email", unique: true
  add_index "views", ["reset_password_token"], name: "index_views_on_reset_password_token", unique: true

end
