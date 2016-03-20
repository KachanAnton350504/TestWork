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

ActiveRecord::Schema.define(version: 20160320032151) do

  create_table "authors", force: :cascade do |t|
    t.string   "name"
    t.string   "foto"
    t.text     "biography"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "books", force: :cascade do |t|
    t.string   "name"
    t.string   "image"
    t.integer  "status"
    t.string   "vendor_code"
    t.float    "weight"
    t.float    "price"
    t.string   "series"
    t.string   "subjects"
    t.integer  "limit_age"
    t.integer  "time_status"
    t.text     "description_product"
    t.text     "description_book"
    t.integer  "author_id"
    t.integer  "part_of_catalog_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "books", ["author_id"], name: "index_books_on_author_id"
  add_index "books", ["part_of_catalog_id"], name: "index_books_on_part_of_catalog_id"

  create_table "books_users", id: false, force: :cascade do |t|
    t.integer "book_id", null: false
    t.integer "user_id", null: false
  end

  add_index "books_users", ["book_id"], name: "index_books_users_on_book_id"
  add_index "books_users", ["user_id"], name: "index_books_users_on_user_id"

  create_table "catalogs", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "catalogs_part_of_catalogs", id: false, force: :cascade do |t|
    t.integer "catalog_id",         null: false
    t.integer "part_of_catalog_id", null: false
  end

  add_index "catalogs_part_of_catalogs", ["catalog_id"], name: "index_catalogs_part_of_catalogs_on_catalog_id"
  add_index "catalogs_part_of_catalogs", ["part_of_catalog_id"], name: "index_catalogs_part_of_catalogs_on_part_of_catalog_id"

  create_table "orders", force: :cascade do |t|
    t.string   "payment"
    t.string   "receipt"
    t.integer  "book_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "orders", ["book_id"], name: "index_orders_on_book_id"
  add_index "orders", ["user_id"], name: "index_orders_on_user_id"

  create_table "part_of_catalogs", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "rich_rich_files", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "rich_file_file_name"
    t.string   "rich_file_content_type"
    t.integer  "rich_file_file_size"
    t.datetime "rich_file_updated_at"
    t.string   "owner_type"
    t.integer  "owner_id"
    t.text     "uri_cache"
    t.string   "simplified_type",        default: "file"
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "role_id"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  add_index "users", ["role_id"], name: "index_users_on_role_id"

end
