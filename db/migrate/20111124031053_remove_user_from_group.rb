class RemoveUserFromGroup < ActiveRecord::Migration[4.2]
  def up
    remove_column :groups, :user_id
  end

  def down
    add_column :groups, :user_id, :integer
  end
end
