class AddSendCountToInvitations < ActiveRecord::Migration[4.2]
  def change
    add_column :invitations, :send_count, :integer, null: true, default: 0
  end
end
