class DropUserDegrees < ActiveRecord::Migration

  def up
    drop_table :user_degrees
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
