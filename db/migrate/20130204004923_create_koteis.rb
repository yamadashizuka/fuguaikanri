class CreateKoteis < ActiveRecord::Migration
  def change
    create_table :koteis do |t|
      t.string :kotei_kubun
      t.string :kotei_meisyo

      t.timestamps
    end
  end
end
