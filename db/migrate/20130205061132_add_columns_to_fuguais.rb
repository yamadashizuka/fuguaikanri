class AddColumnsToFuguais < ActiveRecord::Migration
  def change
    add_column :fuguais, :hako_ymd, :date
    add_column :fuguais, :kaito_ymd, :date
    add_column :fuguais, :taisyo_ymd, :date
    add_column :fuguais, :kanryo_ymd, :date
    add_column :fuguais, :taisyokibo_ymd, :date
  end
end
