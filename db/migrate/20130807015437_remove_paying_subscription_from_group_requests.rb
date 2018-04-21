class RemovePayingSubscriptionFromGroupRequests < ActiveRecord::Migration[4.2]
  def up
    remove_column :group_requests, :paying_subscription
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
