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

ActiveRecord::Schema.define(version: 20130920205144) do

  create_table "comments", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "usr_id"
    t.integer  "upd_id"
    t.integer  "com_id"
    t.string   "content"
    t.integer  "rating"
    t.string   "who_rated"
  end

  add_index "comments", ["upd_id", "usr_id", "com_id", "created_at"], name: "index_comments_on_upd_id_and_usr_id_and_com_id_and_created_at"

  create_table "pins", force: true do |t|
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.string   "title"
    t.datetime "start_date"
    t.datetime "end_date"
  end

  add_index "pins", ["end_date"], name: "index_pins_on_end_date"
  add_index "pins", ["user_id", "created_at"], name: "index_pins_on_user_id_and_created_at"
  add_index "pins", ["user_id"], name: "index_pins_on_user_id"

  create_table "users", force: true do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.integer  "reputation"
    t.string   "skill_1"
    t.string   "skill_2"
    t.string   "skill_3"
    t.boolean  "admin",                  default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  add_index "users", ["skill_1"], name: "index_users_on_skill_1"
  add_index "users", ["skill_2"], name: "index_users_on_skill_2"
  add_index "users", ["skill_3"], name: "index_users_on_skill_3"

  create_table "who_rated_comment_rels", force: true do |t|
    t.integer  "comment_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "who_rated_comment_rels", ["comment_id", "user_id"], name: "index_who_rated_comment_rels_on_comment_id_and_user_id", unique: true
  add_index "who_rated_comment_rels", ["comment_id"], name: "index_who_rated_comment_rels_on_comment_id"
  add_index "who_rated_comment_rels", ["user_id"], name: "index_who_rated_comment_rels_on_user_id"

end
