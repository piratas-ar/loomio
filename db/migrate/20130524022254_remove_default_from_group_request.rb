class RemoveDefaultFromGroupRequest < ActiveRecord::Migration[4.2]
  def up
    change_column_default(:group_requests, :cannot_contribute, nil)
  end

  def down
    change_column_default(:group_requests, :cannot_contribute, false)
  end
end
