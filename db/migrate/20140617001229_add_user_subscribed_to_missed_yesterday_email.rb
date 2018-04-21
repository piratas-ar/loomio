class AddUserSubscribedToMissedYesterdayEmail < ActiveRecord::Migration[4.2]
  def change
    add_column :users, :subscribed_to_missed_yesterday_email, :boolean, default: false, null: false
  end
end
