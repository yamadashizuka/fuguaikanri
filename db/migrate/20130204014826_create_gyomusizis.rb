class CreateGyomusizis < ActiveRecord::Migration
  def change
    create_table :gyomusizis do |t|
      t.string :gyomusizi_kubun
      t.string :gyomusizi_meisyo

      t.timestamps
    end
  end
end
