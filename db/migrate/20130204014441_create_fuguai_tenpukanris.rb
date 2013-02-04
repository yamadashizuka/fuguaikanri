class CreateFuguaiTenpukanris < ActiveRecord::Migration
  def change
    create_table :fuguai_tenpukanris do |t|
      t.string :fuguai_no
      t.string :toshi_no
      t.string :tenpu

      t.timestamps
    end
  end
end
