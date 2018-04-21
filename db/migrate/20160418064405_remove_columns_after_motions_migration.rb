class RemoveColumnsAfterMotionsMigration < ActiveRecord::Migration[4.2]
  def change
    remove_column :motions, :did_not_votes_count
    remove_column :motions, :members_not_voted_count
  end
end
