class CreateFuguais < ActiveRecord::Migration
  def change
    create_table :fuguais do |t|
      t.string :fuguai_no
      t.string :bhyo_no
      t.string :hakosya
      t.string :hako_ymd
      t.string :kenmei
      t.string :systemmei
      t.string :kotei_kubun
      t.string :kinomei
      t.string :saigensei
      t.string :taisyoirai_ymd
      t.string :judaido
      t.string :hasseikankyo
      t.string :fuguaitenpu_kubun
      t.text :hasseinaiyo
      t.string :genin_kubun
      t.string :kensyutukotei
      t.string :taisyo_kubun
      t.string :sihen_no
      t.string :syori_kubun
      t.string :tyofuku_kubun
      t.string :tyofuku_no
      t.string :taisyotenpu_kubun
      t.text :kaisekikekka
      t.string :kaito_ymd
      t.string :kaitosya
      t.text :taisyosyoti
      t.string :taisyoyotei_ymd
      t.string :taisyo_ymd
      t.string :taisyosya
      t.string :taisyobutumei
      t.string :kanryo_ymd
      t.string :kakuninsya
      t.string :status_kubun
      t.text :biko

      t.timestamps
    end
  end
end
