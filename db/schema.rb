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

ActiveRecord::Schema.define(version: 20141018184543) do

  create_table "pictures", force: true do |t|
    t.text     "description"
    t.string   "file"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "is_bracelet", default: false
    t.boolean  "is_earring",  default: false
    t.boolean  "is_necklace", default: false
    t.boolean  "is_other",    default: false
    t.boolean  "is_set",      default: false
  end

  create_table "pictures_posts", id: false, force: true do |t|
    t.integer "post_id",    null: false
    t.integer "picture_id", null: false
  end

  add_index "pictures_posts", ["picture_id", "post_id"], name: "index_pictures_posts_on_picture_id_and_post_id"
  add_index "pictures_posts", ["post_id", "picture_id"], name: "index_pictures_posts_on_post_id_and_picture_id"

  create_table "posts", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.string   "user_type"
    t.string   "name"
    t.string   "surname"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
