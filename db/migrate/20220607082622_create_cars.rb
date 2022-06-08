class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.string :name
      t.integer :wheel
      t.integer :seat
      t.string :fuel
      t.string :speed
      t.string :color

      t.timestamps
    end
  end
end
