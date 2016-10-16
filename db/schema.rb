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

ActiveRecord::Schema.define(version: 20161016024142) do

  create_table "gigs", force: :cascade do |t|
    t.string   "date"
    t.string   "location"
    t.string   "time"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "recording_id"
    t.integer  "setlist_id"
  end

  create_table "musician_gigs", force: :cascade do |t|
    t.integer "musician_id"
    t.integer "gig_id"
  end

  create_table "musician_recordings", force: :cascade do |t|
    t.integer "musician_id"
    t.integer "recording_id"
  end

  create_table "musicians", force: :cascade do |t|
    t.string   "name"
    t.string   "instrument"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "recording_songs", force: :cascade do |t|
    t.integer  "recording_id"
    t.integer  "song_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "recordings", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "gig_id"
    t.string   "src"
  end

  create_table "setlist_songs", force: :cascade do |t|
    t.integer  "setlist_id"
    t.integer  "song_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "setlists", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "gig_id"
  end

  create_table "songs", force: :cascade do |t|
    t.string   "title"
    t.string   "length"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
