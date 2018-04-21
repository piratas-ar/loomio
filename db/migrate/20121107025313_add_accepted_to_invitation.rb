class AddAcceptedToInvitation < ActiveRecord::Migration[4.2]
  def change
    add_column :invitations, :accepted, :boolean, default: false
  end
end
