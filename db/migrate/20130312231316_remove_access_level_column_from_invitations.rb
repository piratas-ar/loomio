class RemoveAccessLevelColumnFromInvitations < ActiveRecord::Migration[4.2]
  def up
    remove_column :invitations, :access_level
  end

  def down
    add_column :invitations, :access_level, :string, default: "member", null: false
  end
end
