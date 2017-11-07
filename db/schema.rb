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

ActiveRecord::Schema.define(version: 20171102005554) do

  create_table "children", force: :cascade do |t|
    t.string "name"
    t.string "dob"
    t.string "program"
    t.string "time"
    t.boolean "monday"
    t.boolean "tuesday"
    t.boolean "wednesday"
    t.boolean "thursday"
    t.boolean "friday"
    t.text "comments"
    t.boolean "w1"
    t.boolean "w2"
    t.boolean "w3"
    t.boolean "w4"
    t.boolean "w5"
    t.boolean "w6"
    t.boolean "w7"
    t.boolean "w8"
    t.integer "parent_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "parents", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "phone"
    t.string "cell"
    t.string "email"
    t.string "email2"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
