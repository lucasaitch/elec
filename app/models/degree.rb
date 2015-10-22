class Degree < ActiveRecord::Base
  has_many :user_degrees
  has_many :users, :through => :user_degrees
end
