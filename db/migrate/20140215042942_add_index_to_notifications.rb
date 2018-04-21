class AddIndexToNotifications < ActiveRecord::Migration[4.2]
  def change
    add_index :notifications, :viewed_at
  end
end
