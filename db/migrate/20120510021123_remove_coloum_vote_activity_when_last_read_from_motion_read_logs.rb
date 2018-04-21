class RemoveColoumVoteActivityWhenLastReadFromMotionReadLogs < ActiveRecord::Migration[4.2]
  def up
    remove_column :motion_read_logs, :vote_activity_when_last_read
  end

  def down
    add_column :motion_read_logs, :vote_activity_when_last_read, :integer
  end
end
