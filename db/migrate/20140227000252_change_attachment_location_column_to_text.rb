class ChangeAttachmentLocationColumnToText < ActiveRecord::Migration[4.2]
  def up
   change_column :attachments, :location, :text
  end

  def down
   change_column :attachments, :location, :string
  end
end
