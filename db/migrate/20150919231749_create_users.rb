class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string "first_name", :limit => 30, :null => false
      t.string "middle_name", :limit => 30, :null => true
      t.string "last_name", :limit => 30, :null => false
      t.string "email", :limit => 50, :null => false
      t.string "password_digest", :null => false
      t.date "birth_date", :null => false
      t.timestamps null: false
    end
  end
end
