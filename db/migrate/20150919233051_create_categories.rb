class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string "name", :limit => 50, :null => false
      t.integer "parent_category_id", :null => true
      t.timestamps null: false
    end

  end
end
