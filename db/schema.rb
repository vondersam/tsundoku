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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20161201104946) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "genres", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "messages", force: :cascade do |t|
    t.integer  "sender_id"
    t.integer  "recipient_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.text     "content"
    t.index ["recipient_id"], name: "index_messages_on_recipient_id", using: :btree
    t.index ["sender_id"], name: "index_messages_on_sender_id", using: :btree
  end

  create_table "physical_books", force: :cascade do |t|
    t.string   "status"
    t.string   "picture_url"
    t.integer  "price"
    t.string   "title"
    t.string   "author"
    t.bigint   "isbn"
    t.text     "description"
    t.string   "cover_pic_url"
    t.integer  "user_id"
    t.integer  "genre_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["genre_id"], name: "index_physical_books_on_genre_id", using: :btree
    t.index ["user_id"], name: "index_physical_books_on_user_id", using: :btree
  end

  create_table "transactions", force: :cascade do |t|
    t.string   "status"
    t.integer  "seller_id"
    t.integer  "receiver_id"
    t.integer  "physical_book_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["physical_book_id"], name: "index_transactions_on_physical_book_id", using: :btree
    t.index ["receiver_id"], name: "index_transactions_on_receiver_id", using: :btree
    t.index ["seller_id"], name: "index_transactions_on_seller_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "profile_pic_url"
    t.integer  "phone_number"
    t.integer  "rating"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "street1"
    t.string   "street2"
    t.string   "postbox"
    t.string   "postcode"
    t.string   "city"
    t.string   "country"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "views", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_views_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_views_on_reset_password_token", unique: true, using: :btree

  end

  create_table "wishlist_item", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "physical_book_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["physical_book_id"], name: "index_wishlist_item_on_physical_book_id", using: :btree
    t.index ["user_id"], name: "index_wishlist_item_on_user_id", using: :btree
  end

  add_foreign_key "physical_books", "genres"
  add_foreign_key "physical_books", "users"
  add_foreign_key "transactions", "physical_books"
  add_foreign_key "wishlist_item", "physical_books"
  add_foreign_key "wishlist_item", "users"
end
