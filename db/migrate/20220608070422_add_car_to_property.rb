class AddCarToProperty < ActiveRecord::Migration[7.0]
  def change
    add_column :properties, :car_id, :integer
  end
end
