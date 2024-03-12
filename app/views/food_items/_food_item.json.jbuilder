json.extract! food_item, :id, :item_name, :brand_id, :vendor_id, :unit_type, :unit_quantity, :price, :created_at, :updated_at
json.url food_item_url(food_item, format: :json)
