class ChangeNotificationsViewedAtToViewed < ActiveRecord::Migration[4.2]
  def change
    add_column :notifications, :viewed, :boolean, default: false, null: false
    add_index :notifications, :viewed
  end
end
