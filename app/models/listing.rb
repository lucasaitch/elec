class Listing < ActiveRecord::Base





def self.search(search)
  where("name LIKE ? OR description LIKE ?", "%#{search}%", "%#{search}%") 
  
end




  belongs_to :user, foreign_key: 'owner_id'
  has_and_belongs_to_many :categories, :join_table => "categories_listings"

  scope :newest_first, lambda { order("listings.created_at DESC")}
  scope :alphabetical, lambda { order("listings.name ASC")}

  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.jpg"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

  #scope :search, lambda {|query|
  #  where(["name LIKE ?", "%#{query}%"]
    #or ["description LIKE ?", "%#{query}%"])
  #}


end
