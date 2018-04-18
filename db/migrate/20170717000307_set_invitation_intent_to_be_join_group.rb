class SetInvitationIntentToBeJoinGroup < ActiveRecord::Migration[4.2]
  def change
    change_column :invitations, :intent, :string, null: false, default: 'join_group'
  end
end
