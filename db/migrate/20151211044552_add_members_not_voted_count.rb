class AddMembersNotVotedCount < ActiveRecord::Migration[4.2]
  def change
    add_column :motions, :members_not_voted_count, :integer, null: false, default: 0
  end
end
