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

ActiveRecord::Schema.define(:version => 20130204014826) do

  create_table "fuguai_tenpukanris", :force => true do |t|
    t.string   "fuguai_no"
    t.string   "toshi_no"
    t.string   "tenpu"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "genins", :force => true do |t|
    t.string   "genin_kubun"
    t.string   "genin_meisyo"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "gyomusizis", :force => true do |t|
    t.string   "gyomusizi_kubun"
    t.string   "gyomusizi_meisyo"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "keylocks", :force => true do |t|
    t.string   "keylock_id"
    t.string   "fuguai_no"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "koteis", :force => true do |t|
    t.string   "kotei_kubun"
    t.string   "kotei_meisyo"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "statuses", :force => true do |t|
    t.string   "status_kubun"
    t.string   "status"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "syoris", :force => true do |t|
    t.string   "syori_kubun"
    t.string   "syori_meisyo"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "taisyos", :force => true do |t|
    t.string   "taisyo_kubun"
    t.string   "taisyo_meisyo"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "taisyotenpukanris", :force => true do |t|
    t.string   "fuguai_no"
    t.string   "toshi_no"
    t.string   "tenpu"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tenpus", :force => true do |t|
    t.string   "tenpu_kubun"
    t.string   "tenpu_meisyo"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "tyofukus", :force => true do |t|
    t.string   "tyofuku_kubun"
    t.string   "tyofuku_meisyo"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "userkanris", :force => true do |t|
    t.string   "user_id"
    t.string   "syozoku"
    t.string   "shimei"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "pass"
    t.string   "position"
  end

end
