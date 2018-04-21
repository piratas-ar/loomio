class RemoveMeasurements < ActiveRecord::Migration[4.2]
  def change
    drop_table :group_measurements
  end
end
