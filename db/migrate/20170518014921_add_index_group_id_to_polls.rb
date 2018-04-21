class AddIndexGroupIdToPolls < ActiveRecord::Migration[4.2]
  def change
    add_index :polls, :group_id
  end
end
