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

ActiveRecord::Schema.define(version: 20180217175105) do

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "phone"
    t.string "email"
    t.string "password_digest"
    t.boolean "regular"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "feedbacks", force: :cascade do |t|
    t.text "content"
    t.integer "customer_id"
    t.integer "repair_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jobs", force: :cascade do |t|
    t.string "status"
    t.string "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "parts", force: :cascade do |t|
    t.string "description"
    t.decimal "unit_price"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "wstime"
  end

  create_table "quantities", force: :cascade do |t|
    t.integer "quantity"
    t.integer "repair_id"
    t.integer "part_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["part_id"], name: "index_quantities_on_part_id"
    t.index ["repair_id"], name: "index_quantities_on_repair_id"
  end

  create_table "repairs", force: :cascade do |t|
    t.date "date_out"
    t.decimal "cost_quote"
    t.decimal "labour_cost"
    t.decimal "total_cost"
    t.integer "customer_id"
    t.integer "job_id"
    t.date "required_date"
    t.string "description"
    t.string "repair_type"
    t.string "repair_detail"
    t.string "repair_photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "staffs", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phone"
    t.date "dob"
    t.string "ppsn"
    t.date "startdate"
    t.string "position"
    t.decimal "salary"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "staffs1", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phone"
    t.date "dob"
    t.string "ppsn"
    t.date "startdate"
    t.string "position"
    t.decimal "salary"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
