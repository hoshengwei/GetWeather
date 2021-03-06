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

ActiveRecord::Schema.define(version: 20160925074955) do

  create_table "weatherrs", force: :cascade do |t|
    t.string   "year"
    t.string   "month"
    t.string   "day"
    t.string   "weather"
    t.string   "temp"
    t.string   "t_min"
    t.string   "t_max"
    t.string   "wave"
    t.string   "rain"
    t.string   "rain_hour"
    t.string   "sun_rate"
    t.string   "sun_hour"
    t.string   "wdir"
    t.string   "wdsd"
    t.string   "wdlv"
    t.string   "wd_max"
    t.string   "humd"
    t.string   "pres"
    t.string   "visb"
    t.string   "status"
    t.string   "tide"
    t.string   "ocean_temp"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
