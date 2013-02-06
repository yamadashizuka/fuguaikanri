class RemoveColumnsToFuguais < ActiveRecord::Migration
  def up
    remove_column :fuguais, :taisyoyotei_ymd
  end

  def down
    add_column :fuguais, :taisyoyotei_ymd, :string
  end
end
