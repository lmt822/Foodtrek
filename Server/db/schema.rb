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

ActiveRecord::Schema.define(version: 20150429173611) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "checkins", force: true do |t|
    t.integer  "user_id"
    t.integer  "restaurant_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "checkins", ["restaurant_id"], name: "index_checkins_on_restaurant_id", using: :btree
  add_index "checkins", ["user_id", "restaurant_id"], name: "index_checkins_on_user_id_and_restaurant_id", using: :btree

  create_table "enrollments", force: true do |t|
    t.integer  "user_id"
    t.integer  "trek_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "enrollments", ["trek_id"], name: "index_enrollments_on_trek_id", using: :btree
  add_index "enrollments", ["user_id", "trek_id"], name: "index_enrollments_on_user_id_and_trek_id", using: :btree

  create_table "joins", force: true do |t|
    t.integer  "user_id"
    t.integer  "trek_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "joins", ["trek_id"], name: "index_joins_on_trek_id", using: :btree
  add_index "joins", ["user_id", "trek_id"], name: "index_joins_on_user_id_and_trek_id", using: :btree

  create_table "restaurants", force: true do |t|
    t.text     "name",        default: "", null: false
    t.integer  "section_id"
    t.text     "description", default: "", null: false
    t.text     "locu_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "row_order",                null: false
    t.float    "latitude"
    t.float    "longitude"
    t.string   "address"
  end

  add_index "restaurants", ["row_order"], name: "index_restaurants_on_row_order", using: :btree
  add_index "restaurants", ["section_id"], name: "index_restaurants_on_section_id", using: :btree

  create_table "sections", force: true do |t|
    t.string   "title",      default: "", null: false
    t.integer  "trek_id",    default: 0,  null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sections", ["trek_id"], name: "index_sections_on_trek_id", using: :btree

  create_table "treks", force: true do |t|
    t.string   "title",       default: "", null: false
    t.text     "description", default: "", null: false
    t.integer  "user_id",     default: 0,  null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image"
  end

  add_index "treks", ["user_id"], name: "index_treks_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email",                  limit: 50, default: "", null: false
    t.string   "encrypted_password",                default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                     default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
