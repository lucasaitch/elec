class CreateUserUnitOfStudies < ActiveRecord::Migration
  def change
    create_table :user_unit_of_studies do |t|
      t.belongs_to :unit_of_study, :null => false, :index => true
      t.belongs_to :user, :null => false, :index => true
      t.timestamps null: false
    end
  end
end
