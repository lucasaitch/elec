class CreateUsersUnitOfStudies < ActiveRecord::Migration
  def change
    create_table :users_unit_of_studies :id => false do |t|
      t.integer "user_id", :null => false
      t.integer "unit_of_study_id", :null => false
    end
    add_index :users_unit_of_studies, ["user_id", "unit_of_study_id",]
  end
end

