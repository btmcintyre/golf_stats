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

ActiveRecord::Schema.define(version: 20141016151904) do

  create_table "scores", force: true do |t|
    t.integer  "user_id"
    t.date     "score_date"
    t.integer  "hc"
    t.integer  "score_1"
    t.boolean  "fairways_1"
    t.boolean  "greens_1"
    t.integer  "putts_1"
    t.integer  "score_2"
    t.boolean  "fairways_2"
    t.boolean  "greens_2"
    t.integer  "putts_2"
    t.integer  "score_3"
    t.boolean  "fairways_3"
    t.boolean  "greens_3"
    t.integer  "putts_3"
    t.integer  "score_4"
    t.boolean  "fairways_4"
    t.boolean  "greens_4"
    t.integer  "putts_4"
    t.integer  "score_5"
    t.boolean  "fairways_5"
    t.boolean  "greens_5"
    t.integer  "putts_5"
    t.integer  "score_6"
    t.boolean  "fairways_6"
    t.boolean  "greens_6"
    t.integer  "putts_6"
    t.integer  "score_7"
    t.boolean  "fairways_7"
    t.boolean  "greens_7"
    t.integer  "putts_7"
    t.integer  "score_8"
    t.boolean  "fairways_8"
    t.boolean  "greens_8"
    t.integer  "putts_8"
    t.integer  "score_9"
    t.boolean  "fairways_9"
    t.boolean  "greens_9"
    t.integer  "putts_9"
    t.integer  "score_10"
    t.boolean  "fairways_10"
    t.boolean  "greens_10"
    t.integer  "putts_10"
    t.integer  "score_11"
    t.boolean  "fairways_11"
    t.boolean  "greens_11"
    t.integer  "putts_11"
    t.integer  "score_12"
    t.boolean  "fairways_12"
    t.boolean  "greens_12"
    t.integer  "putts_12"
    t.integer  "score_13"
    t.boolean  "fairways_13"
    t.boolean  "greens_13"
    t.integer  "putts_13"
    t.integer  "score_14"
    t.boolean  "fairways_14"
    t.boolean  "greens_14"
    t.integer  "putts_14"
    t.integer  "score_15"
    t.boolean  "fairways_15"
    t.boolean  "greens_15"
    t.integer  "putts_15"
    t.integer  "score_16"
    t.boolean  "fairways_16"
    t.boolean  "greens_16"
    t.integer  "putts_16"
    t.integer  "score_17"
    t.boolean  "fairways_17"
    t.boolean  "greens_17"
    t.integer  "putts_17"
    t.integer  "score_18"
    t.boolean  "fairways_18"
    t.boolean  "greens_18"
    t.integer  "putts_18"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "scores", ["user_id"], name: "index_scores_on_user_id"

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin",           default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["remember_token"], name: "index_users_on_remember_token"

end
