class Fuguai < ActiveRecord::Base
  attr_accessible :bhyo_no, :biko, :fuguai_no, :fuguaitenpu_kubun, :genin_kubun, :hako_ymd, :hakosya, :hasseikankyo, :hasseinaiyo, :judaido, :kaisekikekka, :kaito_ymd, :kaitosya, :kakuninsya, :kanryo_ymd, :kenmei, :kensyutukotei, :kinomei, :kotei_kubun, :saigensei, :sihen_no, :status_kubun, :syori_kubun, :systemmei, :taisyo_kubun, :taisyo_ymd, :taisyobutumei, :taisyoirai, :taisyosya, :taisyosyoti, :taisyotenpu_kubun, :taisyoyotei_ymd, :tyofuku_kubun, :tyofuku_no, :teammei. :taisyokibo_ymd

#入力チェック（ブランクは許しません！）
  validates_presence_of :hakosya
  validates_presence_of :hako_ymd
  validates_presence_of :kenmei
  validates_presence_of :systemmei
  validates_presence_of :kotei_kubun
  validates_presence_of :kinomei
  validates_presence_of :saigensei
  validates_presence_of :judaido
  validates_presence_of :taisyoirai
  validates_presence_of :hasseikankyo
  validates_presence_of :fuguaitenpu_kubun
  validates_presence_of :hasseinaiyo
  validates_presence_of :genin_kubun
  validates_presence_of :kensyutukotei
  validates_presence_of :taisyo_kubun
  validates_presence_of :syori_kubun
  validates_presence_of :taisyotenpu_kubun
  validates_presence_of :kaito_ymd
  validates_presence_of :kaitosya
  validates_presence_of :taisyosyoti
  validates_presence_of :taisyoyotei_ymd
  validates_presence_of :taisyosya
  validates_presence_of :taisyobutumei
  validates_presence_of :kanryo_ymd
  validates_presence_of :kakuninsya
  validates_presence_of :status_kubun
end
