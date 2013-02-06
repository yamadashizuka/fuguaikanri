class RemoveColumnsToFuguais < ActiveRecord::Migration
  def up
    remove_column :fuguais, :hako_ymd
    remove_column :fuguais, :kaito_ymd
    remove_column :fuguais, :taisyo_ymd
    remove_column :fuguais, :kanryo_ymd
    remove_column :fuguais, :taisyokibo_ymd
  end

  def down
    add_column :fuguais, :taisyokibo_ymd, :date
    add_column :fuguais, :kanryo_ymd, :date
    add_column :fuguais, :taisyo_ymd, :date
    add_column :fuguais, :kaito_ymd, :date
    add_column :fuguais, :hako_ymd, :date
  end
end
