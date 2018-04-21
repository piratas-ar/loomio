class AddEmailNotificationDefaultToGroups < ActiveRecord::Migration[4.2]
  def change
    add_column :groups, :email_notification_default, :boolean, default: true, null: false
  end
end
