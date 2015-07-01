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

ActiveRecord::Schema.define(version: 20150701172844) do

  create_table "assets", force: :cascade do |t|
    t.string   "type"
    t.string   "name"
    t.string   "url"
    t.integer  "coment_count"
    t.integer  "fb_like_count"
    t.integer  "fb_share_count"
    t.integer  "linkedin_share_count"
    t.integer  "pinterest_pin_count"
    t.integer  "pinterest_follower_count"
    t.integer  "pinterest_like_count"
    t.integer  "tweet_count"
    t.integer  "instagram_follower_count"
    t.integer  "instagram_like_count"
    t.string   "campaign_name"
    t.string   "rights_version"
    t.integer  "campaign_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "assets", ["campaign_id"], name: "index_assets_on_campaign_id"

  create_table "campaigns", force: :cascade do |t|
    t.string   "title"
    t.text     "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "creators", force: :cascade do |t|
    t.string   "name"
    t.text     "bio"
    t.integer  "campaign_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "creators", ["campaign_id"], name: "index_creators_on_campaign_id"

end
