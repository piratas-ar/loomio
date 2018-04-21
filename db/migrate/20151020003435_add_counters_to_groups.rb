class AddCountersToGroups < ActiveRecord::Migration[4.2]
  def change
    add_column :groups, :motions_count, :integer, default: 0, null: false
  end
end
