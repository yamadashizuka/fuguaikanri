class CreateTenpus < ActiveRecord::Migration
  def change
    create_table :tenpus do |t|
      t.string :tenpu_kubun
      t.string :tenpu_meisyo

      t.timestamps
    end
  end
end
