class FixWrongAvatarName < ActiveRecord::Migration

  def self.up
    rename_column :listings, :picture_file_name, :avatar_file_name
    rename_column :listings, :picture_content_type, :avatar_content_type
    rename_column :listings, :picture_file_size, :avatar_file_size
    rename_column :listings, :picture_updated_at, :avatar_updated_at

  end

  def self.down
    rename_column :listings, :avatar_file_name, :picture_file_name
    rename_column :listings, :avatar_content_type, :picture_content_type
    rename_column :listings,  :avatar_file_size, :picture_file_size
    rename_column :listings,  :avatar_updated_at, :picture_updated_at

  end

end
