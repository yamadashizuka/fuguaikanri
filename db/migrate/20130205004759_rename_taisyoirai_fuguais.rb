class RenameTaisyoiraiFuguais < ActiveRecord::Migration
  def up
  rename_column :fuguais, :taisyoirai_ymd, :taisyoirai
  end

  def down
  rename_column :fuguais, :taisyoirai_ymd, :taisyoirai
  end
end
