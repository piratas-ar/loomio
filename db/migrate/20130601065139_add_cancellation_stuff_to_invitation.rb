class AddCancellationStuffToInvitation < ActiveRecord::Migration[4.2]
  def change
    add_column :invitations, :canceller_id, :integer
    add_column :invitations, :cancelled_at, :datetime
  end
end
