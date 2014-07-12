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

ActiveRecord::Schema.define(version: 20140711213758) do

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

  create_table "buyers", force: true do |t|
    t.string   "email"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "akey"
  end

  add_index "buyers", ["email"], name: "index_buyers_on_email", unique: true

  create_table "clients", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.text     "message"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "example1s", force: true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "examples", force: true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mentions", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "surname"
    t.string   "place"
    t.string   "nation"
    t.integer  "age"
    t.string   "profession"
    t.text     "mention"
    t.string   "video_url"
    t.string   "audio_url"
    t.string   "online_address"
    t.string   "site"
    t.string   "img_url"
    t.boolean  "visible"
    t.string   "word"
  end

  create_table "menus", force: true do |t|
    t.string   "name"
    t.string   "css_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "description"
  end

  create_table "news_emails", force: true do |t|
    t.boolean  "use_for_news",        default: true
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "word"
    t.boolean  "delivery"
    t.string   "email"
    t.string   "akey"
    t.string   "delivery_agree_date"
    t.string   "delivery_off_date"
  end

  create_table "pers_pays", force: true do |t|
    t.string   "email"
    t.integer  "sum"
    t.string   "account"
    t.string   "when"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "number"
  end

  create_table "posts", force: true do |t|
    t.string   "name"
    t.datetime "date"
    t.integer  "price",       limit: 5
    t.string   "image"
    t.string   "social_link"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "description"
  end

  create_table "posts_comments", force: true do |t|
    t.string   "name"
    t.string   "surname"
    t.string   "soc_url"
    t.string   "email"
    t.text     "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "post_id"
    t.string   "word"
    t.boolean  "visible",    default: true
  end

  add_index "posts_comments", ["post_id"], name: "index_posts_comments_on_post_id"

  create_table "products", force: true do |t|
    t.string   "name"
    t.datetime "date"
    t.integer  "price",       limit: 5
    t.string   "image"
    t.string   "social_link"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "description"
  end

  create_table "products_comments", force: true do |t|
    t.string   "name"
    t.string   "surname"
    t.string   "soc_url"
    t.string   "email"
    t.text     "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "product_id"
    t.string   "word"
    t.boolean  "visible",    default: true
  end

  add_index "products_comments", ["product_id"], name: "index_products_comments_on_product_id"

  create_table "products_gets", force: true do |t|
    t.string   "email"
    t.string   "product_name"
    t.string   "link_of_product"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products_pays", force: true do |t|
    t.string   "email"
    t.string   "product_name"
    t.integer  "sum"
    t.string   "account"
    t.string   "when"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "number"
  end

  create_table "recalls", force: true do |t|
    t.string   "name"
    t.string   "surname"
    t.string   "my_city"
    t.string   "my_country"
    t.integer  "age"
    t.string   "profession"
    t.string   "recall"
    t.string   "video_url"
    t.string   "audio_url"
    t.string   "online_address"
    t.string   "site"
    t.string   "img_url"
    t.boolean  "visible"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reviews", force: true do |t|
    t.string   "name"
    t.string   "surname"
    t.string   "city"
    t.integer  "age"
    t.string   "profession"
    t.text     "review"
    t.string   "video_url"
    t.string   "audio_url"
    t.string   "online_address"
    t.string   "site"
    t.string   "img_url"
    t.boolean  "visible"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "my_country"
  end

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "akey"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

end
