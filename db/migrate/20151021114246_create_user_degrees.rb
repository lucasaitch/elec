class CreateUserDegrees < ActiveRecord::Migration
  def change
    create_table :user_degrees do |t|
      t.belongs_to :degree, :null => false, :index => true
      t.belongs_to :user, :null => false, :index => true
      t.timestamps null: false
    end
  end
end
