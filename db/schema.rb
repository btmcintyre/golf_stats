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

ActiveRecord::Schema.define(version: 20171011114755) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "courses", force: :cascade do |t|
    t.string "name"
    t.bigint "user_id"
    t.integer "si_1"
    t.integer "par_1"
    t.integer "si_2"
    t.integer "par_2"
    t.integer "si_3"
    t.integer "par_3"
    t.integer "si_4"
    t.integer "par_4"
    t.integer "si_5"
    t.integer "par_5"
    t.integer "si_6"
    t.integer "par_6"
    t.integer "si_7"
    t.integer "par_7"
    t.integer "si_8"
    t.integer "par_8"
    t.integer "si_9"
    t.integer "par_9"
    t.integer "si_10"
    t.integer "par_10"
    t.integer "si_11"
    t.integer "par_11"
    t.integer "si_12"
    t.integer "par_12"
    t.integer "si_13"
    t.integer "par_13"
    t.integer "si_14"
    t.integer "par_14"
    t.integer "si_15"
    t.integer "par_15"
    t.integer "si_16"
    t.integer "par_16"
    t.integer "si_17"
    t.integer "par_17"
    t.integer "si_18"
    t.integer "par_18"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_courses_on_user_id"
  end

  create_table "scores", force: :cascade do |t|
    t.integer "user_id"
    t.date "score_date"
    t.integer "hc"
    t.integer "score_1"
    t.boolean "fairways_1"
    t.boolean "greens_1"
    t.integer "putts_1"
    t.integer "score_2"
    t.boolean "fairways_2"
    t.boolean "greens_2"
    t.integer "putts_2"
    t.integer "score_3"
    t.boolean "fairways_3"
    t.boolean "greens_3"
    t.integer "putts_3"
    t.integer "score_4"
    t.boolean "fairways_4"
    t.boolean "greens_4"
    t.integer "putts_4"
    t.integer "score_5"
    t.boolean "fairways_5"
    t.boolean "greens_5"
    t.integer "putts_5"
    t.integer "score_6"
    t.boolean "fairways_6"
    t.boolean "greens_6"
    t.integer "putts_6"
    t.integer "score_7"
    t.boolean "fairways_7"
    t.boolean "greens_7"
    t.integer "putts_7"
    t.integer "score_8"
    t.boolean "fairways_8"
    t.boolean "greens_8"
    t.integer "putts_8"
    t.integer "score_9"
    t.boolean "fairways_9"
    t.boolean "greens_9"
    t.integer "putts_9"
    t.integer "score_10"
    t.boolean "fairways_10"
    t.boolean "greens_10"
    t.integer "putts_10"
    t.integer "score_11"
    t.boolean "fairways_11"
    t.boolean "greens_11"
    t.integer "putts_11"
    t.integer "score_12"
    t.boolean "fairways_12"
    t.boolean "greens_12"
    t.integer "putts_12"
    t.integer "score_13"
    t.boolean "fairways_13"
    t.boolean "greens_13"
    t.integer "putts_13"
    t.integer "score_14"
    t.boolean "fairways_14"
    t.boolean "greens_14"
    t.integer "putts_14"
    t.integer "score_15"
    t.boolean "fairways_15"
    t.boolean "greens_15"
    t.integer "putts_15"
    t.integer "score_16"
    t.boolean "fairways_16"
    t.boolean "greens_16"
    t.integer "putts_16"
    t.integer "score_17"
    t.boolean "fairways_17"
    t.boolean "greens_17"
    t.integer "putts_17"
    t.integer "score_18"
    t.boolean "fairways_18"
    t.boolean "greens_18"
    t.integer "putts_18"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_scores_on_user_id"
  end

  create_table "sessions", force: :cascade do |t|
    t.string "session_id", null: false
    t.text "data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["session_id"], name: "index_sessions_on_session_id", unique: true
    t.index ["updated_at"], name: "index_sessions_on_updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.string "remember_token"
    t.boolean "admin", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["remember_token"], name: "index_users_on_remember_token"
  end

end
