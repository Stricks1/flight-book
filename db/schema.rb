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

ActiveRecord::Schema.define(version: 2020_06_25_182145) do

  create_table "airports", force: :cascade do |t|
    t.text "name"
    t.text "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "flights", force: :cascade do |t|
    t.integer "plane_id"
    t.integer "dep_airport_id"
    t.integer "arr_airport_id"
    t.datetime "dep_date"
    t.datetime "arr_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["arr_airport_id"], name: "index_flights_on_arr_airport_id"
    t.index ["dep_airport_id"], name: "index_flights_on_dep_airport_id"
    t.index ["plane_id"], name: "index_flights_on_plane_id"
  end

  create_table "plane_books", force: :cascade do |t|
    t.integer "user_id"
    t.integer "flight_id"
    t.string "pass_name"
    t.string "pass_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["flight_id"], name: "index_plane_books_on_flight_id"
    t.index ["user_id"], name: "index_plane_books_on_user_id"
  end

  create_table "planes", force: :cascade do |t|
    t.text "name"
    t.text "model"
    t.date "aq_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "username"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
