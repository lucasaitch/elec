class Listing < ActiveRecord::Base

  belongs_to :user, foreign_key: 'owner_id'
  has_and_belongs_to_many :categories, :join_table => "categories_listings"

  scope :newest_first, lambda { order("listings.created_at DESC")}
  scope :alphabetical, lambda { order("listings.name ASC")}

  scope :search, lambda {|query|
    where(["name LIKE ?", "%#{query}%"]
    or ["description LIKE ?", "%#{query}%"])
  }


end
