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

ActiveRecord::Schema.define(:version => 20121225062852) do

  create_table "jobs", :force => true do |t|
    t.string   "company_name"
    t.string   "company_website"
    t.string   "position"
    t.string   "experience"
    t.string   "location"
    t.date     "ad_posting_on"
    t.date     "ad_expires_on"
    t.string   "qualification"
    t.string   "contact_name"
    t.string   "contact_email"
    t.string   "contact_number"
    t.text     "responsibility"
    t.text     "skill"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "hashed_password"
    t.string   "salt"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end
