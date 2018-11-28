class Cart < ApplicationRecord
  has_many :cartitems, dependent: :destroy
  has_many :items, through: :cartitems
  belongs_to :user
end
