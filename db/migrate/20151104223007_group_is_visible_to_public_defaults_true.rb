class GroupIsVisibleToPublicDefaultsTrue < ActiveRecord::Migration[4.2]
  def change
    change_column :groups, :is_visible_to_public, :boolean, default: true, null: false
  end
end
