class OneMoreNotificationsMirgation < ActiveRecord::Migration[4.2]
  def change
    remove_column :notifications, :viewed_at
  end
end
