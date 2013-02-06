class AddTenpuToFuguai < ActiveRecord::Migration
  def change
    add_column :fuguais, :tenpu, :string
  end
end
