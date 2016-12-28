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

ActiveRecord::Schema.define(version: 20160217130602) do

  create_table "pages", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "position",   limit: 4
    t.boolean  "visible",                default: false
    t.string   "permalink",  limit: 255
    t.integer  "subject_id", limit: 4
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  create_table "sections", force: :cascade do |t|
    t.string   "name",         limit: 255
    t.integer  "position",     limit: 4
    t.boolean  "visible",                    default: false
    t.string   "content_type", limit: 255
    t.text     "content",      limit: 65535
    t.integer  "page_id",      limit: 4
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
  end

  create_table "subjects", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "position",   limit: 4
    t.boolean  "visible",                default: false
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name", limit: 25
    t.string   "last_name",  limit: 50
    t.string   "email",      limit: 255, default: "", null: false
    t.string   "password",   limit: 40
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "roles_mask", limit: 4
  end

  create_table "users_pages_joins", id: false, force: :cascade do |t|
    t.integer "user_id", limit: 4
    t.integer "page_id", limit: 4
  end

end
