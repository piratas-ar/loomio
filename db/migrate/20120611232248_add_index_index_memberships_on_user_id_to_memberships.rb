class AddIndexIndexMembershipsOnUserIdToMemberships < ActiveRecord::Migration[4.2]
  def change
    add_index "memberships", ["user_id"], :name => "index_memberships_on_user_id"
  end
end
