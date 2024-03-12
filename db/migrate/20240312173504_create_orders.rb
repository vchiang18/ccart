class CreateOrders < ActiveRecord::Migration[7.1]
  def change
    create_table :orders do |t|
      t.string :rails
      t.string :generate
      t.string :scaffold
      t.string :Order
      t.references :item, food_items: true, null: false, foreign_key: true
      t.references :brand, brands: true, null: false, foreign_key: true
      t.integer :unit_quantity
      t.string :unit_type
      t.references :vendor, vendors: true, null: false, foreign_key: true
      t.references :requestor, users: true, null: false, foreign_key: true
      t.string :status
      t.integer :quantity
      t.integer :purchased_price
      t.integer :purchased_quantity
      t.text :notes
      t.references :last_edited_by, users: true, null: false, foreign_key: true
      t.timestamp :last_edited

      t.timestamps
    end
  end
end
