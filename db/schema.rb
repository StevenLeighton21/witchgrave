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

ActiveRecord::Schema.define(version: 20150929165557) do

  create_table "campaigns", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "user_id"
    t.integer  "member"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "campaigns", ["user_id", "created_at"], name: "index_campaigns_on_user_id_and_created_at"
  add_index "campaigns", ["user_id"], name: "index_campaigns_on_user_id"

  create_table "frost_grave_participants", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "campaigns_id"
    t.string   "name"
    t.string   "wizard_name"
    t.string   "wizard_weapon"
    t.text     "wizard_spells"
    t.string   "apprentice_name"
    t.string   "apprentice_weapon"
    t.string   "warband_member_1"
    t.string   "warband_member_2"
    t.string   "warband_member_3"
    t.string   "warband_member_4"
    t.string   "warband_member_5"
    t.string   "warband_member_6"
    t.string   "warband_member_7"
    t.string   "warband_member_8"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "frost_grave_participants", ["campaigns_id"], name: "index_frost_grave_participants_on_campaigns_id"
  add_index "frost_grave_participants", ["user_id", "campaigns_id"], name: "index_frost_grave_participants_on_user_id_and_campaigns_id"
  add_index "frost_grave_participants", ["user_id"], name: "index_frost_grave_participants_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
    t.string   "remember_digest"
    t.boolean  "admin"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

end
