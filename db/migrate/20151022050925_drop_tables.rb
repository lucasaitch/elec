class DropTables < ActiveRecord::Migration
  def up
    drop_table :degrees
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
