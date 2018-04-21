class AddIndexOnNotifications < ActiveRecord::Migration[4.2]
  def change
    add_index :notifications, [:event_id, :user_id]
  end
end
