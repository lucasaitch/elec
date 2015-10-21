class AddAvatarsToListings < ActiveRecord::Migration
  def self.up
    change_table :listings do |t|
      t.attachment :avatar
    end
  end

    def self.down
    drop_attached_file :listings, :avatar
  end

end
