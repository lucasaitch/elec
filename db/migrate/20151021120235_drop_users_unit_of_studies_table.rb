class DropUsersUnitOfStudiesTable < ActiveRecord::Migration
  def up
    drop_table :users_unit_of_studies
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
