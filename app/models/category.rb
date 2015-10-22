class Category < ActiveRecord::Base

  has_and_belongs_to_many :listings, :join_table => "categories_listings"
  belongs_to :parent, :class_name => "Category", :foreign_key => "parent_category_id"
  has_many :subcategories, :class_name => "Category", :foreign_key => "parent_category_id"

end
