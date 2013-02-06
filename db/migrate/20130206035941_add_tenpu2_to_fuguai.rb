class AddTenpu2ToFuguai < ActiveRecord::Migration
  def change
    add_column :fuguais, :tenpu2, :string
  end
end
