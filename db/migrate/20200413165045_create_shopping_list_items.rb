class CreateShoppingListItems < ActiveRecord::Migration[6.0]
  def change
    create_table :shopping_list_items do |t|
      t.references :item, null: false, foreign_key: true
      t.references :shopping_list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
