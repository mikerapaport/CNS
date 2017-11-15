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

ActiveRecord::Schema.define(version: 20171103170659) do

  create_table "children", force: :cascade do |t|
    t.string "name"
    t.string "dob"
    t.string "status"
    t.string "program"
    t.string "time"
    t.integer "week"
    t.boolean "mtwrf"
    t.boolean "mwf"
    t.boolean "tr"
    t.boolean "m2"
    t.boolean "m3"
    t.boolean "t2"
    t.boolean "t3"
    t.boolean "w2"
    t.boolean "w3"
    t.boolean "r2"
    t.boolean "r3"
    t.boolean "f2"
    t.boolean "f3"
    t.boolean "full"
    t.boolean "half_morning"
    t.boolean "half_afternoon"
    t.text "comments"
    t.boolean "attending_rec"
    t.boolean "w1"
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
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.integer "role"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
