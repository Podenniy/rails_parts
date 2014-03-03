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

ActiveRecord::Schema.define(version: 20140303143532) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "main_parts", primary_key: "ttc_art_id", force: true do |t|
    t.string   "name_parts",          limit: 300, null: false
    t.string   "brand",               limit: 60,  null: false
    t.string   "code_part",           limit: 105, null: false
    t.string   "code_parts_advanced", limit: 150, null: false
    t.string   "ean",                 limit: 13
    t.string   "status_product",      limit: 300
    t.string   "name_image",          limit: 300
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "main_parts", ["brand"], name: "index_main_parts_on_brand", using: :btree
  add_index "main_parts", ["code_part"], name: "index_main_parts_on_code_part", using: :btree
  add_index "main_parts", ["ean"], name: "index_main_parts_on_ean", using: :btree

end
