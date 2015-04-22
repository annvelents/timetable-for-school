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

ActiveRecord::Schema.define(version: 20150419173431) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "groups", force: :cascade do |t|
    t.string   "name"
    t.integer  "count_of_members"
    t.string   "teacher"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "hours_at_weeks", force: :cascade do |t|
    t.integer  "count_of_hours"
    t.integer  "group_id"
    t.integer  "subject_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "hours_at_weeks", ["group_id"], name: "index_hours_at_weeks_on_group_id", using: :btree
  add_index "hours_at_weeks", ["subject_id"], name: "index_hours_at_weeks_on_subject_id", using: :btree

  create_table "subjects", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teachers", force: :cascade do |t|
    t.string   "name"
    t.integer  "working_hours"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

end
