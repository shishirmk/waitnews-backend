class CreateWaits < ActiveRecord::Migration
  def change
    create_table :waits do |t|
      t.integer :wait_time
      t.references :user
      t.references :place

      t.timestamps
    end
    add_index :waits, :user_id
    add_index :waits, :place_id
  end
end
