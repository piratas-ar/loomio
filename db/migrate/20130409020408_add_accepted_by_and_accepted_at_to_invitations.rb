class AddAcceptedByAndAcceptedAtToInvitations < ActiveRecord::Migration[4.2]
  def change
    add_column :invitations, :accepted_by_id, :integer
    add_column :invitations, :accepted_at, :datetime
  end
end
