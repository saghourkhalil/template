class Item < ApplicationRecord
  has_many :cartitems
  has_many :carts, through: :cartitems
end
