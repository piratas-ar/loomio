class AddViewedAtToNotification < ActiveRecord::Migration[4.2]
  def change
    add_column :notifications, :viewed_at, :datetime
  end
end
