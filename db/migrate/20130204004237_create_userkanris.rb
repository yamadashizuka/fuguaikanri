class CreateUserkanris < ActiveRecord::Migration
  def change
    create_table :userkanris do |t|
      t.string :user_id
      t.string :syozoku
      t.string :shimei

      t.timestamps
    end
  end
end
