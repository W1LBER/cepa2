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

ActiveRecord::Schema.define(version: 2020_10_16_014231) do

  create_table "cepas", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cepas_wines", id: false, force: :cascade do |t|
    t.integer "wine_id", null: false
    t.integer "cepa_id", null: false
  end

  create_table "magazines", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "positions", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "winemakers", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "country"
    t.integer "position_id"
    t.integer "magazine_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["magazine_id"], name: "index_winemakers_on_magazine_id"
    t.index ["position_id"], name: "index_winemakers_on_position_id"
  end

  create_table "wines", force: :cascade do |t|
    t.string "name"
    t.integer "score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
