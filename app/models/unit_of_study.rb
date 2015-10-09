class UnitOfStudy < ActiveRecord::Base
    has_and_belongs_to_many :users, :join_table => "users_unit_of_studies"

end
