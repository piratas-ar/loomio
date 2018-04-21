class AddSectorsToGroupRequest < ActiveRecord::Migration[4.2]
  def change
    add_column :group_requests, :sectors, :string
  end
end
