class RemoveDisableDiscussionFromMotions < ActiveRecord::Migration[4.2]
  def up
    remove_column :motions, :disable_discussion
  end

  def down
    add_column :motions, :disable_discussion, :boolean
  end
end
