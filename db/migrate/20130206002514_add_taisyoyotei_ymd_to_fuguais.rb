class AddTaisyoyoteiYmdToFuguais < ActiveRecord::Migration
  def change
    add_column :fuguais, :taisyoyotei_ymd, :date
  end
end
