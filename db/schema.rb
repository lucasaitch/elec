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

ActiveRecord::Schema.define(version: 20151009025132) do

  create_table "categories", force: :cascade do |t|
    t.string   "name",               limit: 50, null: false
    t.integer  "parent_category_id"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "categories_listings", id: false, force: :cascade do |t|
    t.integer "category_id", null: false
    t.integer "listing_id",  null: false
  end

  add_index "categories_listings", ["category_id", "listing_id"], name: "index_categories_listings_on_category_id_and_listing_id"

  create_table "degrees", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "listings", force: :cascade do |t|
    t.integer  "owner_id",                null: false
    t.text     "name",        limit: 100, null: false
    t.text     "description", limit: 500, null: false
    t.decimal  "price",                   null: false
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "listings", ["owner_id"], name: "index_listings_on_owner_id"

  create_table "unit_of_studies", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name",      limit: 30, null: false
    t.string   "middle_name",     limit: 30
    t.string   "last_name",       limit: 30, null: false
    t.string   "email",           limit: 50, null: false
    t.string   "password_digest",            null: false
    t.date     "birth_date",                 null: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "users_unit_of_studies", force: :cascade do |t|
    t.integer "user_id",          null: false
    t.integer "unit_of_study_id", null: false
  end

  add_index "users_unit_of_studies", ["user_id", "unit_of_study_id"], name: "index_users_unit_of_studies_on_user_id_and_unit_of_study_id"

end
