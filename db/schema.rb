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

ActiveRecord::Schema.define(version: 20160808153709) do

  create_table "employees", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.integer  "teams_id"
    t.integer  "progress_reports_id"
    t.integer  "owned_teams_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "employees", ["owned_teams_id"], name: "index_employees_on_owned_teams_id"
  add_index "employees", ["progress_reports_id"], name: "index_employees_on_progress_reports_id"
  add_index "employees", ["teams_id"], name: "index_employees_on_teams_id"

  create_table "progress_reports", force: :cascade do |t|
    t.text     "body"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "employee_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string   "name"
    t.integer  "members_id"
    t.integer  "progress_reports_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "teams", ["members_id"], name: "index_teams_on_members_id"
  add_index "teams", ["progress_reports_id"], name: "index_teams_on_progress_reports_id"

end
