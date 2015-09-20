class CreateCategoriesListingsJoin < ActiveRecord::Migration
  def change
    create_table :categories_listings, :id => false do |t|
      t.integer "category_id", :null => false
      t.integer "listing_id", :null => false
    end
    add_index :categories_listings, ["category_id", "listing_id"]
  end
end
