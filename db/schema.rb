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

ActiveRecord::Schema.define(version: 20160726225538) do

  create_table "clients", force: :cascade do |t|
    t.string   "client_name"
    t.string   "business_name"
    t.string   "business_type"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "bookkeeping_schedule"
    t.string   "payroll_schedule"
    t.integer  "tax_projected"
    t.integer  "number_of_returns"
    t.string   "street_address"
    t.string   "street_address_2"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "primary_email"
    t.string   "secondary_email"
    t.string   "primary_phone"
    t.string   "secondary_phone"
  end

  create_table "notes", force: :cascade do |t|
    t.date     "note_date"
    t.string   "note_owner"
    t.text     "note_contents"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "task_id"
  end

  create_table "tasks", force: :cascade do |t|
    t.string   "task_name"
    t.string   "task_frequency"
    t.date     "task_due"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "client_name"
    t.string   "client_id"
    t.string   "integer"
    t.string   "task_status"
    t.string   "task_assigned_to"
  end

end
