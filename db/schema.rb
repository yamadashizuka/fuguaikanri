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

ActiveRecord::Schema.define(:version => 20130204005521) do

  create_table "fuguais", :force => true do |t|
    t.string   "fuguai_no"
    t.string   "bhyo_no"
    t.string   "hakosya"
    t.string   "hako_ymd"
    t.string   "kenmei"
    t.string   "systemmei"
    t.string   "kotei_kubun"
    t.string   "kinomei"
    t.string   "saigensei"
    t.string   "taisyoirai_ymd"
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
    t.string   "kaito_ymd"
    t.string   "kaitosya"
    t.text     "taisyosyoti"
    t.string   "taisyoyotei_ymd"
    t.string   "taisyo_ymd"
    t.string   "taisyosya"
    t.string   "taisyobutumei"
    t.string   "kanryo_ymd"
    t.string   "kakuninsya"
    t.string   "status_kubun"
    t.text     "biko"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "pass"
    t.string   "mail"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
