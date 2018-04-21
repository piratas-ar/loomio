class AddAttachmentUploadedAvatarToUsers < ActiveRecord::Migration[4.2]
  def self.up
    change_table :users do |t|
      t.has_attached_file :uploaded_avatar
    end
  end

  def self.down
    drop_attached_file :users, :uploaded_avatar
  end
end
