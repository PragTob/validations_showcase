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

ActiveRecord::Schema.define(version: 2019_02_01_155725) do

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.date "date"
    t.datetime "crew_arrives_at"
    t.datetime "performers_arrive_at"
    t.datetime "open_at"
    t.datetime "starts_at"
    t.datetime "ends_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "loop_as", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "loop_bs", force: :cascade do |t|
    t.integer "loop_a_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["loop_a_id"], name: "index_loop_bs_on_loop_a_id"
  end

end
