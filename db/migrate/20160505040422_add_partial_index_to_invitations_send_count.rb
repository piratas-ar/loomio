class AddPartialIndexToInvitationsSendCount < ActiveRecord::Migration[4.2]
  def change
    change_column :invitations, :send_count, :integer, null: false, default: 0
    add_index :invitations, :accepted_at, where: 'accepted_at IS NULL'
  end
end
