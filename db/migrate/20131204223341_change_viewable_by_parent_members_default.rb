class ChangeViewableByParentMembersDefault < ActiveRecord::Migration[4.2]
  def up
    change_column :groups, :viewable_by_parent_members, :boolean, default: false, null: false
  end

  def down
    change_column :groups, :viewable_by_parent_members, :boolean, default: true, null: false
  end
end
