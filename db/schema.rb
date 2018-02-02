
ActiveRecord::Schema.define(version: 20180202153110) do

  create_table "bicycles", force: :cascade do |t|
    t.string "make"
    t.string "model"
    t.string "colour"
    t.integer "frame_size"
    t.integer "wheel_size"
    t.string "extras"
    t.string "image"
    t.integer "customer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "phone"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "discounts", force: :cascade do |t|
    t.string "level"
    t.integer "rate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "parts", force: :cascade do |t|
    t.string "description"
    t.decimal "unit_price"
    t.text "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "wstime"
  end

  create_table "partsrequireds", force: :cascade do |t|
    t.integer "quantity"
    t.integer "part_id"
    t.integer "repair_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "repairs", force: :cascade do |t|
    t.date "date_out"
    t.decimal "cost_quote"
    t.decimal "labour_cost"
    t.decimal "total_cost"
    t.string "repair_detail"
    t.integer "customer_id"
    t.integer "discount_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
