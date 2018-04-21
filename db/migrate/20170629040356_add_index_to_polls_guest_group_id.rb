class AddIndexToPollsGuestGroupId < ActiveRecord::Migration[4.2]
  def change
    add_index :polls, :guest_group_id, unique: true
  end
end
