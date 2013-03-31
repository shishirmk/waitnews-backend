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

ActiveRecord::Schema.define(:version => 20130326053013) do

  create_table "addresses", :force => true do |t|
    t.string   "line1"
    t.string   "line2"
    t.string   "city"
    t.string   "country"
    t.string   "state"
    t.string   "zipcode"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "averagewaits", :force => true do |t|
    t.integer  "average_time"
    t.integer  "day"
    t.string   "dow"
    t.integer  "hour"
    t.integer  "minute"
    t.integer  "month"
    t.integer  "place_id"
    t.integer  "year"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "averagewaits", ["place_id"], :name => "index_averagewaits_on_place_id"

  create_table "locations", :force => true do |t|
    t.float    "lat"
    t.float    "long"
    t.integer  "address_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "locations", ["address_id"], :name => "index_locations_on_address_id"

  create_table "places", :force => true do |t|
    t.string   "name"
    t.integer  "address_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "places", ["address_id"], :name => "index_places_on_address_id"

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "waits", :force => true do |t|
    t.integer  "wait_time"
    t.integer  "user_id"
    t.integer  "place_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "waits", ["place_id"], :name => "index_waits_on_place_id"
  add_index "waits", ["user_id"], :name => "index_waits_on_user_id"

end
