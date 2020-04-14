class AddNametoShoppingListItem < ActiveRecord::Migration[6.0]
  def change
    add_column :shopping_list_items, :name, :string
    add_column :shopping_list_items, :quantity, :string
  end
end
