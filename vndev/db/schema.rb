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

ActiveRecord::Schema.define(:version => 20120207141806) do

  create_table "google_adwords_accounts", :force => true do |t|
    t.string   "client_id"
    t.integer  "add_to_portal_report"
    t.integer  "submit_to_tsavo"
    t.string   "adwords_account_id"
    t.integer  "fetch_report_from_google"
    t.integer  "google_mcc_account_id"
    t.integer  "site_id"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "google_mcc_accounts", :force => true do |t|
    t.string   "email"
    t.string   "password"
    t.string   "user_agent"
    t.string   "application_token"
    t.string   "developer_token"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "sites", :force => true do |t|
    t.string   "domain"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
