class DropNetworkCoordinators < ActiveRecord::Migration[4.2]
  def change
    drop_table :network_coordinators
  end
end
