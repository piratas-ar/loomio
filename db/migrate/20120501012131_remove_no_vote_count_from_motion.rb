class RemoveNoVoteCountFromMotion < ActiveRecord::Migration[4.2]
  def up
    remove_column :motions, :no_vote_count
  end

  def down
    add_column :motions, :no_vote_count, :integer
  end
end
