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

ActiveRecord::Schema.define(version: 20161024213646) do

  create_table "bills", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bills_politicians", force: :cascade do |t|
    t.integer "bill_id"
    t.integer "politician_id"
    t.index ["bill_id"], name: "index_bills_politicians_on_bill_id"
    t.index ["politician_id"], name: "index_bills_politicians_on_politician_id"
  end

  create_table "events", force: :cascade do |t|
    t.string   "title"
    t.integer  "capacity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "politicians", force: :cascade do |t|
    t.string   "name"
    t.string   "party"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "staff_people", force: :cascade do |t|
    t.string   "name"
    t.integer  "politician_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["politician_id"], name: "index_staff_people_on_politician_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean  "is_admin"
  end

end
