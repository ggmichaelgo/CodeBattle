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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130313164745) do

  create_table "battles", :force => true do |t|
    t.string   "state"
    t.integer  "question_id"
    t.integer  "coders_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "coders", :force => true do |t|
    t.string   "state"
    t.integer  "battle_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "codes", :force => true do |t|
    t.text     "code"
    t.string   "lang"
    t.string   "q_id"
    t.integer  "coder_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "ctfs", :force => true do |t|
    t.string   "title"
    t.string   "state"
    t.text     "questions"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "hosts", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "logo_path"
    t.integer  "ctf_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "io_questions", :force => true do |t|
    t.string   "name"
    t.string   "question_type"
    t.text     "content"
    t.integer  "point"
    t.string   "category"
    t.integer  "category_index"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.text     "inputs"
    t.text     "outputs"
  end

  create_table "question_properties", :force => true do |t|
    t.string   "name"
    t.string   "question_type"
    t.text     "content"
    t.integer  "point"
    t.string   "category"
    t.integer  "category_index"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "robot_questions", :force => true do |t|
    t.string   "name"
    t.string   "question_type"
    t.text     "content"
    t.integer  "point"
    t.string   "category"
    t.integer  "category_index"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.string   "robot_path"
    t.string   "password"
  end

  create_table "solved_questions", :force => true do |t|
    t.string   "question_category"
    t.integer  "question_id"
    t.text     "code"
    t.datetime "started_time"
    t.datetime "solved_time"
    t.integer  "user_info_id"
  end

  create_table "user_infos", :force => true do |t|
    t.integer "points"
    t.integer "rank"
    t.string  "username"
    t.integer "user_id"
    t.integer "coder_id"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.text     "username"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
