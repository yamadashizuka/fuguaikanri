class CreateTaisyotenpukanris < ActiveRecord::Migration
  def change
    create_table :taisyotenpukanris do |t|
      t.string :fuguai_no
      t.string :toshi_no
      t.string :tenpu

      t.timestamps
    end
  end
end
