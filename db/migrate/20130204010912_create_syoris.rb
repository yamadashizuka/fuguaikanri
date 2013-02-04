class CreateSyoris < ActiveRecord::Migration
  def change
    create_table :syoris do |t|
      t.string :syori_kubun
      t.string :syori_meisyo

      t.timestamps
    end
  end
end
