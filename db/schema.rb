# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_11_11_174025) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "carryons", force: :cascade do |t|
    t.integer "luggage_id"
    t.integer "trip_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "events", force: :cascade do |t|
    t.integer "trip_id"
    t.string "name"
    t.string "start_date"
    t.string "start_time"
    t.string "end_date"
    t.string "end_time"
    t.integer "cost"
    t.string "address1"
    t.string "address2"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.string "country"
    t.text "notes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "hotels", force: :cascade do |t|
    t.integer "trip_id"
    t.string "name"
    t.integer "cost"
    t.string "starting_date"
    t.string "ending_date"
    t.string "address1"
    t.string "address2"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.string "country"
    t.text "notes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "luggages", force: :cascade do |t|
    t.integer "user_id"
    t.string "luggage_type"
    t.integer "size"
    t.integer "miles_travelled"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
  end

  create_table "places", force: :cascade do |t|
    t.integer "trip_id"
    t.string "name"
    t.integer "cost"
    t.string "address1"
    t.string "address2"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.string "country"
    t.text "notes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "transportations", force: :cascade do |t|
    t.integer "trip_id"
    t.string "transport_type"
    t.integer "cost"
    t.string "company"
    t.string "starting_date"
    t.string "starting_time"
    t.string "ending_date"
    t.string "ending_time"
    t.string "starting_location"
    t.string "destination"
    t.integer "total_miles"
    t.string "confirmation_code"
    t.text "notes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "trips", force: :cascade do |t|
    t.integer "user_id"
    t.string "title"
    t.text "description"
    t.string "start_date"
    t.string "end_date"
    t.integer "budget"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "photo"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "email"
    t.string "first_name"
    t.string "last_name"
    t.string "phone_number"
    t.string "address1"
    t.string "address2"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.string "country"
    t.text "bio"
    t.string "profile_pic"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
