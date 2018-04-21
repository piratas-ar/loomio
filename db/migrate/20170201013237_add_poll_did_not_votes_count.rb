class AddPollDidNotVotesCount < ActiveRecord::Migration[4.2]
  def change
    add_column :polls, :did_not_votes_count, :integer, null: false, default: 0
  end
end
