class DropUsersDegreesTable < ActiveRecord::Migration
  def up
      drop_table :users_degrees
    end

    def down
      raise ActiveRecord::IrreversibleMigration
    end
  end
