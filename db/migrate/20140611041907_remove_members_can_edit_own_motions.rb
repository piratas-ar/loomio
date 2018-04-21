class RemoveMembersCanEditOwnMotions < ActiveRecord::Migration[4.2]
  def up
    remove_column :groups, :members_can_edit_own_motions
  end

  def down
    add_column :groups, :members_can_edit_own_motions, :boolean, default: false, null: false
  end
end
