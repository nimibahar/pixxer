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

ActiveRecord::Schema.define(version: 20160407101842) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.integer  "seats"
    t.integer  "price"
    t.string   "description"
    t.string   "status"
    t.integer  "user_id"
    t.integer  "table_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "bookings", ["table_id"], name: "index_bookings_on_table_id", using: :btree
  add_index "bookings", ["user_id"], name: "index_bookings_on_user_id", using: :btree

  create_table "clubs", force: :cascade do |t|
    t.string   "address"
    t.string   "city"
    t.string   "description"
    t.integer  "owner_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "name"
    t.string   "photo"
  end

  add_index "clubs", ["owner_id"], name: "index_clubs_on_owner_id", using: :btree

  create_table "events", force: :cascade do |t|
    t.datetime "starts_at"
    t.string   "description"
    t.string   "event_type"
    t.string   "dress_code"
    t.integer  "club_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "photo"
  end

  add_index "events", ["club_id"], name: "index_events_on_club_id", using: :btree

  create_table "owners", force: :cascade do |t|
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
  end

  add_index "owners", ["email"], name: "index_owners_on_email", unique: true, using: :btree
  add_index "owners", ["reset_password_token"], name: "index_owners_on_reset_password_token", unique: true, using: :btree

  create_table "photos", force: :cascade do |t|
    t.integer  "club_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "photo"
    t.string   "photo_cache"
    t.integer  "event_id"
  end

  add_index "photos", ["club_id"], name: "index_photos_on_club_id", using: :btree
  add_index "photos", ["event_id"], name: "index_photos_on_event_id", using: :btree

  create_table "tables", force: :cascade do |t|
    t.integer  "seats"
    t.integer  "available_seats"
    t.integer  "price"
    t.integer  "per_seat"
    t.string   "payment_status"
    t.string   "preferences"
    t.string   "promotion"
    t.integer  "event_id"
    t.integer  "user_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "tables", ["event_id"], name: "index_tables_on_event_id", using: :btree
  add_index "tables", ["user_id"], name: "index_tables_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
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
    t.string   "provider"
    t.string   "uid"
    t.string   "picture"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "token"
    t.datetime "token_expiry"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "bookings", "tables"
  add_foreign_key "bookings", "users"
  add_foreign_key "clubs", "owners"
  add_foreign_key "events", "clubs"
  add_foreign_key "photos", "clubs"
  add_foreign_key "photos", "events"
  add_foreign_key "tables", "events"
  add_foreign_key "tables", "users"
end
