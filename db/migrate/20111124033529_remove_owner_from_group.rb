class RemoveOwnerFromGroup < ActiveRecord::Migration[4.2]
  def up
    remove_column :groups, :owner_id
  end

  def down
    add_column :groups, :owner_id, :integer
  end
end
