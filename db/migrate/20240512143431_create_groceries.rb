class CreateGroceries < ActiveRecord::Migration[7.1]
  def change
    create_table :groceries do |t|
      t.string :grocery_name
      t.integer :quantity
      t.string :category
      t.string :store_name
      t.date :pickup_time

      t.timestamps
    end
  end
end
