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

ActiveRecord::Schema.define(:version => 20130309001612) do

  create_table "areas", :force => true do |t|
    t.string   "title"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "business_units", :force => true do |t|
    t.string   "title"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "categories", :force => true do |t|
    t.string   "title"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "comments", :force => true do |t|
    t.text     "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "companies", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "lookups", :force => true do |t|
    t.string   "lookup_name"
    t.string   "lookup_key"
    t.string   "lookup_value"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "metadata", :force => true do |t|
    t.integer  "analyst_hours"
    t.integer  "bw_hours"
    t.integer  "web_hours"
    t.integer  "abap_hours"
    t.string   "analysts"
    t.string   "developers"
    t.string   "transports"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "plants", :force => true do |t|
    t.string   "title"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "profiles", :force => true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "company_id"
  end

  create_table "statuses", :force => true do |t|
    t.string   "title"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "support_comments", :force => true do |t|
    t.string   "comment"
    t.integer  "support_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "supports", :force => true do |t|
    t.string   "title"
    t.integer  "workrequest_id"
    t.integer  "category_id"
    t.integer  "assignedto_id"
    t.integer  "status_id"
    t.integer  "plant_id"
    t.integer  "businessunit_id"
    t.string   "queue"
    t.text     "description"
    t.string   "created_by"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "company_id"
  end

  create_table "units", :force => true do |t|
    t.string   "title"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
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
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "work_request_comments", :force => true do |t|
    t.string   "comment"
    t.integer  "workrequest_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "work_requests", :force => true do |t|
    t.string   "title"
    t.integer  "category_id"
    t.integer  "status_id"
    t.integer  "plant_id"
    t.integer  "area_id"
    t.string   "requestors"
    t.string   "queue"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "created_by"
    t.integer  "unit_id"
    t.integer  "company_id"
    t.integer  "profile_id"
  end

end
