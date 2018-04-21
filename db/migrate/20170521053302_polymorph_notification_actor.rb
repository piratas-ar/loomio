class PolymorphNotificationActor < ActiveRecord::Migration[4.2]
  def change
    add_column :notifications, :actor_type, :string, null: true
    Notification.where('actor_id IS NOT NULL').update_all(actor_type: "User")
  end
end
