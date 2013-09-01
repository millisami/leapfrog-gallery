# This migration comes from store (originally 20130901065950)
class CreateStoreProducts < ActiveRecord::Migration
  def change
    create_table :store_products do |t|
      t.string :name
      t.float :price

      t.timestamps
    end
  end
end
