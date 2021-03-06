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

ActiveRecord::Schema.define(version: 20130922011752) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "firsts", force: true do |t|
    t.date     "occurred_at"
    t.string   "description"
    t.integer  "kid_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "kids", force: true do |t|
    t.string   "name"
    t.integer  "parent_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "birthdate"
    t.string   "birthplace"
    t.string   "weight"
    t.string   "height"
  end

  create_table "parents", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "remember_token"
  end

  add_index "parents", ["email"], name: "index_parents_on_email", unique: true, using: :btree
  add_index "parents", ["remember_token"], name: "index_parents_on_remember_token", using: :btree

end
