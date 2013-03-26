class CreateAveragewaits < ActiveRecord::Migration
  def change
    create_table :averagewaits do |t|
      t.integer :average_time
      t.integer :day
      t.string :dow
      t.integer :hour
      t.integer :minute
      t.integer :month
      t.references :place
      t.integer :year

      t.timestamps
    end
    add_index :averagewaits, :place_id
  end
end
