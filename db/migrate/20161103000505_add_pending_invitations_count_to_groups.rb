class AddPendingInvitationsCountToGroups < ActiveRecord::Migration[4.2]
  def change
    add_column :groups, :pending_invitations_count, :integer, default: 0, null: false
  end
end
