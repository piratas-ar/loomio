class AddAdminCountToGroups < ActiveRecord::Migration[4.2]
  def change
    add_column :groups, :admin_memberships_count, :integer, default: 0, null: false
  end
end
