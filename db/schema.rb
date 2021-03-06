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

ActiveRecord::Schema.define(version: 2019_05_07_211654) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "images", force: :cascade do |t|
    t.string "url"
    t.integer "item_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", force: :cascade do |t|
    t.string "description"
    t.string "category"
    t.float "value"
    t.integer "rental_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "lng"
    t.float "lat"
    t.string "title"
    t.string "city"
    t.string "state"
  end

  create_table "own_items", force: :cascade do |t|
    t.integer "user_id"
    t.integer "item_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rentals", force: :cascade do |t|
    t.integer "user_id"
    t.integer "item_id"
    t.string "date_start"
    t.string "date_end"
    t.integer "days_rented"
    t.float "service_fee"
    t.float "total_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "subtotal"
    t.string "date_start_server"
    t.string "date_end_server"
    t.string "status"
    t.boolean "read"
  end

  create_table "requests", force: :cascade do |t|
    t.integer "requester_id"
    t.integer "receiver_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "accepted"
    t.integer "item_id"
    t.bigint "subtotal"
    t.string "date_start"
    t.string "date_end"
    t.integer "days_rented"
    t.float "service_fee"
    t.float "total_price"
    t.string "date_start_server"
    t.string "date_end_server"
    t.boolean "read"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "rating"
    t.text "comment"
    t.integer "user_id"
    t.integer "item_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.bigint "mobile"
    t.string "password_digest"
    t.string "location"
    t.integer "age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "funds"
    t.text "bio"
    t.string "img"
  end

end
