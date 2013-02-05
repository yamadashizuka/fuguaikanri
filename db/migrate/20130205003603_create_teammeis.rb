class CreateTeammeis < ActiveRecord::Migration
  def change
    create_table :teammeis do |t|
      t.string :teammei_no
      t.string :teammeisyo

      t.timestamps
    end
  end
end
