class CreateGenins < ActiveRecord::Migration
  def change
    create_table :genins do |t|
      t.string :genin_kubun
      t.string :genin_meisyo

      t.timestamps
    end
  end
end
