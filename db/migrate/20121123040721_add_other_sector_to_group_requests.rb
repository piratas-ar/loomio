class AddOtherSectorToGroupRequests < ActiveRecord::Migration[4.2]
  def change
    add_column :group_requests, :other_sector, :string
  end
end
