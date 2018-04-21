class AddIndexIndexMembershipsOnGroupIdToMemberships < ActiveRecord::Migration[4.2]
  def change
    add_index "memberships", ["group_id"], :name => "index_memberships_on_group_id"
  end
end
