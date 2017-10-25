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

ActiveRecord::Schema.define(version: 20171025200722) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "descriptions", force: :cascade do |t|
    t.bigint "package_id", null: false
    t.string "package_url", null: false
    t.datetime "date_publication", null: false
    t.string "title", null: false
    t.text "description", null: false
    t.string "raw_data", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["package_id"], name: "index_descriptions_on_package_id", unique: true
    t.index ["package_url"], name: "index_descriptions_on_package_url", unique: true
  end

  create_table "packages", force: :cascade do |t|
    t.string "name", null: false
    t.string "version", null: false
    t.json "raw_data", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name", "version"], name: "index_packages_on_name_and_version", unique: true
    t.index ["name"], name: "index_packages_on_name"
  end

  add_foreign_key "descriptions", "packages"
end
