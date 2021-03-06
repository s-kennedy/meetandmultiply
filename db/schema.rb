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

ActiveRecord::Schema.define(version: 20150702202238) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "applicants", force: :cascade do |t|
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "firstname"
    t.string   "lastname"
    t.string   "email"
    t.string   "company"
    t.text     "interest"
    t.text     "activities"
    t.string   "nationality"
    t.string   "location"
    t.string   "orgtype"
    t.string   "website"
    t.text     "aboutcompany"
    t.string   "position"
    t.text     "businessexperience"
    t.text     "sectorexperience"
    t.string   "language"
    t.string   "bmodel"
    t.text     "profile"
    t.text     "additional"
    t.string   "english"
    t.string   "spanish"
    t.string   "otherlang"
    t.string   "referrer"
    t.string   "status"
  end

  create_table "faqs", force: :cascade do |t|
    t.string   "question"
    t.text     "answer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string   "slug",                      null: false
    t.integer  "sluggable_id",              null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope"
    t.datetime "created_at"
  end

  add_index "friendly_id_slugs", ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true, using: :btree
  add_index "friendly_id_slugs", ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type", using: :btree
  add_index "friendly_id_slugs", ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id", using: :btree
  add_index "friendly_id_slugs", ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type", using: :btree

  create_table "originators", force: :cascade do |t|
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "title"
    t.string   "subtitle"
    t.string   "website"
    t.text     "about1"
    t.text     "about2"
    t.string   "location"
    t.string   "sector"
    t.string   "adopterprofile"
    t.string   "founded"
    t.string   "employees"
    t.string   "turnover"
    t.string   "profit"
    t.text     "bmodel"
    t.text     "relationships"
    t.text     "revenue"
    t.text     "customerbase"
    t.text     "feature"
    t.string   "impacttitle1"
    t.string   "impacttitle2"
    t.string   "impacttitle3"
    t.text     "impacttext1"
    t.text     "impacttext2"
    t.text     "impacttext3"
    t.text     "growthopportunity"
    t.string   "replicationtitle1"
    t.string   "replicationtitle2"
    t.string   "replicationtitle3"
    t.text     "replicationtext1"
    t.text     "replicationtext2"
    t.text     "replicationtext3"
    t.text     "partners"
    t.text     "coststructure"
    t.string   "url"
    t.string   "bg_img"
    t.string   "growth_img"
    t.string   "profile_path"
    t.string   "report1_path"
    t.string   "report1_title"
    t.string   "report2_path"
    t.string   "report2_title"
    t.string   "slug"
  end

  add_index "originators", ["slug"], name: "index_originators_on_slug", unique: true, using: :btree

  create_table "subscribers", force: :cascade do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "email"
    t.string   "sector"
    t.string   "orgname"
    t.string   "region"
    t.string   "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
