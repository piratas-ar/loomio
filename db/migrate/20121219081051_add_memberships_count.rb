class AddMembershipsCount < ActiveRecord::Migration[4.2]
  def up
  	add_column :users, :memberships_count, :integer, :default => 0, :null => false
  end

  def down
  	remove_column :users, :memberships_count
  end
end