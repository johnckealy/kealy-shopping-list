class RemoveShoppingListItemId < ActiveRecord::Migration[6.0]
  def change
    remove_column :shopping_list_items, :item_id, :integer
  end
end
