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

ActiveRecord::Schema.define(version: 20160730000411) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bundles", force: :cascade do |t|
    t.string   "title",          null: false
    t.string   "artist",         null: false
    t.text     "description"
    t.string   "background_url"
    t.string   "thumbnail_url"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "mediafiles", force: :cascade do |t|
    t.integer  "bundle_id"
    t.string   "title"
    t.string   "media_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "mediafiles", ["bundle_id"], name: "index_mediafiles_on_bundle_id", using: :btree

  create_table "taggings", force: :cascade do |t|
    t.integer  "bundle_id",  null: false
    t.integer  "tag_id",     null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "taggings", ["bundle_id", "tag_id"], name: "index_taggings_on_bundle_id_and_tag_id", using: :btree

  create_table "tags", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
