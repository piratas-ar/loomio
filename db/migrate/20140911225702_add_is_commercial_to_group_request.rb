class AddIsCommercialToGroupRequest < ActiveRecord::Migration[4.2]
  def change
    add_column :group_requests, :is_commercial, :boolean
  end
end
