class AddDefaultMembershipVolumeToUsers < ActiveRecord::Migration[4.2]
  def change
    add_column :users, :default_membership_volume, :integer, null: false, default: 3
  end
end
