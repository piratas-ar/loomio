class AddCommentVoteToEvents < ActiveRecord::Migration[4.2]
  def change
    add_column :events, :comment_vote_id, :integer
    add_index :events, :comment_vote_id
  end
end
