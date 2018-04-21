class AddIndexToInvitations < ActiveRecord::Migration[4.2]
  def change
    add_index :invitations, [:invitable_type, :invitable_id]
  end
end
