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

ActiveRecord::Schema.define(:version => 20130912171753) do

  create_table "cases", :force => true do |t|
    t.text     "content"
    t.integer  "position",        :default => 0
    t.integer  "state",           :default => 0
    t.integer  "scenarios_count", :default => 0
    t.text     "input"
    t.text     "output"
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
    t.string   "context_name"
    t.string   "test_class_name"
    t.string   "describe"
    t.string   "it_sumary"
  end

  create_table "cases_scenarios", :force => true do |t|
    t.integer "scenario_id"
    t.integer "case_id"
  end

  create_table "logics", :force => true do |t|
    t.string   "title"
    t.text     "content"
    t.integer  "position",   :default => 0
    t.integer  "imp_level",  :default => 0
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  create_table "logics_scenarios", :force => true do |t|
    t.integer "logic_id"
    t.integer "scenario_id"
  end

  create_table "scenarios", :force => true do |t|
    t.text     "content"
    t.integer  "position",              :default => 0
    t.integer  "imp_level",             :default => 0
    t.integer  "parent_scenario_id"
    t.integer  "child_scenarios_count", :default => 0
    t.integer  "cases_count",           :default => 0
    t.datetime "created_at",                           :null => false
    t.datetime "updated_at",                           :null => false
  end

  create_table "thinkings", :force => true do |t|
    t.integer "case_id"
    t.integer "scenario_id"
  end

  add_index "thinkings", ["case_id", "scenario_id"], :name => "index_thinkings_on_case_id_and_scenario_id"

end
