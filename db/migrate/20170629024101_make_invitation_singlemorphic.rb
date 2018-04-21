class MakeInvitationSinglemorphic < ActiveRecord::Migration[4.2]
  def change
    Invitation.where(invitable_type: 'Discussion').delete_all
    rename_column :invitations, :invitable_id, :group_id
    remove_column :invitations, :invitable_type
  end
end
