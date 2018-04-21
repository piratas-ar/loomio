class RemoveExpireyFromInvitations < ActiveRecord::Migration[4.2]
  def up
    remove_column :invitations, :expirey
  end

  def down
    add_column :invitations, :expirey, :datetime
  end
end
