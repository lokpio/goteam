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

ActiveRecord::Schema.define(version: 20161109175642) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "matches", force: :cascade do |t|
    t.string   "location"
    t.string   "date"
    t.integer  "sport_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sport_id"], name: "index_matches_on_sport_id", using: :btree
  end

  create_table "sports", force: :cascade do |t|
    t.string   "name",          null: false
    t.string   "category",      null: false
    t.text     "description"
    t.string   "video_url"
    t.integer  "total_players", null: false
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "stats", force: :cascade do |t|
    t.integer  "user_id",                       null: false
    t.integer  "sport_id",                      null: false
    t.integer  "rating",     default: 50,       null: false
    t.string   "division",   default: "Silver", null: false
    t.string   "active",     default: "false",  null: false
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.index ["sport_id"], name: "index_stats_on_sport_id", using: :btree
    t.index ["user_id"], name: "index_stats_on_user_id", using: :btree
  end

  create_table "teams", force: :cascade do |t|
    t.string   "season",                       null: false
    t.integer  "match_id",                     null: false
    t.integer  "sport_id",                     null: false
    t.integer  "score",      default: 0,       null: false
    t.string   "home",                         null: false
    t.string   "updated?",   default: "false"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.index ["match_id"], name: "index_teams_on_match_id", using: :btree
    t.index ["sport_id"], name: "index_teams_on_sport_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",               default: "", null: false
    t.string   "password_hash",       default: "", null: false
    t.string   "first_name",                       null: false
    t.string   "last_name",                        null: false
    t.string   "street",                           null: false
    t.string   "city",                             null: false
    t.string   "state",                            null: false
    t.integer  "zip",                              null: false
    t.string   "phone",                            null: false
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  create_table "userteams", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "team_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["team_id"], name: "index_userteams_on_team_id", using: :btree
    t.index ["user_id"], name: "index_userteams_on_user_id", using: :btree
  end

end
