class CreateUnitOfStudies < ActiveRecord::Migration
  def change
    create_table :unit_of_studies do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
