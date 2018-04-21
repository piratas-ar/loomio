class RemoveActivityFromDiscussions < ActiveRecord::Migration[4.2]
  def up
    remove_column :discussions, :activity
  end

  def down
    add_column :discussions, :activity, :integer
  end
end
