class CreateShoppingTrips < ActiveRecord::Migration[6.0]
  def change
    create_table :shopping_trips do |t|
      t.datetime :date

      t.timestamps
    end
  end
end
