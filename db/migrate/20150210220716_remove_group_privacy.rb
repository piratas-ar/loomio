class RemoveGroupPrivacy < ActiveRecord::Migration[4.2]
  def change
    remove_column :groups, :privacy
  end
end
