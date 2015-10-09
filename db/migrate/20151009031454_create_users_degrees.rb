class CreateUsersDegrees < ActiveRecord::Migration
  def change
    create_table :users_degrees, :id => false do |t|
      t.integer "user_id", :null => false
      t.integer "degree_id", :null => false
      t.date "commencement"
    end
    add_index :users_degrees, ["user_id", "degree_id"]
  end
end

