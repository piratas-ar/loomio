class AddPayingSubscriptionToGroupRequests < ActiveRecord::Migration[4.2]
  def change
    add_column :group_requests, :paying_subscription, :boolean
  end
end
