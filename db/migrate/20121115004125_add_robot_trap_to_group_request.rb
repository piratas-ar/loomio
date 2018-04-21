class AddRobotTrapToGroupRequest < ActiveRecord::Migration[4.2]
  def change
    add_column :group_requests, :robot_trap, :string
  end
end
