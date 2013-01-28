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

ActiveRecord::Schema.define(:version => 20130128223701) do

  create_table "codes", :force => true do |t|
    t.string   "code"
    t.string   "lang"
    t.string   "question"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "foos", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "io_questions", :id => false, :force => true do |t|
    t.integer  "id",         :default => 0, :null => false
    t.string   "name"
    t.text     "content"
    t.integer  "point"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
    t.text     "inputs"
    t.text     "outputs"
  end

  create_table "question_properties", :force => true do |t|
    t.string   "name"
    t.text     "content"
    t.integer  "point"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "robot_questions", :id => false, :force => true do |t|
    t.integer  "id",         :default => 0, :null => false
    t.string   "name"
    t.text     "content"
    t.integer  "point"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
    t.text     "robot_path"
  end

end
