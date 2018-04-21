class AddFbCommunityIdToUser < ActiveRecord::Migration[4.2]
  def change
    add_column :users, :facebook_community_id, :integer, null: true
  end
end
