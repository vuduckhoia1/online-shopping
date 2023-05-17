# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_05_17_095116) do
  create_table "bills", charset: "utf8mb3", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "carts", charset: "utf8mb3", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_carts_on_user_id"
  end

  create_table "categories", charset: "utf8mb3", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_categories_on_name", unique: true
  end

  create_table "discounts", charset: "utf8mb3", force: :cascade do |t|
    t.string "name"
    t.float "value"
    t.integer "type"
    t.date "day_start"
    t.date "day_end"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "export_bills", charset: "utf8mb3", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "exported_products", charset: "utf8mb3", force: :cascade do |t|
    t.integer "quantity"
    t.float "price"
    t.bigint "product_id", null: false
    t.bigint "export_bill_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["export_bill_id"], name: "index_exported_products_on_export_bill_id"
    t.index ["product_id"], name: "index_exported_products_on_product_id"
  end

  create_table "import_bills", charset: "utf8mb3", force: :cascade do |t|
    t.bigint "supplier_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["supplier_id"], name: "index_import_bills_on_supplier_id"
  end

  create_table "imported_products", charset: "utf8mb3", force: :cascade do |t|
    t.integer "quantity"
    t.float "price"
    t.bigint "product_id", null: false
    t.bigint "import_bill_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["import_bill_id"], name: "index_imported_products_on_import_bill_id"
    t.index ["product_id"], name: "index_imported_products_on_product_id"
  end

  create_table "product_carts", charset: "utf8mb3", force: :cascade do |t|
    t.bigint "cart_id", null: false
    t.bigint "product_id", null: false
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cart_id"], name: "index_product_carts_on_cart_id"
    t.index ["product_id"], name: "index_product_carts_on_product_id"
  end

  create_table "products", charset: "utf8mb3", force: :cascade do |t|
    t.string "name"
    t.float "price"
    t.text "des"
    t.bigint "category_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_products_on_category_id"
    t.index ["name"], name: "index_products_on_name"
  end

  create_table "profiles", charset: "utf8mb3", force: :cascade do |t|
    t.string "avatar"
    t.string "tel"
    t.string "address"
    t.date "dob"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "shipments", charset: "utf8mb3", force: :cascade do |t|
    t.string "brand"
    t.string "target_address"
    t.string "email"
    t.float "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "suppliers", charset: "utf8mb3", force: :cascade do |t|
    t.string "brand", null: false
    t.string "address"
    t.string "tel", null: false
    t.string "email", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["brand"], name: "index_suppliers_on_brand", unique: true
  end

  create_table "users", charset: "utf8mb3", force: :cascade do |t|
    t.string "name"
    t.integer "role", limit: 1
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "carts", "users"
  add_foreign_key "exported_products", "export_bills"
  add_foreign_key "exported_products", "products"
  add_foreign_key "import_bills", "suppliers"
  add_foreign_key "imported_products", "import_bills"
  add_foreign_key "imported_products", "products"
  add_foreign_key "product_carts", "carts"
  add_foreign_key "product_carts", "products"
  add_foreign_key "products", "categories"
  add_foreign_key "profiles", "users"
end
