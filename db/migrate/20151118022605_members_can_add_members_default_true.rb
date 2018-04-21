class MembersCanAddMembersDefaultTrue < ActiveRecord::Migration[4.2]
  def change
    remove_column :groups, :members_invitable_by
    change_column :groups, :members_can_add_members, :boolean, default: true, null: false
  end
end
