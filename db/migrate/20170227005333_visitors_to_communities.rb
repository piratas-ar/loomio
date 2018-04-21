class VisitorsToCommunities < ActiveRecord::Migration[4.2]
  def change
    rename_column :visitors, :poll_id, :community_id
  end
end
