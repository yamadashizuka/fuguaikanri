class CreateKeylocks < ActiveRecord::Migration
  def change
    create_table :keylocks do |t|
      t.string :keylock_id
      t.string :fuguai_no

      t.timestamps
    end
  end
end
