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

ActiveRecord::Schema.define(version: 2020_09_17_031134) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "counties", force: :cascade do |t|
    t.string "county"
    t.bigint "state_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["state_id"], name: "index_counties_on_state_id"
  end

  create_table "family_members", force: :cascade do |t|
    t.bigint "member_id"
    t.bigint "relationship_id"
    t.string "title"
    t.string "first_name"
    t.string "middle_initial"
    t.string "last_name"
    t.date "birthdate"
    t.integer "age"
    t.bigint "gender_id"
    t.string "email"
    t.string "home_phone"
    t.string "cell_phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["gender_id"], name: "index_family_members_on_gender_id"
    t.index ["member_id"], name: "index_family_members_on_member_id"
    t.index ["relationship_id"], name: "index_family_members_on_relationship_id"
  end

  create_table "genders", force: :cascade do |t|
    t.string "genderCode"
    t.string "gender"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "members", force: :cascade do |t|
    t.integer "member_no"
    t.string "title"
    t.string "first_name"
    t.string "middle_initial"
    t.string "last_name_string"
    t.date "birthdate"
    t.integer "age"
    t.bigint "gender_id"
    t.string "street_address"
    t.string "city"
    t.bigint "county_id"
    t.bigint "state_id"
    t.string "postal_code"
    t.string "email"
    t.string "home_phone"
    t.string "cell_phone"
    t.boolean "send_card"
    t.bigint "plan_id"
    t.bigint "membership_fee_id"
    t.bigint "role_id"
    t.bigint "status_id"
    t.date "member_since"
    t.date "membership_ends"
    t.text "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["county_id"], name: "index_members_on_county_id"
    t.index ["gender_id"], name: "index_members_on_gender_id"
    t.index ["membership_fee_id"], name: "index_members_on_membership_fee_id"
    t.index ["plan_id"], name: "index_members_on_plan_id"
    t.index ["role_id"], name: "index_members_on_role_id"
    t.index ["state_id"], name: "index_members_on_state_id"
    t.index ["status_id"], name: "index_members_on_status_id"
  end

  create_table "membership_fees", force: :cascade do |t|
    t.string "membership_fees_status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "plans", force: :cascade do |t|
    t.string "Membership_plan"
    t.decimal "price", precision: 8, scale: 2
    t.string "currency"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "relationships", force: :cascade do |t|
    t.string "relation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "states", force: :cascade do |t|
    t.string "stateCode"
    t.string "stateName"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "statuses", force: :cascade do |t|
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "counties", "states"
  add_foreign_key "family_members", "genders"
  add_foreign_key "family_members", "members"
  add_foreign_key "family_members", "relationships"
  add_foreign_key "members", "counties"
  add_foreign_key "members", "genders"
  add_foreign_key "members", "membership_fees"
  add_foreign_key "members", "plans"
  add_foreign_key "members", "roles"
  add_foreign_key "members", "states"
  add_foreign_key "members", "statuses"
end
