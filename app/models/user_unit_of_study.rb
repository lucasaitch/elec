class UserUnitOfStudy < ActiveRecord::Base
  #validations
  validates_presence_of :team, :user

  #relations
  belongs_to :user
  belongs_to :unit_of_study
end
