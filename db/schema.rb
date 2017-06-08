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

ActiveRecord::Schema.define(version: 20170608160206) do

  create_table "crs", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "Name"
    t.string   "text"
    t.string   "Accused"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "status"
    t.integer  "r_select"
    t.integer  "ext"
    t.text     "division"
    t.integer  "cr_year"
    t.integer  "cr_type"
    t.integer  "cr_term"
    t.integer  "cr_no"
    t.text     "officer"
    t.integer  "amount_ka"
    t.integer  "amount_fu"
    t.index ["user_id"], name: "index_crs_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.integer  "Uid"
    t.text     "Name"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
  end

end
