class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.integer "owner_id", :null => false
      t.text "name", :limit => 100, :null => false
      t.text "description", :limit => 500, :null => false
      t.decimal "price", :null => false
      t.timestamps null: false
    end
    add_foreign_key :listings, :users, column: :owner_id
    add_index :listings, "owner_id"
  end
end
