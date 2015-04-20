# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150420093422) do

  create_table "banks", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "address",    limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "user_id",    limit: 4
  end

  add_index "banks", ["user_id"], name: "index_banks_on_user_id", using: :btree

  create_table "payments", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "token",      limit: 100
    t.string   "ccnumber",   limit: 255
    t.integer  "status",     limit: 4,   default: 0
    t.integer  "quantity",   limit: 4,   default: 0
    t.integer  "total",      limit: 4,   default: 0
    t.integer  "user_id",    limit: 4
    t.integer  "bank_id",    limit: 4
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  add_index "payments", ["bank_id"], name: "index_payments_on_bank_id", using: :btree
  add_index "payments", ["name"], name: "index_payments_on_name", using: :btree
  add_index "payments", ["user_id"], name: "index_payments_on_user_id", using: :btree

  create_table "payments_products", id: false, force: :cascade do |t|
    t.integer "product_id", limit: 4
    t.integer "payment_id", limit: 4
  end

  add_index "payments_products", ["payment_id"], name: "index_payments_products_on_payment_id", using: :btree
  add_index "payments_products", ["product_id"], name: "index_payments_products_on_product_id", using: :btree

  create_table "products", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "description", limit: 255
    t.integer  "price",       limit: 4
    t.integer  "quantity",    limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "products_promotions", force: :cascade do |t|
    t.integer "product_id",   limit: 4
    t.integer "promotion_id", limit: 4
  end

  add_index "products_promotions", ["product_id"], name: "index_products_promotions_on_product_id", using: :btree
  add_index "products_promotions", ["promotion_id"], name: "index_products_promotions_on_promotion_id", using: :btree

  create_table "promotions", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "discount",   limit: 4
    t.string   "expired_at", limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name", limit: 255
    t.string   "last_name",  limit: 255
    t.string   "email",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

end
