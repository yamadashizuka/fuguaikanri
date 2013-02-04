class CreateTaisyos < ActiveRecord::Migration
  def change
    create_table :taisyos do |t|
      t.string :taisyo_kubun
      t.string :taisyo_meisyo

      t.timestamps
    end
  end
end
