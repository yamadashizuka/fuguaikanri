class CreateJidousaibanIts < ActiveRecord::Migration
  def change
    create_table :jidousaiban_its do |t|
      t.string :fuguaino_it

      t.timestamps
    end
  end
end
