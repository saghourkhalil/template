class Item < ApplicationRecord
  has_many :cartitems, dependent: :nullify
  has_many :carts, through: :cartitems

  validates :title, :description, :image_url, presence: :true
  validates :price, numericality: { greater_than_or_equal_to: 1 }
  validates :image_url,
            format: { 
                with: /\.(jpg|png|jpeg|gif)\z/i,
                message: "doit etre au format jpg, png, jpeg ou gif" 
            },
            allow_blank: true
end
