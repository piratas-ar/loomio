class AddAttachableToAttachments < ActiveRecord::Migration[4.2]
  def change
    add_column :attachments, :attachable_id, :integer
    add_column :attachments, :attachable_type, :string
  end
end
