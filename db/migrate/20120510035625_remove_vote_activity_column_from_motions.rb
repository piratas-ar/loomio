class RemoveVoteActivityColumnFromMotions < ActiveRecord::Migration[4.2]
  def up
    remove_column :motions, :vote_activity
  end

  def down
    add_column :motions, :vote_activity, :integer, default: 0
  end
end
