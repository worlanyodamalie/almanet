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

ActiveRecord::Schema.define(version: 20170702164230) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "membershipdata", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "year_group"
    t.integer  "phone_number"
    t.string   "email"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "organisation_id"
    t.index ["organisation_id"], name: "index_membershipdata_on_organisation_id", using: :btree
  end

  create_table "organisations", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "organisation_name"
    t.index ["email"], name: "index_organisations_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_organisations_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "membershipdata", "organisations"
end
