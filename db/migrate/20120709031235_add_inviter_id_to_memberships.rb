class AddInviterIdToMemberships < ActiveRecord::Migration[4.2]
  def change
    add_column :memberships, :inviter_id, :integer
    add_index :memberships, :inviter_id
  end
end
