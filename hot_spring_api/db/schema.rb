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

ActiveRecord::Schema.define(version: 2020_04_28_173703) do

  create_table "locations", force: :cascade do |t|
    t.string "city"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "recoveries", force: :cascade do |t|
    t.string "activity"
    t.integer "activity_level"
    t.float "cost"
    t.integer "location_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["location_id"], name: "index_recoveries_on_location_id"
  end

  create_table "relaxes", force: :cascade do |t|
    t.string "name"
    t.integer "capacity"
    t.string "vibe"
    t.integer "location_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["location_id"], name: "index_relaxes_on_location_id"
  end

  create_table "rests", force: :cascade do |t|
    t.string "name"
    t.string "type"
    t.integer "capacity"
    t.integer "location_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["location_id"], name: "index_rests_on_location_id"
  end

  add_foreign_key "recoveries", "locations"
  add_foreign_key "relaxes", "locations"
  add_foreign_key "rests", "locations"
end
