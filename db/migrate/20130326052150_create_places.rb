class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :name
      t.references :address

      t.timestamps
    end
    add_index :places, :address_id
  end
end
