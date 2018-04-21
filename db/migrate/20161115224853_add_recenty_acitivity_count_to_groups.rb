class AddRecentyAcitivityCountToGroups < ActiveRecord::Migration[4.2]
  def change
    add_column :groups, :recent_activity_count, :integer, default: 0, null: false
    add_index  :groups, :recent_activity_count
  end
end
