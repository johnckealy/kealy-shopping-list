class AddDoneColumnToShoppingListItems < ActiveRecord::Migration[6.0]
  def change
    add_column :shopping_list_items, :done, :boolean
  end
end
