class AddIndexNotificationsViewed < ActiveRecord::Migration[4.2]
  def change
    Notification.where('viewed_at IS NOT NULL').update_all(viewed: true)
  end
end
