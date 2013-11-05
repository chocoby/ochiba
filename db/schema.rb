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

ActiveRecord::Schema.define(version: 20121118074741) do

  create_table "cameras", force: true do |t|
    t.integer  "manufacturer_id"
    t.string   "name",            limit: 200, null: false
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "cameras", ["manufacturer_id"], name: "cameras_manufacturer_id_fk", using: :btree

  create_table "lenses", force: true do |t|
    t.integer  "manufacturer_id"
    t.string   "lens_id",         limit: 50
    t.string   "name",            limit: 200, null: false
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "lenses", ["lens_id"], name: "index_lenses_on_lens_id", using: :btree
  add_index "lenses", ["manufacturer_id"], name: "lenses_manufacturer_id_fk", using: :btree

  create_table "manufacturers", force: true do |t|
    t.string   "name",       limit: 50, null: false
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "photos", force: true do |t|
    t.string   "flickr_photo_id", limit: 50,               null: false
    t.string   "title",           limit: 100
    t.integer  "camera_id",                                null: false
    t.integer  "lens_id",                                  null: false
    t.datetime "taken_at",                                 null: false
    t.string   "exposure",        limit: 10,               null: false
    t.string   "aperture",        limit: 10,               null: false
    t.string   "iso_speed",       limit: 10,               null: false
    t.string   "focal_length",    limit: 10,  default: "", null: false
    t.string   "photo_url",                                null: false
    t.string   "photo_page_url",                           null: false
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
  end

  add_index "photos", ["camera_id"], name: "photos_camera_id_fk", using: :btree
  add_index "photos", ["lens_id"], name: "photos_lens_id_fk", using: :btree

  add_foreign_key "cameras", "manufacturers", name: "cameras_manufacturer_id_fk"

  add_foreign_key "lenses", "manufacturers", name: "lenses_manufacturer_id_fk"

  add_foreign_key "photos", "cameras", name: "photos_camera_id_fk"
  add_foreign_key "photos", "lenses", name: "photos_lens_id_fk"

end
