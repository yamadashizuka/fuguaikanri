class AddColumsToFuguais < ActiveRecord::Migration
  def change
    add_column :fuguais, :teammei, :string
    add_column :fuguais, :taisyokibo_ymd, :string
  end
end
