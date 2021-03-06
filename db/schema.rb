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

ActiveRecord::Schema.define(version: 20141012144943) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "abcs", force: true do |t|
    t.text     "aut_thought"
    t.text     "mistake"
    t.text     "adapt_thought"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "becks", force: true do |t|
    t.date     "date"
    t.text     "notes"
    t.integer  "value"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "moodentries", force: true do |t|
    t.date     "date"
    t.text     "note"
    t.integer  "mood"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "pictures", force: true do |t|
    t.string   "url"
    t.integer  "product_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pictures", ["product_id"], name: "index_pictures_on_product_id", using: :btree

  create_table "products", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.float    "price"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "category_id"
    t.integer  "user_id"
    t.string   "breed"
    t.integer  "YoB"
    t.string   "color"
    t.string   "height"
    t.string   "gender"
    t.string   "youtube"
  end

  create_table "reviews", force: true do |t|
    t.text     "content"
    t.integer  "rating"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "product_id"
    t.integer  "user_id"
  end

  create_table "schemas", force: true do |t|
    t.string   "name"
    t.text     "initiator"
    t.text     "emotions"
    t.text     "thoughts"
    t.text     "behaviour"
    t.text     "my_schema"
    t.text     "h_thought"
    t.text     "r_worry"
    t.text     "o_reaction"
    t.text     "h_behaviour"
    t.string   "belief"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.text     "pros"
    t.text     "cons"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "lastname"
    t.string   "firstname"
    t.boolean  "admin",                  default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
