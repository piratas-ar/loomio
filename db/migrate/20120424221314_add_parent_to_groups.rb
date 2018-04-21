class AddParentToGroups < ActiveRecord::Migration[4.2]
  def change
    add_column :groups, :parent_id, :integer
  end
end
