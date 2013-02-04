class CreateBugreports < ActiveRecord::Migration
  def change
    create_table :bugreports do |t|
      t.string :bhyo_no
      t.string :hakosha
      t.string :hako_ymd
      t.string :kenmei
      t.string :systemmei
      t.string :kotei_kubun
      t.string :kinomei
      t.string :saigensei
      t.string :taisyoirai
      t.string :judaido
      t.string :taisyokibo_ymd
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
      t.string :kaisekikekka
      t.string :kaito_ymd
      t.string :kaitosha
      t.string :taisyosyoti
      t.string :taisyoyotei_ymd
      t.string :taisyo_ymd
      t.string :taisyosha
      t.string :taisyobutumei
      t.string :kanryo_ymd
      t.string :kakuninsha
      t.string :status_kubun
      t.text :biko

      t.timestamps
    end
  end
end
