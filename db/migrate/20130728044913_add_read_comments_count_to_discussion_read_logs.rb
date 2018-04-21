class AddReadCommentsCountToDiscussionReadLogs < ActiveRecord::Migration[4.2]
  def up
    add_column :discussion_read_logs, :read_comments_count, :integer
  end

  def down
  end
end
