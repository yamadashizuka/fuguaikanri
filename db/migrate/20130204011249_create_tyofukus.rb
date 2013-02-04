class CreateTyofukus < ActiveRecord::Migration
  def change
    create_table :tyofukus do |t|
      t.string :tyofuku_kubun
      t.string :tyofuku_meisyo

      t.timestamps
    end
  end
end
