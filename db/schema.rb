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

ActiveRecord::Schema.define(:version => 20110301235333) do

  create_table "alphasignups", :force => true do |t|
    t.string    "course"
    t.string    "email"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "courses", :force => true do |t|
    t.string    "topic"
    t.string    "teachers_email"
    t.timestamp "start_time"
    t.timestamp "end_time"
    t.text      "student_email"
    t.decimal   "price"
    t.text      "body"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string    "name"
    t.string    "email"
    t.string    "login"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

end
