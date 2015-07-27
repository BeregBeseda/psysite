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

ActiveRecord::Schema.define(version: 20150729002358) do

  create_table "active_admin_comments", force: true do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"

  create_table "admin_users", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true

  create_table "bios", force: true do |t|
    t.string "title"
    t.text   "description"
    t.string "main_image"
    t.string "photo1"
    t.string "photo2"
    t.string "photo3"
    t.string "photo4"
    t.string "photo5"
    t.string "photo6"
    t.string "photo7"
    t.string "photo8"
    t.string "photo9"
    t.string "email"
    t.string "skype"
    t.string "vk_link"
    t.string "facebook_link"
    t.string "twitter_link"
    t.string "linkedin_link"
  end

  create_table "book_comments", force: true do |t|
    t.text    "comment"
    t.boolean "able",    default: true
    t.integer "book_id"
    t.integer "user_id"
  end

  add_index "book_comments", ["book_id"], name: "index_book_comments_on_book_id"
  add_index "book_comments", ["user_id"], name: "index_book_comments_on_user_id"

  create_table "book_orders", force: true do |t|
    t.boolean "payed"
    t.boolean "delivered"
    t.decimal "price"
    t.integer "number_of_pay_fails", default: 0
    t.string  "pay_fails_datetimes", default: ""
    t.integer "book_id"
    t.integer "user_id"
  end

  add_index "book_orders", ["book_id"], name: "index_book_orders_on_book_id"
  add_index "book_orders", ["user_id"], name: "index_book_orders_on_user_id"

  create_table "books", force: true do |t|
    t.string  "title"
    t.string  "author"
    t.integer "year_of_publishing"
    t.string  "main_image"
    t.integer "pages"
    t.string  "format"
    t.string  "lang"
    t.decimal "price"
    t.text    "description"
    t.string  "screenshot1"
    t.string  "screenshot2"
    t.string  "screenshot3"
    t.boolean "able",               default: true
  end

  create_table "consult_orders", force: true do |t|
    t.boolean  "payed"
    t.boolean  "delivered"
    t.decimal  "price"
    t.datetime "datetime1"
    t.datetime "datetime2"
    t.integer  "duration"
    t.integer  "number_of_pay_fails", default: 0
    t.string   "pay_fails_datetimes", default: ""
    t.integer  "consult_id"
    t.integer  "user_id"
  end

  add_index "consult_orders", ["consult_id"], name: "index_consult_orders_on_consult_id"
  add_index "consult_orders", ["user_id"], name: "index_consult_orders_on_user_id"

  create_table "consults", force: true do |t|
    t.string  "title"
    t.decimal "price_per_30_mins"
    t.integer "min_deration"
    t.text    "description"
    t.boolean "able",              default: true
  end

  create_table "film_comments", force: true do |t|
    t.text    "comment"
    t.boolean "able",    default: true
    t.integer "film_id"
    t.integer "user_id"
  end

  add_index "film_comments", ["film_id"], name: "index_film_comments_on_film_id"
  add_index "film_comments", ["user_id"], name: "index_film_comments_on_user_id"

  create_table "film_orders", force: true do |t|
    t.boolean "payed"
    t.boolean "delivered"
    t.decimal "price"
    t.integer "number_of_pay_fails", default: 0
    t.string  "pay_fails_datetimes", default: ""
    t.integer "film_id"
    t.integer "user_id"
  end

  add_index "film_orders", ["film_id"], name: "index_film_orders_on_film_id"
  add_index "film_orders", ["user_id"], name: "index_film_orders_on_user_id"

  create_table "films", force: true do |t|
    t.string  "title"
    t.string  "author"
    t.time    "duration"
    t.integer "year_of_publishing"
    t.string  "main_image"
    t.string  "format"
    t.string  "lang"
    t.decimal "price"
    t.text    "description"
    t.string  "screenshot1"
    t.string  "screenshot2"
    t.string  "screenshot3"
    t.boolean "able",               default: true
  end

  create_table "menus", force: true do |t|
    t.string   "name"
    t.string   "css_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "description"
  end

  create_table "pays", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "post_comments", force: true do |t|
    t.text    "comment"
    t.boolean "able",    default: true
    t.integer "post_id"
    t.integer "user_id"
  end

  add_index "post_comments", ["post_id"], name: "index_post_comments_on_post_id"
  add_index "post_comments", ["user_id"], name: "index_post_comments_on_user_id"

  create_table "posts", force: true do |t|
    t.string   "name"
    t.string   "image"
    t.string   "social_link"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "description"
    t.boolean  "visible",     default: true
  end

  create_table "reviews", force: true do |t|
    t.text    "review"
    t.string  "video_url"
    t.string  "audio_url"
    t.boolean "able",      default: true
    t.integer "user_id"
  end

  add_index "reviews", ["user_id"], name: "index_reviews_on_user_id"

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "surname"
    t.string   "email"
    t.string   "password"
    t.string   "password_confirmation"
    t.string   "image"
    t.boolean  "subscribe"
    t.datetime "birthday"
    t.string   "country"
    t.string   "city"
    t.string   "profession"
    t.boolean  "able",                       default: true
    t.string   "site"
    t.string   "social_address"
    t.string   "vk"
    t.string   "facebook"
    t.string   "twitter"
    t.string   "linkedin"
    t.text     "hobby"
    t.string   "key_word"
    t.string   "akey"
    t.integer  "number_of_activation_fails", default: 0
    t.string   "activation_fails_datetimes", default: ""
  end

end
