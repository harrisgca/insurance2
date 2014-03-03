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

ActiveRecord::Schema.define(version: 20140303012556) do

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
  end

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

end
