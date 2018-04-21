class AddSlackCommunityToUser < ActiveRecord::Migration[4.2]
  def change
    add_column :users, :slack_community_id, :integer, null: true
  end
end
