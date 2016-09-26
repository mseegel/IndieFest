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

ActiveRecord::Schema.define(version: 20160921204938) do

  create_table "films", force: :cascade do |t|
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "title",      limit: 255
    t.string   "director",   limit: 255
    t.integer  "year",       limit: 4
    t.string   "country",    limit: 255
    t.string   "tagline",    limit: 255
    t.text     "synopsis",   limit: 65535
    t.string   "poster",     limit: 255
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "film_id", limit: 4
    t.integer "userid",  limit: 4
    t.integer "filmid",  limit: 4
    t.text    "review",  limit: 65535
  end

  add_index "reviews", ["film_id"], name: "index_reviews_on_film_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "username",      limit: 255
    t.string   "email",         limit: 255
    t.string   "name",          limit: 255
    t.string   "location",      limit: 255
    t.text     "bio",           limit: 65535
    t.string   "image",         limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.string   "password_hash", limit: 255
    t.string   "password_salt", limit: 255
  end

end
