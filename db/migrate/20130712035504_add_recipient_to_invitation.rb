class AddRecipientToInvitation < ActiveRecord::Migration[4.2]
  def change
    add_column :invitations, :recipient_name, :string
  end
end
