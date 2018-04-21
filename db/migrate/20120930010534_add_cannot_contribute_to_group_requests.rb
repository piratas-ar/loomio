class AddCannotContributeToGroupRequests < ActiveRecord::Migration[4.2]
  def change
    add_column :group_requests, :cannot_contribute, :boolean, default: false
  end
end
