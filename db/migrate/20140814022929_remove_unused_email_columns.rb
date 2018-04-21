class RemoveUnusedEmailColumns < ActiveRecord::Migration[4.2]
  def change
    remove_column :groups, :email_new_motion
    remove_column :groups, :email_notification_default
  end
end
