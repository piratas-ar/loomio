class AddMoarOptions < ActiveRecord::Migration
  def change
    add_column :motions, :commited_votes_count, :integer, default: 0, null: false
    add_column :motions, :confused_votes_count, :integer, default: 0, null: false
  end
end
