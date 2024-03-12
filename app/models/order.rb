class Order < ApplicationRecord
  belongs_to :item
  belongs_to :brand
  belongs_to :vendor
  belongs_to :requestor
  belongs_to :last_edited_by
end
