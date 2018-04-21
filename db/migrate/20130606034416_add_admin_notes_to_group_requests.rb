class AddAdminNotesToGroupRequests < ActiveRecord::Migration[4.2]
  def up
    add_column :group_requests, :admin_notes, :text
  end

  def down
    remove_column :group_requests, :admin_notes
  end
end
