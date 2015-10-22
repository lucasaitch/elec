class UserDegree < ActiveRecord::Base
  #validations
  validates_presence_of :degree, :user

  #relations

  belongs_to :user
  belongs_to :degree
  accepts_nested_attributes_for :degree
end
