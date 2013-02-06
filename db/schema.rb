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

ActiveRecord::Schema.define(:version => 20130206035941) do

  create_table "fuguai_tenpukanris", :force => true do |t|
    t.string   "fuguai_no"
    t.string   "toshi_no"
    t.string   "tenpu"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "fuguais", :force => true do |t|
    t.string   "fuguai_no"
    t.string   "bhyo_no"
    t.string   "hakosya"
    t.string   "kenmei"
    t.string   "systemmei"
    t.string   "kotei_kubun"
    t.string   "kinomei"
    t.string   "saigensei"
    t.string   "taisyoirai"
    t.string   "judaido"
    t.string   "hasseikankyo"
    t.string   "fuguaitenpu_kubun"
    t.text     "hasseinaiyo"
    t.string   "genin_kubun"
    t.string   "kensyutukotei"
    t.string   "taisyo_kubun"
    t.string   "sihen_no"
    t.string   "syori_kubun"
    t.string   "tyofuku_kubun"
    t.string   "tyofuku_no"
    t.string   "taisyotenpu_kubun"
    t.text     "kaisekikekka"
    t.string   "kaitosya"
    t.text     "taisyosyoti"
    t.string   "taisyosya"
    t.string   "taisyobutumei"
    t.string   "kakuninsya"
    t.string   "status_kubun"
    t.text     "biko"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.string   "teammei"
    t.date     "hako_ymd"
    t.date     "kaito_ymd"
    t.date     "taisyo_ymd"
    t.date     "kanryo_ymd"
    t.date     "taisyokibo_ymd"
    t.date     "taisyoyotei_ymd"
    t.string   "tenpu"
    t.string   "tenpu2"
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

  create_table "jidousaiban_its", :force => true do |t|
    t.string   "fuguaino_it"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
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
    t.string   "fuguai_id"
  end

  create_table "teammeis", :force => true do |t|
    t.string   "teammei_no"
    t.string   "teammeisyo"
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
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "password"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "pass"
    t.string   "mail"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
