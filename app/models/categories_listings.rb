class CategoriesListings < ActiveRecord::Base
  #validations
  validates_presence_of :category, :listing

  #relations
  belongs_to :category
  belongs_to :listing

#   accepts_nested_attributes_for :unit_of_study, :reject_if => :all_blank
end 
