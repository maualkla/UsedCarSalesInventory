class CreateCars < ActiveRecord::Migration[6.1]
  def change
    create_table :cars do |t|
      t.string :model
      t.integer :dealership
      t.decimal :price
      t.boolean :is_new

      t.timestamps
    end
  end
end
