class AddFilesizeToAttachmentsTable < ActiveRecord::Migration[4.2]
  def change
    add_column :attachments, :filesize, :integer
  end
end
