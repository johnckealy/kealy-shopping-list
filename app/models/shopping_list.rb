class ShoppingList < ApplicationRecord
  belongs_to :user
  belongs_to :shopping_trip
  has_many :shopping_list_items
end
