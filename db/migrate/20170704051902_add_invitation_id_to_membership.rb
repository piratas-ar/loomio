class AddInvitationIdToMembership < ActiveRecord::Migration[4.2]
  def change
    add_column :memberships, :invitation_id, :integer, null: true, index: true
  end
end
