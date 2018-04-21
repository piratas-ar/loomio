class AddMorePermissionsToGroups < ActiveRecord::Migration[4.2]
  def change
    add_column :groups, :members_can_raise_motions,     :boolean, default: true, null: false
    add_column :groups, :members_can_vote,              :boolean, default: true, null: false
    add_column :groups, :members_can_start_discussions, :boolean, default: true, null:false
    add_column :groups, :members_can_create_subgroups,  :boolean, default: true, null: false
  end
end
