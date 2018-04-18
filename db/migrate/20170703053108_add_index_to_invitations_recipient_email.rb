class AddIndexToInvitationsRecipientEmail < ActiveRecord::Migration[4.2]
  def change
    Invitation.where('LENGTH(recipient_email) > 255').delete_all
    change_column :invitations, :recipient_email, :string, limit: 255
    add_index :invitations, :recipient_email
  end
end
