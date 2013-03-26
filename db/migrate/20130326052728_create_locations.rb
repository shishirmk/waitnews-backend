class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.float :lat
      t.float :long
      t.references :address

      t.timestamps
    end
    add_index :locations, :address_id
  end
end
