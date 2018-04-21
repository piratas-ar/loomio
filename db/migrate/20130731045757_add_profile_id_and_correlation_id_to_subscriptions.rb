class AddProfileIdAndCorrelationIdToSubscriptions < ActiveRecord::Migration[4.2]
  def change
    add_column :subscriptions, :profile_id, :string
  end
end
