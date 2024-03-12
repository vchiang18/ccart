class FoodItem < ApplicationRecord
  belongs_to :brand
  belongs_to :vendor
end
