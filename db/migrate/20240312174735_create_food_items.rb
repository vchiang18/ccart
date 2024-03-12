class CreateFoodItems < ActiveRecord::Migration[7.1]
  def change
    create_table :food_items do |t|
      t.string :item_name
      t.references :brand, brands: true, null: false, foreign_key: true
      t.references :vendor, vendors: true, null: false, foreign_key: true
      t.string :unit_type
      t.integer :unit_quantity
      t.decimal :price

      t.timestamps
    end
  end
end
