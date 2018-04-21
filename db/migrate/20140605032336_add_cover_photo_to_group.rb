class AddCoverPhotoToGroup < ActiveRecord::Migration[4.2]
  def self.up
    add_attachment :groups, :cover_photo
  end
  def self.down
    remove_attachment :groups, :cover_photo
  end
end
