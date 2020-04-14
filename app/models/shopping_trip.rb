class ShoppingTrip < ApplicationRecord
  # belongs_to :shopping_list
  has_many :shopping_lists
end
