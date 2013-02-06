class Fuguai < ActiveRecord::Base
  attr_accessible :bhyo_no, :biko, :fuguai_no, :fuguaitenpu_kubun, :genin_kubun, :hako_ymd, :hakosya, :hasseikankyo, :hasseinaiyo, :judaido, :kaisekikekka, :kaito_ymd, :kaitosya, :kakuninsya, :kanryo_ymd, :kenmei, :kensyutukotei, :kinomei, :kotei_kubun, :saigensei, :sihen_no, :status_kubun, :syori_kubun, :systemmei, :taisyo_kubun, :taisyo_ymd, :taisyobutumei, :taisyoirai, :taisyosya, :taisyosyoti, :taisyotenpu_kubun, :taisyoyotei_ymd, :tyofuku_kubun, :tyofuku_no, :teammei, :taisyokibo_ymd


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
  
  
  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
    csv << ["fuguai_no", "hakosya", "hako_ymd", "kenmei", "saigensei", "judaido", "hasseikankyo", "genin_kubun","taisyo_kubun",
                                    "sihen_no","tyofuku_kubun","taisyoyotei_ymd","taisyo_ymd","kanryo_ymd","status_kubun","biko"]
    all.each do |fuguai|
      row = Array.new
      row.push(fuguai.fuguai_no.encode("Shift_JIS"))
      row.push(fuguai.hakosya.encode("Shift_JIS"))
      row.push(fuguai.hako_ymd.encode("Shift_JIS"))
      row.push(fuguai.kenmei.encode("Shift_JIS"))
      row.push(fuguai.saigensei.encode("Shift_JIS"))
      row.push(fuguai.judaido.encode("Shift_JIS"))
      row.push(fuguai.hasseikankyo.encode("Shift_JIS"))
      row.push(fuguai.genin_kubun.encode("Shift_JIS"))
      row.push(fuguai.taisyo_kubun.encode("Shift_JIS"))
      row.push(fuguai.sihen_no.encode("Shift_JIS"))
      row.push(fuguai.tyofuku_kubun.encode("Shift_JIS"))
      row.push(fuguai.taisyoyotei_ymd.encode("Shift_JIS"))
      row.push(fuguai.taisyo_ymd.encode("Shift_JIS"))
      row.push(fuguai.kanryo_ymd.encode("Shift_JIS"))
      row.push(fuguai.status_kubun.encode("Shift_JIS"))
      row.push(fuguai.biko.encode("Shift_JIS"))
      csv << row
    end
   end
  end
  
end
