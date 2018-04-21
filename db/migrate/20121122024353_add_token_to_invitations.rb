class AddTokenToInvitations < ActiveRecord::Migration[4.2]
  def up
    unless column_exists? :invitations, :token
      add_column :invitations, :token, :string
    end
  end

  def down
    remove_column :invitations, :token
  end
end
