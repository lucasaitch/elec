class UserDegree < ActiveRecord::Base
  #validations
  validates_presence_of :degree, :user

  #relations

  belongs_to :user
  belongs_to :degree
end
