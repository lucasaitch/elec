class UserUnitOfStudy < ActiveRecord::Base
  #validations
  validates_presence_of :unit_of_study, :user

  #relations
  belongs_to :user
  belongs_to :unit_of_study

  accepts_nested_attributes_for :unit_of_study, :reject_if => :all_blank
end
